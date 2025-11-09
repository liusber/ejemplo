/**
 * API de Dashboard
 */
const DashboardAPI = {
    /**
     * Obtener estadísticas
     */
    getStats: function(filters = {}) {
        return apiClient.get('/dashboard/stats', filters);
    },

    /**
     * Obtener leads recientes
     */
    getRecentLeads: function(filters = {}) {
        return apiClient.get('/dashboard/recent-leads', filters);
    },

    /**
     * Obtener pipeline de ventas
     */
    getSalesPipeline: function(filters = {}) {
        return apiClient.get('/dashboard/sales-pipeline', filters);
    },

    /**
     * Obtener actividades de hoy
     */
    getTodayActivities: function(filters = {}) {
        return apiClient.get('/dashboard/today-activities', filters);
    }
};
