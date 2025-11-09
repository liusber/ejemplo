<?php

namespace App\Models;

use CodeIgniter\Model;

class ActivityModel extends Model
{
    protected $table = 'activities';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'title', 'description', 'date_promise', 'hour_promise', 'notify_client',
        'activity_confirmation', 'client_arrival', 'comments', 'id_user_adviser',
        'id_status_activity', 'id_type_activity', 'id_type_appointment',
        'id_oportunity', 'id_user_generate', 'id_type_task', 'status'
    ];
    protected $useTimestamps = true;
    protected $createdField = 'createdAt';
    protected $updatedField = 'updatedAt';
    protected $deletedField = 'deletedAt';
    protected $useSoftDeletes = true;
    protected $returnType = 'array';

    public function getActivitiesWithDetails($filters = [])
    {
        $builder = $this->select(
            'activities.*,
            users.name as adviser_name,
            users.lastname as adviser_lastname,
            status_activities.name as status_name,
            type_activities.name as type_name,
            oportunities.folio as oportunity_folio'
        )
            ->join('users', 'users.id = activities.id_user_adviser', 'left')
            ->join('status_activities', 'status_activities.id = activities.id_status_activity', 'left')
            ->join('type_activities', 'type_activities.id = activities.id_type_activity', 'left')
            ->join('oportunities', 'oportunities.id = activities.id_oportunity', 'left')
            ->where('activities.status', 1);

        if (!empty($filters['id_user_adviser'])) {
            $builder->where('activities.id_user_adviser', $filters['id_user_adviser']);
        }

        if (!empty($filters['id_status_activity'])) {
            $builder->where('activities.id_status_activity', $filters['id_status_activity']);
        }

        if (!empty($filters['date_from'])) {
            $builder->where('activities.date_promise >=', $filters['date_from']);
        }

        if (!empty($filters['date_to'])) {
            $builder->where('activities.date_promise <=', $filters['date_to']);
        }

        $builder->orderBy('activities.date_promise', 'ASC')
            ->orderBy('activities.hour_promise', 'ASC');

        return $builder->findAll();
    }
}
