<?php

namespace App\Models;

use CodeIgniter\Model;

class ContactModel extends Model
{
    protected $table = 'contacts';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'name', 'lastname', 'email', 'email_optional', 'notes', 'date_birth',
        'cellphone', 'home_phone', 'folder_name', 'date_status_change',
        'id_event', 'id_gender', 'id_status_contact', 'id_source',
        'id_advertising', 'id_contact_favorite', 'id_user_adviser',
        'id_brand_agency', 'status', 'new_lead'
    ];
    protected $useTimestamps = true;
    protected $createdField = 'createdAt';
    protected $updatedField = 'updatedAt';
    protected $deletedField = 'deletedAt';
    protected $useSoftDeletes = true;
    protected $returnType = 'array';

    public function getContactsWithDetails($filters = [])
    {
        $builder = $this->select(
            'contacts.*,
            users.name as adviser_name,
            users.lastname as adviser_lastname,
            status_contacts.name as status_name,
            sources.name as source_name'
        )
            ->join('users', 'users.id = contacts.id_user_adviser', 'left')
            ->join('status_contacts', 'status_contacts.id = contacts.id_status_contact', 'left')
            ->join('sources', 'sources.id = contacts.id_source', 'left')
            ->where('contacts.status', 1);

        if (!empty($filters['id_brand_agency'])) {
            $builder->where('contacts.id_brand_agency', $filters['id_brand_agency']);
        }

        if (!empty($filters['id_user_adviser'])) {
            $builder->where('contacts.id_user_adviser', $filters['id_user_adviser']);
        }

        if (!empty($filters['id_status_contact'])) {
            $builder->where('contacts.id_status_contact', $filters['id_status_contact']);
        }

        if (!empty($filters['search'])) {
            $builder->groupStart()
                ->like('contacts.name', $filters['search'])
                ->orLike('contacts.lastname', $filters['search'])
                ->orLike('contacts.email', $filters['search'])
                ->orLike('contacts.cellphone', $filters['search'])
                ->groupEnd();
        }

        if (!empty($filters['new_lead'])) {
            $builder->where('contacts.new_lead', 1);
        }

        $builder->orderBy('contacts.createdAt', 'DESC');

        return $builder->findAll();
    }

    public function getContactById($id)
    {
        return $this->select(
            'contacts.*,
            users.name as adviser_name,
            users.lastname as adviser_lastname,
            status_contacts.name as status_name'
        )
            ->join('users', 'users.id = contacts.id_user_adviser', 'left')
            ->join('status_contacts', 'status_contacts.id = contacts.id_status_contact', 'left')
            ->where('contacts.id', $id)
            ->first();
    }
}
