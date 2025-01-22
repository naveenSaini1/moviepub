'use client'

import { MoviesContextApiProvider } from "@/contextApi/MoviesContextApi"
import Movies from "./MovieComponents/Movies"

import { useEffect, useState } from "react"
import fetchApi from "@/utils/FetchApi"
import { endpoints } from "@/constants/UrlConstants"
import Pagination from "./pagination/Pagination"


function MainPage({searchParams}) {
    const [totalPages, setTotalPages] = useState(0);

    const [latestReleases, setLatestReleases] = useState([]);
    useEffect(() => {
     
      console.log(searchParams,"searchParams")
      if(searchParams.page!=undefined){
         latestReleasesData(searchParams.page);
      }
      else{
        latestReleasesData(1);
      }

      if(totalPages==0){
        fetchApi(`${endpoints.public.getTheTotalPages}`, 'GET')
        .then((data)=>{
          console.log(data);
          setTotalPages(data);
        })
  
      }
     
  
    },[searchParams])
   

    const latestReleasesData = async (page) => {
      let data = await fetchApi(`${endpoints.public.getThelatestMoives}/${page}`, 'GET');
      setLatestReleases(data);
  }
  
  

  return (
    <MoviesContextApiProvider>
    <main className="min-h-screen bg-black text-white">
    
    
    <div className="container mx-auto px-4 py-8">
      <div className="flex flex-col md:flex-row gap-6">
        <Movies data={latestReleases} />
       
      </div>
    </div>
    <div className="mt-2 mb-2">
    <Pagination totalPage={totalPages} currentPage={(searchParams.page!=undefined)?searchParams.page:1} />
    </div>
   
  </main>
  </MoviesContextApiProvider>
  )
}

export default MainPage
