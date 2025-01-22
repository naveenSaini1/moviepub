import { AdminContextApi } from '@/contextApi/AdminContextApi';
import { useContext, useState } from 'react';

export default function LoginComp() {
    const [username, setUsername] = useState('');
    const [password, setPassword] = useState('');

     const {loginHandler}= useContext(AdminContextApi);
    

    const handleSubmit = (e) => {
        e.preventDefault();
        loginHandler(username, password).then((data) => {
           
        }   )   
        .catch((error) => { 
           alert('Invalid Username or Password');
           setPassword('');
           setUsername('');
        });
        // Handle login logic here
    };


    return (
            <>
                <div className="flex items-center justify-center min-h-screen bg-gray-100">
                    <div className="w-full max-w-md p-8 space-y-6 bg-white rounded shadow-md">
                        <h2 className="text-2xl font-bold text-center">Login</h2>
                        <form onSubmit={handleSubmit} className="space-y-4">
                            <div>
                                <label htmlFor="username" className="block text-sm font-medium text-gray-700">Username:</label>
                                <input
                                    type="text"
                                    id="username"
                                    name="username"
                                    value={username}
                                    onChange={(e) => setUsername(e.target.value)}
                                    className="w-full px-3 py-2 mt-1 border rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500"
                                />
                            </div>
                            <div>
                                <label htmlFor="password" className="block text-sm font-medium text-gray-700">Password:</label>
                                <input
                                    type="password"
                                    id="password"
                                    name="password"
                                    value={password}
                                    onChange={(e) => setPassword(e.target.value)}
                                    className="w-full px-3 py-2 mt-1 border rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500"
                                />
                            </div>
                            <button
                                type="submit"
                                className="w-full px-4 py-2 font-medium text-white bg-indigo-600 rounded-md hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
                            >
                                Login
                            </button>
                        </form>
                    </div>
                </div>
            </>
        );
        
    }