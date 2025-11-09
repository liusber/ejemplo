/**
 * API de Oportunidades
 */
const OportunitiesAPI = {
    /**
     * Obtener todas las oportunidades
     */
    getAll: function(filters = {}) {
        return apiClient.get('/oportunities', filters);
    },

    /**
     * Obtener oportunidad por ID
     */
    getById: function(id) {
        return apiClient.get('/oportunities/' + id);
    },

    /**
     * Crear oportunidad
     */
    create: function(data) {
        return apiClient.post('/oportunities', data);
    },

    /**
     * Actualizar oportunidad
     */
    update: function(id, data) {
        return apiClient.put('/oportunities/' + id, data);
    },

    /**
     * Eliminar oportunidad
     */
    delete: function(id) {
        return apiClient.delete('/oportunities/' + id);
    }
};
