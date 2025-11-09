/**
 * Configuración global de la API
 */
const API_CONFIG = {
    baseURL: 'http://localhost:8002/api',
    timeout: 30000
};

/**
 * Cliente HTTP con jQuery AJAX
 */
const apiClient = {
    /**
     * Obtener token de autenticación
     */
    getToken: function() {
        return localStorage.getItem('auth_token');
    },

    /**
     * Guardar token
     */
    setToken: function(token) {
        localStorage.setItem('auth_token', token);
    },

    /**
     * Eliminar token
     */
    removeToken: function() {
        localStorage.removeItem('auth_token');
        localStorage.removeItem('user_data');
    },

    /**
     * Obtener headers por defecto
     */
    getHeaders: function() {
        const headers = {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
        };
        
        const token = this.getToken();
        if (token) {
            headers['Authorization'] = 'Bearer ' + token;
        }
        
        return headers;
    },

    /**
     * Request GET
     */
    get: function(endpoint, params = {}) {
        return $.ajax({
            url: API_CONFIG.baseURL + endpoint,
            method: 'GET',
            headers: this.getHeaders(),
            data: params,
            timeout: API_CONFIG.timeout
        });
    },

    /**
     * Request POST
     */
    post: function(endpoint, data = {}) {
        return $.ajax({
            url: API_CONFIG.baseURL + endpoint,
            method: 'POST',
            headers: this.getHeaders(),
            data: JSON.stringify(data),
            contentType: 'application/json',
            timeout: API_CONFIG.timeout
        });
    },

    /**
     * Request PUT
     */
    put: function(endpoint, data = {}) {
        return $.ajax({
            url: API_CONFIG.baseURL + endpoint,
            method: 'PUT',
            headers: this.getHeaders(),
            data: JSON.stringify(data),
            contentType: 'application/json',
            timeout: API_CONFIG.timeout
        });
    },

    /**
     * Request DELETE
     */
    delete: function(endpoint) {
        return $.ajax({
            url: API_CONFIG.baseURL + endpoint,
            method: 'DELETE',
            headers: this.getHeaders(),
            timeout: API_CONFIG.timeout
        });
    }
};
