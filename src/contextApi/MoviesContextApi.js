import { endpoints } from "@/constants/UrlConstants";
import fetchApi from "@/utils/FetchApi";

const { createContext, use, useEffect, useState } = require("react");

const MoviesContextApi=createContext();

export const MoviesContextApiProvider=({children})=>{
    // get the banner movies
  

   
    return( 
        <MoviesContextApi.Provider value={{}}>
            {children}
        </MoviesContextApi.Provider>
    )
}


export default MoviesContextApi;