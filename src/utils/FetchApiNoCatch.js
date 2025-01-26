const fetchApiNoCatch = async (url, method = 'GET', token = '', body = null, formdata = null) => {
    const headers = new Headers();
    if (token) {
        headers.append("Authorization", `Bearer ${token}`);
    }
    if (body) {
        headers.append("Content-Type", "application/json");
    }

    const requestOptions = {
        method,
        headers,
        body: body ? JSON.stringify(body) : formdata,
        redirect: 'follow',
        cache: 'no-store'
    };

    try {
        const response = await fetch(url, requestOptions);
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
        const result = await response.json();
        console.log(result);
       
        return result;

    } catch (error) {
        console.error('API call error:', error);
        throw error;
    }
};

export default fetchApiNoCatch;