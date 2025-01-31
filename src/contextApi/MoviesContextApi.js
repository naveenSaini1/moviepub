import { endpoints } from "@/constants/UrlConstants";
import fetchApi from "@/utils/FetchApi";

const { createContext, use, useEffect, useState } = require("react");

const MoviesContextApi=createContext();

export const MoviesContextApiProvider=({children})=>{
    // get the banner movies
  const [loading,setLoading]=useState(false);

   
    return( 
        <MoviesContextApi.Provider value={{setLoading}}>
            {loading?<h1>Loading...</h1>:children}
            
        </MoviesContextApi.Provider>
    )
}


export default MoviesContextApi;