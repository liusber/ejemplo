<?php

namespace App\Models;

use CodeIgniter\Model;

class UserModel extends Model
{
    protected $table = 'users';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'name', 'lastname', 'phone', 'email', 'antiquity', 'password',
        'last_activity', 'vcf', 'rfc', 'photo_url', 'disable', 'first_login',
        'survey', 'id_role', 'id_brand_agency', 'status'
    ];
    protected $useTimestamps = true;
    protected $createdField = 'createdAt';
    protected $updatedField = 'updatedAt';
    protected $deletedField = 'deletedAt';
    protected $useSoftDeletes = true;
    protected $returnType = 'array';

    protected $validationRules = [
        'name' => 'required|min_length[2]|max_length[100]',
        'lastname' => 'required|min_length[2]|max_length[100]',
        'email' => 'required|valid_email|max_length[100]|is_unique[users.email,id,{id}]',
        'phone' => 'required|max_length[50]',
        'password' => 'required|min_length[6]'
    ];

    protected $validationMessages = [
        'email' => [
            'is_unique' => 'Este correo ya está registrado'
        ]
    ];

    protected $beforeInsert = ['hashPassword'];
    protected $beforeUpdate = ['hashPassword'];

    protected function hashPassword(array $data)
    {
        if (isset($data['data']['password'])) {
            $data['data']['password'] = password_hash($data['data']['password'], PASSWORD_DEFAULT);
        }
        return $data;
    }

    public function getUserWithRole($id)
    {
        return $this->select('users.*, roles.name as role_name, roles.description as role_description, brands_agencies.name as brand_agency_name')
            ->join('roles', 'roles.id = users.id_role', 'left')
            ->join('brands_agencies', 'brands_agencies.id = users.id_brand_agency', 'left')
            ->where('users.id', $id)
            ->first();
    }

    public function getUserByEmail($email)
    {
        return $this->where('email', $email)
            ->where('status', 1)
            ->where('disable', 0)
            ->first();
    }

    public function getAllWithRoles($filters = [])
    {
        $builder = $this->select('users.*, roles.name as role_name, brands_agencies.name as brand_agency_name')
            ->join('roles', 'roles.id = users.id_role', 'left')
            ->join('brands_agencies', 'brands_agencies.id = users.id_brand_agency', 'left')
            ->where('users.status', 1);

        if (!empty($filters['id_brand_agency'])) {
            $builder->where('users.id_brand_agency', $filters['id_brand_agency']);
        }

        if (!empty($filters['id_role'])) {
            $builder->where('users.id_role', $filters['id_role']);
        }

        return $builder->findAll();
    }
}
