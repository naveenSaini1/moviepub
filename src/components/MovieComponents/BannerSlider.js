'use client'

import { useState, useEffect, useContext, useRef } from 'react'
import Image from 'next/image'
import MoviesContextApi from '@/contextApi/MoviesContextApi';
import { endpoints, IMAGE_URL } from '@/constants/UrlConstants';
import Link from 'next/link';
import fetchApi from '@/utils/FetchApi';
import { MOVIE } from '@/constants/baseConstants';


export default function BannerSlider() {

  const [bannerMovies, setBannerMovies] = useState([]);
  const lenghtRef=useRef();
  useEffect(() => {
    // banner movies
    fetchApi(`${endpoints.public.bannerMovies}`, 'GET')
      .then((data) => {
        setBannerMovies(data);
        lenghtRef.current=data.length;
      })



  }, [])

  const [currentIndex, setCurrentIndex] = useState(0)

  useEffect(() => {
    const interval = setInterval(() => {
      console.log(bannerMovies.length + " lenght useEffect",lenghtRef.current)
      setCurrentIndex((prevIndex) => (prevIndex + 1) % lenghtRef.current)
    }, 5000)

    return () => clearInterval(interval)
  }, [bannerMovies])

  const handleScroll = (direction) => {
    if (direction === 'left') {
      setCurrentIndex((prevIndex) => (prevIndex - 1 + bannerMovies.length) % bannerMovies.length)
    } else {
      setCurrentIndex((prevIndex) => (prevIndex + 1) % bannerMovies.length)
    }
  }

  return (
    <div className="relative w-full h-[300px] md:h-[400px] overflow-hidden">
      <div
        className="flex transition-transform duration-300 ease-in-out"
        style={{ transform: `translateX(-${currentIndex * 100}%)` }}
      >
        {bannerMovies.map((movie) => (
          <div key={movie.title} className="min-w-full h-full relative">
            <div
              className=" bg-cover bg-no-repeat bg-center brightness-50"
              style={{
                width: '100%',
                height: '400px',
                backgroundImage: `url(${movie.imageurl ? `${IMAGE_URL}/${movie.imageurl}` : `/placeholder.svg?height=1080&width=1920&text=${movie.title}`})`
              }}
            >
            </div>
            <div className="absolute inset-0 flex justify-center items-center text-center p-4">
              <div className="flex flex-col">
                <h2 className="text-4xl font-bold mb-2">{movie.title}</h2>
                <p className="text-xl mb-4">{movie.year} • {movie.genre}</p>

                <Link href={MOVIE+"/"+movie.slug} className="bg-orange-500 text-white px-6 py-2 rounded-full hover:bg-orange-600 transition-colors">
                  Download Now

                </Link>
              </div>
            </div>

          </div>
        ))}
      </div>
      <button
        className="absolute top-1/2 left-4 transform -translate-y-1/2 bg-black bg-opacity-50 text-white p-2 rounded-full"
        onClick={() => handleScroll('left')}
      >
        ◀
      </button>
      <button
        className="absolute top-1/2 right-4 transform -translate-y-1/2 bg-black bg-opacity-50 text-white p-2 rounded-full"
        onClick={() => handleScroll('right')}
      >
        ▶
      </button>
    </div>
  )
}

