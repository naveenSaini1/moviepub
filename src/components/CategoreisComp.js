"use client"

import { useEffect, useState } from "react";
import Movies from "./MovieComponents/Movies"
import fetchApi from "@/utils/FetchApi";
import { endpoints } from "@/constants/UrlConstants";
import Pagination from "./pagination/Pagination";
import { notFound } from "next/navigation";

export default function CategoreisComp({page,pageName,moviesLink,countLink}){
    const [totalPages, setTotalPages] = useState(0);
    const [collectionMovies,setCollectionMovies]=useState([]);

     useEffect(()=>{
    if(pageName){
      if(page){
        getTheCollectionData(pageName,page)

      }
      else{
        getTheCollectionData(pageName,1);

      }

      if(totalPages==0 && pageName){
        fetchApi(`${countLink}/${pageName}`, 'GET')
        .then((data)=>{
          console.log(data);
          setTotalPages(data);
        })
  
      }
    }
  },[page])
  const getTheCollectionData = async (pageName,page) => {
    let data = await fetchApi(`${moviesLink}/${pageName}/${page}`, 'GET');
    if(data==null || data==undefined || data.length==0){
      notFound();
      return;
    }
    setCollectionMovies(data);
}

    return(
        <>
        
            <Movies data={collectionMovies}/>
            <Pagination totalPage={totalPages} page={(pageName?pageName:"bollywood")} currentPage={(page)?page:1} />


        </>
    )
}