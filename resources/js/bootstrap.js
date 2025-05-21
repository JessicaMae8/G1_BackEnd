import axios from 'axios';
window.axios = axios;

// Set the X-Requested-With header
window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

// Enable sending cookies with requests for Sanctum SPA authentication
window.axios.defaults.withCredentials = true;

// Function to get CSRF cookie before making authenticated requests
export function getCsrfCookie() {
    return window.axios.get('/sanctum/csrf-cookie');
}
