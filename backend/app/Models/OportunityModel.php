<?php

namespace App\Models;

use CodeIgniter\Model;

class OportunityModel extends Model
{
    protected $table = 'oportunities';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'year', 'folio', 'date_change_purchase', 'credit_request', 'other_models',
        'id_model', 'id_version', 'id_color', 'id_type_vehicle', 'id_type_purchase',
        'id_status_oportunity', 'id_purchase_description', 'id_purchase_buyback',
        'id_contact', 'id_status_purchase', 'id_brand_agency', 'id_last_template',
        'is_block', 'id_source', 'id_type_use', 'status'
    ];
    protected $useTimestamps = true;
    protected $createdField = 'createdAt';
    protected $updatedField = 'updatedAt';
    protected $deletedField = 'deletedAt';
    protected $useSoftDeletes = true;
    protected $returnType = 'array';

    public function getOportunitiesWithDetails($filters = [])
    {
        $builder = $this->select(
            'oportunities.*,
            contacts.name as contact_name,
            contacts.lastname as contact_lastname,
            contacts.email as contact_email,
            contacts.cellphone as contact_phone,
            models.name as model_name,
            status_oportunities.name as status_name,
            status_purchase.name as purchase_status_name'
        )
            ->join('contacts', 'contacts.id = oportunities.id_contact', 'left')
            ->join('models', 'models.id = oportunities.id_model', 'left')
            ->join('status_oportunities', 'status_oportunities.id = oportunities.id_status_oportunity', 'left')
            ->join('status_purchase', 'status_purchase.id = oportunities.id_status_purchase', 'left')
            ->where('oportunities.status', 1);

        if (!empty($filters['id_brand_agency'])) {
            $builder->where('oportunities.id_brand_agency', $filters['id_brand_agency']);
        }

        if (!empty($filters['id_status_oportunity'])) {
            $builder->where('oportunities.id_status_oportunity', $filters['id_status_oportunity']);
        }

        if (!empty($filters['id_status_purchase'])) {
            $builder->where('oportunities.id_status_purchase', $filters['id_status_purchase']);
        }

        $builder->orderBy('oportunities.createdAt', 'DESC');

        return $builder->findAll();
    }
}
