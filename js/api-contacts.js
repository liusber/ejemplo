/**
 * API de Contactos
 */
const ContactsAPI = {
    /**
     * Obtener todos los contactos
     */
    getAll: function(filters = {}) {
        return apiClient.get('/contacts', filters);
    },

    /**
     * Obtener contacto por ID
     */
    getById: function(id) {
        return apiClient.get('/contacts/' + id);
    },

    /**
     * Crear contacto
     */
    create: function(data) {
        return apiClient.post('/contacts', data);
    },

    /**
     * Actualizar contacto
     */
    update: function(id, data) {
        return apiClient.put('/contacts/' + id, data);
    },

    /**
     * Eliminar contacto
     */
    delete: function(id) {
        return apiClient.delete('/contacts/' + id);
    },

    /**
     * Asignar asesor a contacto
     */
    assignAdviser: function(contactId, adviserId) {
        return apiClient.post('/contacts/' + contactId + '/assign-adviser', {
            id_user_adviser: adviserId
        });
    }
};
