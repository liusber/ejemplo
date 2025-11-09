/**
 * API de Actividades
 */
const ActivitiesAPI = {
    /**
     * Obtener todas las actividades
     */
    getAll: function(filters = {}) {
        return apiClient.get('/activities', filters);
    },

    /**
     * Obtener actividad por ID
     */
    getById: function(id) {
        return apiClient.get('/activities/' + id);
    },

    /**
     * Crear actividad
     */
    create: function(data) {
        return apiClient.post('/activities', data);
    },

    /**
     * Actualizar actividad
     */
    update: function(id, data) {
        return apiClient.put('/activities/' + id, data);
    },

    /**
     * Eliminar actividad
     */
    delete: function(id) {
        return apiClient.delete('/activities/' + id);
    }
};
