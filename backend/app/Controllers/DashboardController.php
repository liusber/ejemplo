<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\ContactModel;
use App\Models\OportunityModel;
use App\Models\ActivityModel;
use App\Models\UserModel;

class DashboardController extends ResourceController
{
    use ResponseTrait;

    protected $format = 'json';

    /**
     * Obtener estadísticas del dashboard
     */
    public function stats()
    {
        $idBrandAgency = $this->request->getGet('id_brand_agency');
        $idUserAdviser = $this->request->getGet('id_user_adviser');

        $contactModel = new ContactModel();
        $oportunityModel = new OportunityModel();
        $activityModel = new ActivityModel();

        // Filtros base
        $contactFilters = [];
        $oportunityFilters = [];
        $activityFilters = [];

        if ($idBrandAgency) {
            $contactFilters['id_brand_agency'] = $idBrandAgency;
            $oportunityFilters['id_brand_agency'] = $idBrandAgency;
        }

        if ($idUserAdviser) {
            $contactFilters['id_user_adviser'] = $idUserAdviser;
            $activityFilters['id_user_adviser'] = $idUserAdviser;
        }

        // Total de contactos
        $totalContacts = count($contactModel->getContactsWithDetails($contactFilters));

        // Nuevos leads (últimos 7 días)
        $db = \Config\Database::connect();
        $newLeadsQuery = $db->table('contacts')
            ->where('status', 1)
            ->where('createdAt >=', date('Y-m-d', strtotime('-7 days')));
        
        if ($idBrandAgency) {
            $newLeadsQuery->where('id_brand_agency', $idBrandAgency);
        }
        if ($idUserAdviser) {
            $newLeadsQuery->where('id_user_adviser', $idUserAdviser);
        }
        
        $newLeads = $newLeadsQuery->countAllResults();

        // Total de oportunidades
        $totalOportunities = count($oportunityModel->getOportunitiesWithDetails($oportunityFilters));

        // Actividades pendientes (hoy y futuras)
        $activityFilters['date_from'] = date('Y-m-d');
        $pendingActivities = count($activityModel->getActivitiesWithDetails($activityFilters));

        // Oportunidades por estado
        $oportunityStatusQuery = $db->table('oportunities')
            ->select('status_oportunities.name, COUNT(*) as count')
            ->join('status_oportunities', 'status_oportunities.id = oportunities.id_status_oportunity', 'left')
            ->where('oportunities.status', 1)
            ->groupBy('oportunities.id_status_oportunity');
        
        if ($idBrandAgency) {
            $oportunityStatusQuery->where('oportunities.id_brand_agency', $idBrandAgency);
        }
        
        $oportunityByStatus = $oportunityStatusQuery->get()->getResultArray();

        // Contactos por fuente
        $contactSourceQuery = $db->table('contacts')
            ->select('sources.name, COUNT(*) as count')
            ->join('sources', 'sources.id = contacts.id_source', 'left')
            ->where('contacts.status', 1)
            ->groupBy('contacts.id_source');
        
        if ($idBrandAgency) {
            $contactSourceQuery->where('contacts.id_brand_agency', $idBrandAgency);
        }
        
        $contactsBySource = $contactSourceQuery->get()->getResultArray();

        return $this->respond([
            'success' => true,
            'data' => [
                'total_contacts' => $totalContacts,
                'new_leads' => $newLeads,
                'total_oportunities' => $totalOportunities,
                'pending_activities' => $pendingActivities,
                'oportunity_by_status' => $oportunityByStatus,
                'contacts_by_source' => $contactsBySource
            ]
        ]);
    }

    /**
     * Obtener leads recientes
     */
    public function recentLeads()
    {
        $idBrandAgency = $this->request->getGet('id_brand_agency');
        $idUserAdviser = $this->request->getGet('id_user_adviser');
        $limit = $this->request->getGet('limit') ?? 10;

        $contactModel = new ContactModel();
        
        $filters = [];
        if ($idBrandAgency) {
            $filters['id_brand_agency'] = $idBrandAgency;
        }
        if ($idUserAdviser) {
            $filters['id_user_adviser'] = $idUserAdviser;
        }

        $contacts = $contactModel->getContactsWithDetails($filters);
        
        // Ordenar por createdAt descendente y limitar
        usort($contacts, function($a, $b) {
            return strtotime($b['createdAt']) - strtotime($a['createdAt']);
        });
        
        $recentContacts = array_slice($contacts, 0, $limit);

        return $this->respond([
            'success' => true,
            'data' => $recentContacts
        ]);
    }

    /**
     * Obtener pipeline de ventas
     */
    public function salesPipeline()
    {
        $idBrandAgency = $this->request->getGet('id_brand_agency');

        $db = \Config\Database::connect();
        
        $query = $db->table('oportunities')
            ->select('status_purchase.name, COUNT(*) as count, status_purchase.id')
            ->join('status_purchase', 'status_purchase.id = oportunities.id_status_purchase', 'left')
            ->where('oportunities.status', 1)
            ->groupBy('oportunities.id_status_purchase')
            ->orderBy('status_purchase.id', 'ASC');
        
        if ($idBrandAgency) {
            $query->where('oportunities.id_brand_agency', $idBrandAgency);
        }
        
        $pipeline = $query->get()->getResultArray();

        return $this->respond([
            'success' => true,
            'data' => $pipeline
        ]);
    }

    /**
     * Obtener actividades de hoy
     */
    public function todayActivities()
    {
        $idUserAdviser = $this->request->getGet('id_user_adviser');

        $activityModel = new ActivityModel();
        
        $filters = [
            'date_from' => date('Y-m-d'),
            'date_to' => date('Y-m-d')
        ];

        if ($idUserAdviser) {
            $filters['id_user_adviser'] = $idUserAdviser;
        }

        $activities = $activityModel->getActivitiesWithDetails($filters);

        return $this->respond([
            'success' => true,
            'data' => $activities,
            'total' => count($activities)
        ]);
    }
}
