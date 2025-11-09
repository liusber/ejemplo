<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\ContactModel;

class ContactsController extends ResourceController
{
    use ResponseTrait;

    protected $modelName = 'App\Models\ContactModel';
    protected $format = 'json';

    /**
     * Obtener todos los contactos/leads
     */
    public function index()
    {
        $contactModel = new ContactModel();
        
        $filters = [
            'id_brand_agency' => $this->request->getGet('id_brand_agency'),
            'id_user_adviser' => $this->request->getGet('id_user_adviser'),
            'id_status_contact' => $this->request->getGet('id_status_contact'),
            'search' => $this->request->getGet('search'),
            'new_lead' => $this->request->getGet('new_lead')
        ];

        $contacts = $contactModel->getContactsWithDetails($filters);

        return $this->respond([
            'success' => true,
            'data' => $contacts,
            'total' => count($contacts)
        ]);
    }

    /**
     * Obtener un contacto por ID
     */
    public function show($id = null)
    {
        $contactModel = new ContactModel();
        $contact = $contactModel->getContactById($id);

        if (!$contact) {
            return $this->failNotFound('Contacto no encontrado');
        }

        return $this->respond([
            'success' => true,
            'data' => $contact
        ]);
    }

    /**
     * Crear un nuevo contacto
     */
    public function create()
    {
        $rules = [
            'name' => 'required|min_length[2]|max_length[100]',
            'cellphone' => 'required|max_length[200]',
            'id_status_contact' => 'required|integer',
            'id_source' => 'required|integer',
            'id_advertising' => 'required|integer',
            'id_brand_agency' => 'required|integer'
        ];

        if (!$this->validate($rules)) {
            return $this->failValidationErrors($this->validator->getErrors());
        }

        $data = [
            'name' => $this->request->getPost('name'),
            'lastname' => $this->request->getPost('lastname'),
            'email' => $this->request->getPost('email'),
            'email_optional' => $this->request->getPost('email_optional'),
            'cellphone' => $this->request->getPost('cellphone'),
            'home_phone' => $this->request->getPost('home_phone'),
            'notes' => $this->request->getPost('notes'),
            'id_status_contact' => $this->request->getPost('id_status_contact'),
            'id_source' => $this->request->getPost('id_source'),
            'id_advertising' => $this->request->getPost('id_advertising'),
            'id_brand_agency' => $this->request->getPost('id_brand_agency'),
            'id_user_adviser' => $this->request->getPost('id_user_adviser'),
            'status' => 1,
            'new_lead' => 1
        ];

        $contactModel = new ContactModel();
        $contactId = $contactModel->insert($data);

        if (!$contactId) {
            return $this->fail('Error al crear contacto');
        }

        $contact = $contactModel->getContactById($contactId);

        return $this->respondCreated([
            'success' => true,
            'message' => 'Contacto creado exitosamente',
            'data' => $contact
        ]);
    }

    /**
     * Actualizar un contacto
     */
    public function update($id = null)
    {
        $contactModel = new ContactModel();
        $contact = $contactModel->find($id);

        if (!$contact) {
            return $this->failNotFound('Contacto no encontrado');
        }

        $data = [];
        
        $fields = ['name', 'lastname', 'email', 'email_optional', 'cellphone', 
                   'home_phone', 'notes', 'id_status_contact', 'id_user_adviser', 'new_lead'];
        
        foreach ($fields as $field) {
            if ($this->request->getPost($field) !== null) {
                $data[$field] = $this->request->getPost($field);
            }
        }

        if (empty($data)) {
            return $this->fail('No hay datos para actualizar');
        }

        $contactModel->update($id, $data);

        $updatedContact = $contactModel->getContactById($id);

        return $this->respond([
            'success' => true,
            'message' => 'Contacto actualizado exitosamente',
            'data' => $updatedContact
        ]);
    }

    /**
     * Eliminar un contacto (soft delete)
     */
    public function delete($id = null)
    {
        $contactModel = new ContactModel();
        $contact = $contactModel->find($id);

        if (!$contact) {
            return $this->failNotFound('Contacto no encontrado');
        }

        $contactModel->delete($id);

        return $this->respondDeleted([
            'success' => true,
            'message' => 'Contacto eliminado exitosamente'
        ]);
    }

    /**
     * Asignar asesor a contacto
     */
    public function assignAdviser($id = null)
    {
        $contactModel = new ContactModel();
        $contact = $contactModel->find($id);

        if (!$contact) {
            return $this->failNotFound('Contacto no encontrado');
        }

        $id_user_adviser = $this->request->getPost('id_user_adviser');

        if (!$id_user_adviser) {
            return $this->fail('ID de asesor requerido');
        }

        $contactModel->update($id, ['id_user_adviser' => $id_user_adviser]);

        return $this->respond([
            'success' => true,
            'message' => 'Asesor asignado exitosamente'
        ]);
    }
}
