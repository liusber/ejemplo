/**
 * API de Autenticación
 */
const AuthAPI = {
    /**
     * Login de usuario
     */
    login: function(email, password) {
        return apiClient.post('/auth/login', {
            email: email,
            password: password
        });
    },

    /**
     * Logout
     */
    logout: function() {
        return apiClient.post('/auth/logout', {})
            .always(function() {
                apiClient.removeToken();
                window.location.href = 'login.html';
            });
    },

    /**
     * Obtener usuario actual
     */
    getCurrentUser: function() {
        return apiClient.get('/auth/me');
    },

    /**
     * Cambiar contraseña
     */
    changePassword: function(currentPassword, newPassword, confirmPassword) {
        return apiClient.post('/auth/change-password', {
            current_password: currentPassword,
            new_password: newPassword,
            confirm_password: confirmPassword
        });
    },

    /**
     * Verificar si está autenticado
     */
    isAuthenticated: function() {
        const token = apiClient.getToken();
        return token !== null && token !== '';
    },

    /**
     * Guardar datos de usuario
     */
    saveUserData: function(userData) {
        localStorage.setItem('user_data', JSON.stringify(userData));
    },

    /**
     * Obtener datos de usuario
     */
    getUserData: function() {
        const data = localStorage.getItem('user_data');
        return data ? JSON.parse(data) : null;
    },

    /**
     * Proteger página (requiere autenticación)
     */
    requireAuth: function() {
        if (!this.isAuthenticated()) {
            window.location.href = 'login.html';
            return false;
        }
        return true;
    }
};
