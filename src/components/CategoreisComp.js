"use client"

import { useEffect, useState } from "react";
import Movies from "./MovieComponents/Movies"
import fetchApi from "@/utils/FetchApi";
import { endpoints } from "@/constants/UrlConstants";
import Pagination from "./pagination/Pagination";
import { notFound } from "next/navigation";
import LoadingPage from "./LoadingPage";

export default function CategoreisComp({page,pageName,moviesLink,countLink}){
    const [totalPages, setTotalPages] = useState(0);
    const [loading,setLoading]=useState(false);
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
        setLoading(true);
        fetchApi(`${countLink}/${pageName}`, 'GET')
        .then((data)=>{
          console.log(data);
          setLoading(false);
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
        {collectionMovies.length==0 && <h1 className="text-center text-3xl text-white">No Movies Found</h1>}
        {loading && <LoadingPage/>}
        
         {collectionMovies.length!=0 &&   <Movies data={collectionMovies}/>}
            <Pagination totalPage={totalPages} page={(pageName?pageName:"bollywood")} currentPage={(page)?page:1} />


        </>
    )
}