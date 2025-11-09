<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');

// API Routes
$routes->group('api', function($routes) {
    // Auth routes
    $routes->post('auth/login', 'AuthController::login');
    $routes->get('auth/me', 'AuthController::me');
    $routes->post('auth/logout', 'AuthController::logout');
    $routes->post('auth/change-password', 'AuthController::changePassword');
    
    // Users routes
    $routes->get('users', 'UsersController::index');
    $routes->get('users/(:num)', 'UsersController::show/$1');
    $routes->post('users', 'UsersController::create');
    $routes->put('users/(:num)', 'UsersController::update/$1');
    $routes->post('users/(:num)', 'UsersController::update/$1'); // Para compatibilidad con formularios
    $routes->delete('users/(:num)', 'UsersController::delete/$1');
    
    // Contacts routes
    $routes->get('contacts', 'ContactsController::index');
    $routes->get('contacts/(:num)', 'ContactsController::show/$1');
    $routes->post('contacts', 'ContactsController::create');
    $routes->put('contacts/(:num)', 'ContactsController::update/$1');
    $routes->post('contacts/(:num)', 'ContactsController::update/$1');
    $routes->delete('contacts/(:num)', 'ContactsController::delete/$1');
    $routes->post('contacts/(:num)/assign-adviser', 'ContactsController::assignAdviser/$1');
    
    // Oportunities routes
    $routes->get('oportunities', 'OportunitiesController::index');
    $routes->get('oportunities/(:num)', 'OportunitiesController::show/$1');
    $routes->post('oportunities', 'OportunitiesController::create');
    $routes->put('oportunities/(:num)', 'OportunitiesController::update/$1');
    $routes->post('oportunities/(:num)', 'OportunitiesController::update/$1');
    $routes->delete('oportunities/(:num)', 'OportunitiesController::delete/$1');
    
    // Activities routes
    $routes->get('activities', 'ActivitiesController::index');
    $routes->get('activities/(:num)', 'ActivitiesController::show/$1');
    $routes->post('activities', 'ActivitiesController::create');
    $routes->put('activities/(:num)', 'ActivitiesController::update/$1');
    $routes->post('activities/(:num)', 'ActivitiesController::update/$1');
    $routes->delete('activities/(:num)', 'ActivitiesController::delete/$1');
    
    // Dashboard routes
    $routes->get('dashboard/stats', 'DashboardController::stats');
    $routes->get('dashboard/recent-leads', 'DashboardController::recentLeads');
    $routes->get('dashboard/sales-pipeline', 'DashboardController::salesPipeline');
    $routes->get('dashboard/today-activities', 'DashboardController::todayActivities');
});
