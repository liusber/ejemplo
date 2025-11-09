<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\ActivityModel;

class ActivitiesController extends ResourceController
{
    use ResponseTrait;

    protected $modelName = 'App\Models\ActivityModel';
    protected $format = 'json';

    /**
     * Obtener todas las actividades
     */
    public function index()
    {
        $activityModel = new ActivityModel();
        
        $filters = [
            'id_user_adviser' => $this->request->getGet('id_user_adviser'),
            'id_status_activity' => $this->request->getGet('id_status_activity'),
            'date_from' => $this->request->getGet('date_from'),
            'date_to' => $this->request->getGet('date_to')
        ];

        $activities = $activityModel->getActivitiesWithDetails($filters);

        return $this->respond([
            'success' => true,
            'data' => $activities,
            'total' => count($activities)
        ]);
    }

    /**
     * Obtener una actividad por ID
     */
    public function show($id = null)
    {
        $activityModel = new ActivityModel();
        $activity = $activityModel->select(
            'activities.*,
            users.name as adviser_name,
            users.lastname as adviser_lastname'
        )
            ->join('users', 'users.id = activities.id_user_adviser', 'left')
            ->where('activities.id', $id)
            ->first();

        if (!$activity) {
            return $this->failNotFound('Actividad no encontrada');
        }

        return $this->respond([
            'success' => true,
            'data' => $activity
        ]);
    }

    /**
     * Crear una nueva actividad
     */
    public function create()
    {
        $rules = [
            'title' => 'required|min_length[3]|max_length[250]',
            'date_promise' => 'required|valid_date',
            'hour_promise' => 'required',
            'id_type_activity' => 'required|integer',
            'id_user_adviser' => 'required|integer'
        ];

        if (!$this->validate($rules)) {
            return $this->failValidationErrors($this->validator->getErrors());
        }

        $data = [
            'title' => $this->request->getPost('title'),
            'description' => $this->request->getPost('description'),
            'date_promise' => $this->request->getPost('date_promise'),
            'hour_promise' => $this->request->getPost('hour_promise'),
            'notify_client' => $this->request->getPost('notify_client') ?? 0,
            'id_user_adviser' => $this->request->getPost('id_user_adviser'),
            'id_status_activity' => $this->request->getPost('id_status_activity') ?? 1,
            'id_type_activity' => $this->request->getPost('id_type_activity'),
            'id_type_appointment' => $this->request->getPost('id_type_appointment'),
            'id_oportunity' => $this->request->getPost('id_oportunity'),
            'id_user_generate' => $this->request->getPost('id_user_generate'),
            'id_type_task' => $this->request->getPost('id_type_task'),
            'comments' => $this->request->getPost('comments'),
            'status' => 1
        ];

        $activityModel = new ActivityModel();
        $activityId = $activityModel->insert($data);

        if (!$activityId) {
            return $this->fail('Error al crear actividad');
        }

        $activity = $activityModel->find($activityId);

        return $this->respondCreated([
            'success' => true,
            'message' => 'Actividad creada exitosamente',
            'data' => $activity
        ]);
    }

    /**
     * Actualizar una actividad
     */
    public function update($id = null)
    {
        $activityModel = new ActivityModel();
        $activity = $activityModel->find($id);

        if (!$activity) {
            return $this->failNotFound('Actividad no encontrada');
        }

        $data = [];
        
        $fields = ['title', 'description', 'date_promise', 'hour_promise', 
                   'id_status_activity', 'activity_confirmation', 'client_arrival', 'comments'];
        
        foreach ($fields as $field) {
            if ($this->request->getPost($field) !== null) {
                $data[$field] = $this->request->getPost($field);
            }
        }

        if (empty($data)) {
            return $this->fail('No hay datos para actualizar');
        }

        $activityModel->update($id, $data);

        $updatedActivity = $activityModel->find($id);

        return $this->respond([
            'success' => true,
            'message' => 'Actividad actualizada exitosamente',
            'data' => $updatedActivity
        ]);
    }

    /**
     * Eliminar una actividad (soft delete)
     */
    public function delete($id = null)
    {
    $activityModel = new ActivityModel();
        $activity = $activityModel->find($id);

        if (!$activity) {
            return $this->failNotFound('Actividad no encontrada');
        }

        $activityModel->delete($id);

        return $this->respondDeleted([
            'success' => true,
            'message' => 'Actividad eliminada exitosamente'
        ]);
    }
}
