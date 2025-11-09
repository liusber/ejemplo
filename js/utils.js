/**
 * Utilidades comunes
 */
const Utils = {
    /**
     * Mostrar notificación de éxito
     */
    showSuccess: function(message) {
        alert('✓ ' + message);
    },

    /**
     * Mostrar notificación de error
     */
    showError: function(message) {
        alert('✗ ' + message);
    },

    /**
     * Formatear fecha
     */
    formatDate: function(dateString) {
        if (!dateString) return '';
        const date = new Date(dateString);
        return date.toLocaleDateString('es-MX');
    },

    /**
     * Formatear fecha y hora
     */
    formatDateTime: function(dateString) {
        if (!dateString) return '';
        const date = new Date(dateString);
        return date.toLocaleString('es-MX');
    },

    /**
     * Manejar error de API
     */
    handleApiError: function(error) {
        console.error('API Error:', error);
        
        if (error.status === 401) {
            this.showError('Sesión expirada. Por favor inicia sesión nuevamente.');
            apiClient.removeToken();
            setTimeout(function() {
                window.location.href = 'login.html';
            }, 1500);
            return;
        }
        
        let message = 'Error al procesar la solicitud';
        
        if (error.responseJSON && error.responseJSON.message) {
            message = error.responseJSON.message;
        } else if (error.responseJSON && error.responseJSON.messages) {
            // Errores de validación
            const messages = error.responseJSON.messages;
            message = Object.values(messages).join('\n');
        } else if (error.responseText) {
            message = error.responseText;
        }
        
        this.showError(message);
    },

    /**
     * Mostrar loading
     */
    showLoading: function() {
        $('body').append('<div id="loading-overlay" style="position:fixed;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,0.5);z-index:9999;display:flex;align-items:center;justify-content:center;"><div style="background:white;padding:20px;border-radius:8px;"><h3>Cargando...</h3></div></div>');
    },

    /**
     * Ocultar loading
     */
    hideLoading: function() {
        $('#loading-overlay').remove();
    },

    /**
     * Debounce function
     */
    debounce: function(func, wait) {
        let timeout;
        return function executedFunction(...args) {
            const later = function() {
                clearTimeout(timeout);
                func(...args);
            };
            clearTimeout(timeout);
            timeout = setTimeout(later, wait);
        };
    }
};
