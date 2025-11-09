<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\UserModel;
use Firebase\JWT\JWT;
use Firebase\JWT\Key;

class AuthController extends ResourceController
{
    use ResponseTrait;

    protected $modelName = 'App\Models\UserModel';
    protected $format = 'json';

    /**
     * Login de usuario
     */
    public function login()
    {
        $rules = [
            'email' => 'required|valid_email',
            'password' => 'required'
        ];

        if (!$this->validate($rules)) {
            return $this->failValidationErrors($this->validator->getErrors());
        }

        $email = $this->request->getPost('email');
        $password = $this->request->getPost('password');

        $userModel = new UserModel();
        $user = $userModel->getUserByEmail($email);

        if (!$user) {
            return $this->failUnauthorized('Credenciales inválidas');
        }

        if (!password_verify($password, $user['password'])) {
            return $this->failUnauthorized('Credenciales inválidas');
        }

        // Actualizar última actividad
        $userModel->update($user['id'], ['last_activity' => date('Y-m-d H:i:s')]);

        // Generar JWT
        $key = getenv('JWT_SECRET_KEY');
        $iat = time();
        $exp = $iat + getenv('JWT_TIME_TO_LIVE');

        $payload = [
            'iss' => 'cygo_crm',
            'aud' => 'cygo_crm',
            'iat' => $iat,
            'exp' => $exp,
            'data' => [
                'id' => $user['id'],
                'email' => $user['email'],
                'id_role' => $user['id_role'],
                'id_brand_agency' => $user['id_brand_agency']
            ]
        ];

        $token = JWT::encode($payload, $key, 'HS256');

        // Obtener datos completos del usuario con rol
        $userWithRole = $userModel->getUserWithRole($user['id']);
        unset($userWithRole['password']);

        return $this->respond([
            'success' => true,
            'message' => 'Login exitoso',
            'token' => $token,
            'user' => $userWithRole,
            'expires_in' => getenv('JWT_TIME_TO_LIVE')
        ]);
    }

    /**
     * Obtener información del usuario actual
     */
    public function me()
    {
        $authHeader = $this->request->getHeader('Authorization');
        
        if (!$authHeader) {
            return $this->failUnauthorized('Token no proporcionado');
        }

        try {
            $token = str_replace('Bearer ', '', $authHeader->getValue());
            $key = getenv('JWT_SECRET_KEY');
            $decoded = JWT::decode($token, new Key($key, 'HS256'));

            $userModel = new UserModel();
            $user = $userModel->getUserWithRole($decoded->data->id);

            if (!$user) {
                return $this->failNotFound('Usuario no encontrado');
            }

            unset($user['password']);

            return $this->respond([
                'success' => true,
                'user' => $user
            ]);
        } catch (\Exception $e) {
            return $this->failUnauthorized('Token inválido: ' . $e->getMessage());
        }
    }

    /**
     * Logout (invalidar token del lado del cliente)
     */
    public function logout()
    {
        return $this->respond([
            'success' => true,
            'message' => 'Logout exitoso'
        ]);
    }

    /**
     * Cambiar contraseña
     */
    public function changePassword()
    {
        $authHeader = $this->request->getHeader('Authorization');
        
        if (!$authHeader) {
            return $this->failUnauthorized('Token no proporcionado');
        }

        try {
            $token = str_replace('Bearer ', '', $authHeader->getValue());
            $key = getenv('JWT_SECRET_KEY');
            $decoded = JWT::decode($token, new Key($key, 'HS256'));

            $rules = [
                'current_password' => 'required',
                'new_password' => 'required|min_length[6]',
                'confirm_password' => 'required|matches[new_password]'
            ];

            if (!$this->validate($rules)) {
                return $this->failValidationErrors($this->validator->getErrors());
            }

            $userModel = new UserModel();
            $user = $userModel->find($decoded->data->id);

            if (!password_verify($this->request->getPost('current_password'), $user['password'])) {
                return $this->fail('Contraseña actual incorrecta');
            }

            $userModel->update($decoded->data->id, [
                'password' => $this->request->getPost('new_password')
            ]);

            return $this->respond([
                'success' => true,
                'message' => 'Contraseña actualizada exitosamente'
            ]);
        } catch (\Exception $e) {
            return $this->failUnauthorized('Token inválido');
        }
    }
}
