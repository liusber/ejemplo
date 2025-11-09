<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\UserModel;

class UsersController extends ResourceController
{
    use ResponseTrait;

    protected $modelName = 'App\Models\UserModel';
    protected $format = 'json';

    /**
     * Obtener todos los usuarios
     */
    public function index()
    {
        $userModel = new UserModel();
        
        $filters = [
            'id_brand_agency' => $this->request->getGet('id_brand_agency'),
            'id_role' => $this->request->getGet('id_role')
        ];

        $users = $userModel->getAllWithRoles($filters);

        // Remover passwords
        foreach ($users as &$user) {
            unset($user['password']);
        }

        return $this->respond([
            'success' => true,
            'data' => $users
        ]);
    }

    /**
     * Obtener un usuario por ID
     */
    public function show($id = null)
    {
        $userModel = new UserModel();
        $user = $userModel->getUserWithRole($id);

        if (!$user) {
            return $this->failNotFound('Usuario no encontrado');
        }

        unset($user['password']);

        return $this->respond([
            'success' => true,
            'data' => $user
        ]);
    }

    /**
     * Crear un nuevo usuario
     */
    public function create()
    {
        $rules = [
            'name' => 'required|min_length[2]|max_length[100]',
            'lastname' => 'required|min_length[2]|max_length[100]',
            'email' => 'required|valid_email|is_unique[users.email]',
            'phone' => 'required|max_length[50]',
            'password' => 'required|min_length[6]',
            'id_role' => 'required|integer',
            'id_brand_agency' => 'required|integer',
            'rfc' => 'required|max_length[30]'
        ];

        if (!$this->validate($rules)) {
            return $this->failValidationErrors($this->validator->getErrors());
        }

        $data = [
            'name' => $this->request->getPost('name'),
            'lastname' => $this->request->getPost('lastname'),
            'email' => $this->request->getPost('email'),
            'phone' => $this->request->getPost('phone'),
            'password' => $this->request->getPost('password'),
            'id_role' => $this->request->getPost('id_role'),
            'id_brand_agency' => $this->request->getPost('id_brand_agency'),
            'rfc' => $this->request->getPost('rfc'),
            'status' => 1,
            'disable' => 0,
            'first_login' => 1
        ];

        $userModel = new UserModel();
        $userId = $userModel->insert($data);

        if (!$userId) {
            return $this->fail('Error al crear usuario');
        }

        $user = $userModel->getUserWithRole($userId);
        unset($user['password']);

        return $this->respondCreated([
            'success' => true,
            'message' => 'Usuario creado exitosamente',
            'data' => $user
        ]);
    }

    /**
     * Actualizar un usuario
     */
    public function update($id = null)
    {
        $userModel = new UserModel();
        $user = $userModel->find($id);

        if (!$user) {
            return $this->failNotFound('Usuario no encontrado');
        }

        $data = [];
        
        if ($this->request->getPost('name')) {
            $data['name'] = $this->request->getPost('name');
        }
        if ($this->request->getPost('lastname')) {
            $data['lastname'] = $this->request->getPost('lastname');
        }
        if ($this->request->getPost('phone')) {
            $data['phone'] = $this->request->getPost('phone');
        }
        if ($this->request->getPost('id_role')) {
            $data['id_role'] = $this->request->getPost('id_role');
        }
        if ($this->request->getPost('password')) {
            $data['password'] = $this->request->getPost('password');
        }

        if (empty($data)) {
            return $this->fail('No hay datos para actualizar');
        }

        $userModel->update($id, $data);

        $updatedUser = $userModel->getUserWithRole($id);
        unset($updatedUser['password']);

        return $this->respond([
            'success' => true,
            'message' => 'Usuario actualizado exitosamente',
            'data' => $updatedUser
        ]);
    }

    /**
     * Eliminar un usuario (soft delete)
     */
    public function delete($id = null)
    {
        $userModel = new UserModel();
        $user = $userModel->find($id);

        if (!$user) {
            return $this->failNotFound('Usuario no encontrado');
        }

        $userModel->delete($id);

        return $this->respondDeleted([
            'success' => true,
            'message' => 'Usuario eliminado exitosamente'
        ]);
    }
}
