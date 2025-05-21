import './bootstrap';
import { login, logout } from './auth';

// Example usage: login with email and password
// Replace with your actual UI event handlers
async function performLogin() {
    try {
        const email = 'user@example.com'; // replace with input value
        const password = 'password'; // replace with input value
        const response = await login(email, password);
        console.log('User logged in:', response.user);
    } catch (error) {
        console.error('Login error:', error);
    }
}

// Call performLogin() to test login flow
// performLogin();
