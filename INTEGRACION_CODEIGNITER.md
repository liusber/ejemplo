# Integración CodeIgniter 4 - CRM Automotriz

## 🎉 ¡Integración Completada!

Se ha integrado exitosamente CodeIgniter 4 como backend RESTful para tu CRM Automotriz.

## 📁 Estructura del Proyecto

```
/app
├── backend/                    # CodeIgniter 4
│   ├── app/
│   │   ├── Controllers/       # Controladores de API
│   │   │   ├── AuthController.php
│   │   │   ├── UsersController.php
│   │   │   ├── ContactsController.php
│   │   │   ├── OportunitiesController.php
│   │   │   ├── ActivitiesController.php
│   │   │   └── DashboardController.php
│   │   ├── Models/            # Modelos de base de datos
│   │   │   ├── UserModel.php
│   │   │   ├── ContactModel.php
│   │   │   ├── OportunityModel.php
│   │   │   └── ActivityModel.php
│   │   └── Config/
│   │       ├── Routes.php     # Rutas de API
│   │       ├── Cors.php       # Configuración CORS
│   │       └── Filters.php
│   ├── public/                # Directorio público
│   ├── .env                   # Variables de entorno
│   └── composer.json
│
├── js/                        # JavaScript API Clients
│   ├── api-config.js         # Configuración base
│   ├── api-auth.js           # APIs de autenticación
│   ├── api-contacts.js       # APIs de contactos
│   ├── api-oportunities.js   # APIs de oportunidades
│   ├── api-activities.js     # APIs de actividades
│   ├── api-dashboard.js      # APIs de dashboard
│   └── utils.js              # Utilidades
│
└── *.html                     # Archivos HTML del CRM

```

## 🚀 Servidor CodeIgniter

**URL del Backend:** `http://localhost:8002`

El servidor está corriendo y manejado por supervisor:
```bash
supervisorctl status codeigniter
supervisorctl restart codeigniter
```

## 🔑 APIs Disponibles

### Autenticación

#### POST /api/auth/login
Login de usuario
```json
{
  "email": "usuario@ejemplo.com",
  "password": "contraseña"
}
```

**Respuesta:**
```json
{
  "success": true,
  "token": "JWT_TOKEN_HERE",
  "user": {
    "id": 1,
    "name": "Nombre",
    "email": "usuario@ejemplo.com",
    "role_name": "Asesor"
  },
  "expires_in": 28800
}
```

#### GET /api/auth/me
Obtener usuario actual (requiere token)

#### POST /api/auth/logout
Cerrar sesión

#### POST /api/auth/change-password
Cambiar contraseña

### Usuarios (Users)

- `GET /api/users` - Listar usuarios
- `GET /api/users/{id}` - Obtener usuario
- `POST /api/users` - Crear usuario
- `PUT /api/users/{id}` - Actualizar usuario
- `DELETE /api/users/{id}` - Eliminar usuario

### Contactos (Contacts/Leads)

- `GET /api/contacts` - Listar contactos
- `GET /api/contacts/{id}` - Obtener contacto
- `POST /api/contacts` - Crear contacto
- `PUT /api/contacts/{id}` - Actualizar contacto
- `DELETE /api/contacts/{id}` - Eliminar contacto
- `POST /api/contacts/{id}/assign-adviser` - Asignar asesor

**Filtros disponibles:**
- `id_brand_agency` - Filtrar por agencia
- `id_user_adviser` - Filtrar por asesor
- `id_status_contact` - Filtrar por estado
- `search` - Búsqueda por nombre, email, teléfono
- `new_lead` - Solo leads nuevos

### Oportunidades (Oportunities)

- `GET /api/oportunities` - Listar oportunidades
- `GET /api/oportunities/{id}` - Obtener oportunidad
- `POST /api/oportunities` - Crear oportunidad
- `PUT /api/oportunities/{id}` - Actualizar oportunidad
- `DELETE /api/oportunities/{id}` - Eliminar oportunidad

### Actividades (Activities)

- `GET /api/activities` - Listar actividades
- `GET /api/activities/{id}` - Obtener actividad
- `POST /api/activities` - Crear actividad
- `PUT /api/activities/{id}` - Actualizar actividad
- `DELETE /api/activities/{id}` - Eliminar actividad

**Filtros disponibles:**
- `id_user_adviser` - Filtrar por asesor
- `id_status_activity` - Filtrar por estado
- `date_from` - Fecha desde
- `date_to` - Fecha hasta

### Dashboard

- `GET /api/dashboard/stats` - Estadísticas generales
- `GET /api/dashboard/recent-leads` - Leads recientes
- `GET /api/dashboard/sales-pipeline` - Pipeline de ventas
- `GET /api/dashboard/today-activities` - Actividades del día

## 🔐 Autenticación JWT

Todas las APIs (excepto login) requieren autenticación mediante JWT token.

**Header requerido:**
```
Authorization: Bearer {TOKEN}
```

El token se obtiene al hacer login y tiene una duración de 8 horas (28800 segundos).

## 💾 Base de Datos

**Base de datos:** `cygo_crm` (MySQL/MariaDB)
**Tablas principales:**
- users
- roles
- contacts
- oportunities
- activities
- brands
- brands_agencies
- models
- y 355 tablas más...

## 📝 Uso desde HTML con jQuery/AJAX

### 1. Incluir las librerías en tu HTML:

```html
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="/js/api-config.js"></script>
<script src="/js/api-auth.js"></script>
<script src="/js/api-contacts.js"></script>
<script src="/js/api-oportunities.js"></script>
<script src="/js/api-activities.js"></script>
<script src="/js/api-dashboard.js"></script>
<script src="/js/utils.js"></script>
```

### 2. Ejemplos de uso:

#### Login
```javascript
AuthAPI.login(email, password)
    .done(function(response) {
        apiClient.setToken(response.token);
        AuthAPI.saveUserData(response.user);
        window.location.href = 'dashboard.html';
    })
    .fail(function(error) {
        Utils.handleApiError(error);
    });
```

#### Obtener contactos
```javascript
ContactsAPI.getAll({ id_brand_agency: 1 })
    .done(function(response) {
        console.log(response.data);
        // Renderizar contactos
    })
    .fail(function(error) {
        Utils.handleApiError(error);
    });
```

#### Crear contacto
```javascript
const data = {
    name: 'Juan',
    lastname: 'Pérez',
    email: 'juan@ejemplo.com',
    cellphone: '1234567890',
    id_status_contact: 1,
    id_source: 1,
    id_advertising: 1,
    id_brand_agency: 1
};

ContactsAPI.create(data)
    .done(function(response) {
        Utils.showSuccess('Contacto creado exitosamente');
    })
    .fail(function(error) {
        Utils.handleApiError(error);
    });
```

#### Obtener estadísticas del dashboard
```javascript
DashboardAPI.getStats({ id_brand_agency: 1 })
    .done(function(response) {
        $('#total-contacts').text(response.data.total_contacts);
        $('#new-leads').text(response.data.new_leads);
        $('#total-oportunities').text(response.data.total_oportunities);
    });
```

## 🛡️ Proteger páginas

Para proteger una página y requerir autenticación:

```javascript
$(document).ready(function() {
    // Verificar autenticación
    if (!AuthAPI.requireAuth()) {
        return;
    }
    
    // Obtener datos del usuario
    const user = AuthAPI.getUserData();
    $('#user-name').text(user.name);
    
    // Resto del código...
});
```

## 🔧 Configuración

### Variables de entorno (backend/.env):

```ini
CI_ENVIRONMENT = development
app.baseURL = 'http://localhost:8002/'

# JWT
JWT_SECRET_KEY = cygo-crm-secret-key-2024-v1
JWT_TIME_TO_LIVE = 28800

# Base de datos
database.default.hostname = localhost
database.default.database = cygo_crm
database.default.username = root
database.default.password = 
database.default.DBDriver = MySQLi
database.default.port = 3306
```

### Configuración de CORS

Ya está configurado para permitir peticiones desde cualquier origen.

## 📊 Características Implementadas

✅ **Backend CodeIgniter 4:**
- Sistema de autenticación con JWT
- APIs RESTful para todas las entidades
- Modelos con relaciones
- Validaciones
- Soft deletes
- Filtros y búsquedas
- CORS configurado

✅ **Frontend JavaScript/AJAX:**
- Cliente HTTP con jQuery
- Manejo de autenticación
- APIs organizadas por módulo
- Utilidades comunes
- Manejo de errores
- Loading states

✅ **Base de Datos:**
- 362 tablas importadas
- Relaciones configuradas
- Índices optimizados

## 🧪 Testing

### Probar login desde terminal:
```bash
curl -X POST http://localhost:8002/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"usuario@ejemplo.com","password":"password123"}'
```

### Probar API con token:
```bash
curl http://localhost:8002/api/contacts \
  -H "Authorization: Bearer {TU_TOKEN_AQUI}"
```

## 🔄 Próximos Pasos

1. **Modificar más archivos HTML** para usar las APIs
2. **Crear usuarios de prueba** en la base de datos
3. **Implementar más validaciones** según tus necesidades
4. **Agregar más endpoints** si es necesario
5. **Integrar charts/gráficas** en el dashboard

## 📚 Archivos Modificados

- ✅ `login.html` - Ya integrado con el backend
- ⏳ `dashboard-asesor.html` - Pendiente
- ⏳ `tablero-oportunidades.html` - Pendiente
- ⏳ `inventario.html` - Pendiente
- ⏳ Demás archivos HTML - Pendiente

## 🐛 Troubleshooting

### El servidor no inicia:
```bash
supervisorctl restart codeigniter
tail -f /var/log/supervisor/codeigniter.err.log
```

### Error de CORS:
Verificar configuración en `backend/app/Config/Cors.php`

### Error 401 Unauthorized:
Token expirado o inválido. Hacer login nuevamente.

### Error de base de datos:
Verificar credenciales en `backend/.env`

## 📞 Soporte

Para más información sobre CodeIgniter 4:
- Documentación: https://codeigniter.com/user_guide/
- JWT Library: https://github.com/firebase/php-jwt

---

**¡Todo listo para usar!** 🚀

El backend está corriendo y las APIs están disponibles. Puedes comenzar a integrar el resto de tus páginas HTML siguiendo los ejemplos proporcionados.
