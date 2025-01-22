const { endpoints } = require("@/constants/UrlConstants");
const { default: fetchApi } = require("@/utils/FetchApi");
const { createContext, useRef, useEffect, useState, use } = require("react");

export const AdminContextApi = createContext();

export const AdminContextApiProvider = ({ children }) => {
    const token = useRef(null);
    const [loading, setLoading] = useState(false);
    const [login, setLogin] = useState(false);


    // useEffect(() => {
    //    if(!login)
    //     loginHandler('naveen@gmail.com', '12345678');

    //     },[])
            
      const loginHandler =async (username, password) => {
       let data=await  fetchApi(`${endpoints.login}`, 'POST', null, { username: username, password: password })
           token.current = data.token
           setLogin(true)
         
        }
       
  
    return (
        <AdminContextApi.Provider value={{ token,loginHandler }}>
            
            {(loading )? <h1 className="flex justify-center text-center">Loading...</h1>: children}
        </AdminContextApi.Provider>
    )
}
