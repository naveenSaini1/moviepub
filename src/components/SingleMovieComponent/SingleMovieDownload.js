"use client"
import { MovieHeader } from "./MovieHeader"
import { MoviePoster } from "./MoviePoster"
import { MovieInfo } from "./MovieInfo"
import { DownloadSection } from "./DownloadSection"
import { MovieDescription } from "./MovieDescription"
import { useEffect, useState } from "react"
import { endpoints } from "@/constants/UrlConstants"
import fetchApi from "@/utils/FetchApi"
import { notFound } from "next/navigation"
import NotFoundPage from "../NotFoundPage"

export default function SingleMovieDownload({url}) {
    const [data,setData]=useState({});
    const [isData,setIsData]=useState(true);
    useEffect(()=>{
        
        fetchApi(`${endpoints.public.singleMovieByUrl}/${url}`, 'GET')
          .then((data) => {
            if(data.movieId==0) {
             setIsData(false);
            }
            console.log(data,"========================")
              setData(data); 
            
            
          })
          .catch((error) => {
            console.error('Error fetching movies:', error);

          });

    },[])

    if(!isData)return(<NotFoundPage/>)
  return (

    <article className="min-h-screen bg-black text-gray-100">
      <MovieHeader downLoadName={data.downloadName} title={data.movieTitle} relaseDate={data.releaseDate} genres ={data.genres} collections ={data.collections} languages={data.languages} year={data.year} />

      <main className="max-w-7xl mx-auto p-4 lg:p-6 space-y-8">
        <div className="grid md:grid-cols-3 gap-8">
          <div className="md:col-span-1">
            <MoviePoster  image={data.imageUrl} title={data.movieTitle}/>
          </div>

          <div className="md:col-span-2 space-y-8">
            <MovieInfo genres={data.genres} cast={data.casts} languages={data.languages} />
            <DownloadSection links={data.links} />
          </div>
        </div>

        <MovieDescription smallDescription ={data.smallDescription} bigDescription={data.bigDescription} keywords={data.keywords} />
      </main>
    </article>
  )
}

