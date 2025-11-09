<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\OportunityModel;

class OportunitiesController extends ResourceController
{
    use ResponseTrait;

    protected $modelName = 'App\Models\OportunityModel';
    protected $format = 'json';

    /**
     * Obtener todas las oportunidades
     */
    public function index()
    {
        $oportunityModel = new OportunityModel();
        
        $filters = [
            'id_brand_agency' => $this->request->getGet('id_brand_agency'),
            'id_status_oportunity' => $this->request->getGet('id_status_oportunity'),
            'id_status_purchase' => $this->request->getGet('id_status_purchase')
        ];

        $oportunities = $oportunityModel->getOportunitiesWithDetails($filters);

        return $this->respond([
            'success' => true,
            'data' => $oportunities,
            'total' => count($oportunities)
        ]);
    }

    /**
     * Obtener una oportunidad por ID
     */
    public function show($id = null)
    {
        $oportunityModel = new OportunityModel();
        $oportunity = $oportunityModel->select(
            'oportunities.*,
            contacts.name as contact_name,
            contacts.lastname as contact_lastname,
            models.name as model_name'
        )
            ->join('contacts', 'contacts.id = oportunities.id_contact', 'left')
            ->join('models', 'models.id = oportunities.id_model', 'left')
            ->where('oportunities.id', $id)
            ->first();

        if (!$oportunity) {
            return $this->failNotFound('Oportunidad no encontrada');
        }

        return $this->respond([
            'success' => true,
            'data' => $oportunity
        ]);
    }

    /**
     * Crear una nueva oportunidad
     */
    public function create()
    {
        $rules = [
            'id_contact' => 'required|integer',
            'id_model' => 'required|integer',
            'id_status_oportunity' => 'required|integer',
            'id_status_purchase' => 'required|integer',
            'id_brand_agency' => 'required|integer'
        ];

        if (!$this->validate($rules)) {
            return $this->failValidationErrors($this->validator->getErrors());
        }

        // Generar folio único
        $folio = 'OPP-' . date('Ymd') . '-' . rand(1000, 9999);

        $data = [
            'folio' => $folio,
            'year' => $this->request->getPost('year'),
            'id_contact' => $this->request->getPost('id_contact'),
            'id_model' => $this->request->getPost('id_model'),
            'id_version' => $this->request->getPost('id_version'),
            'id_color' => $this->request->getPost('id_color'),
            'id_type_vehicle' => $this->request->getPost('id_type_vehicle'),
            'id_type_purchase' => $this->request->getPost('id_type_purchase'),
            'id_status_oportunity' => $this->request->getPost('id_status_oportunity'),
            'id_status_purchase' => $this->request->getPost('id_status_purchase'),
            'id_brand_agency' => $this->request->getPost('id_brand_agency'),
            'credit_request' => $this->request->getPost('credit_request') ?? 0,
            'other_models' => $this->request->getPost('other_models'),
            'status' => 1
        ];

        $oportunityModel = new OportunityModel();
        $oportunityId = $oportunityModel->insert($data);

        if (!$oportunityId) {
            return $this->fail('Error al crear oportunidad');
        }

        $oportunity = $oportunityModel->find($oportunityId);

        return $this->respondCreated([
            'success' => true,
            'message' => 'Oportunidad creada exitosamente',
            'data' => $oportunity
        ]);
    }

    /**
     * Actualizar una oportunidad
     */
    public function update($id = null)
    {
        $oportunityModel = new OportunityModel();
        $oportunity = $oportunityModel->find($id);

        if (!$oportunity) {
            return $this->failNotFound('Oportunidad no encontrada');
        }

        $data = [];
        
        $fields = ['id_status_oportunity', 'id_status_purchase', 'id_version', 
                   'id_color', 'credit_request', 'other_models'];
        
        foreach ($fields as $field) {
            if ($this->request->getPost($field) !== null) {
                $data[$field] = $this->request->getPost($field);
            }
        }

        if (empty($data)) {
            return $this->fail('No hay datos para actualizar');
        }

        $oportunityModel->update($id, $data);

        $updatedOportunity = $oportunityModel->find($id);

        return $this->respond([
            'success' => true,
            'message' => 'Oportunidad actualizada exitosamente',
            'data' => $updatedOportunity
        ]);
    }

    /**
     * Eliminar una oportunidad (soft delete)
     */
    public function delete($id = null)
    {
        $oportunityModel = new OportunityModel();
        $oportunity = $oportunityModel->find($id);

        if (!$oportunity) {
            return $this->failNotFound('Oportunidad no encontrada');
        }

        $oportunityModel->delete($id);

        return $this->respondDeleted([
            'success' => true,
            'message' => 'Oportunidad eliminada exitosamente'
        ]);
    }
}
