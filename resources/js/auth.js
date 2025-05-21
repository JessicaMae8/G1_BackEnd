import axios from 'axios';

// Ensure axios sends cookies with requests for Sanctum SPA authentication
axios.defaults.withCredentials = true;

// Function to get CSRF cookie before making authenticated requests
export async function getCsrfCookie() {
    return axios.get('/sanctum/csrf-cookie');
}

// Function to login user using Sanctum SPA authentication
export async function login(email, password) {
    try {
        // Get CSRF cookie before login
        await getCsrfCookie();

        // Make login request
        const response = await axios.post('/api/auth/login', {
            email,
            password,
        });

        console.log('Login successful:', response.data);
        return response.data;
    } catch (error) {
        console.error('Login failed:', error.response ? error.response.data : error);
        throw error;
    }
}

// Function to logout user
export async function logout() {
    try {
        const response = await axios.post('/api/auth/logout');
        console.log('Logout successful:', response.data);
        return response.data;
    } catch (error) {
        console.error('Logout failed:', error.response ? error.response.data : error);
        throw error;
    }
}
