import { MOVIE } from '@/constants/baseConstants';
import { endpoints, IMAGE_URL } from '@/constants/UrlConstants';
import MoviesContextApi from '@/contextApi/MoviesContextApi';
import fetchApi from '@/utils/FetchApi';
import Image from 'next/image'
import Link from 'next/link';
import { useContext, useEffect, useState } from 'react';



export default function Movies({data}) {
 

 

  return (
    <div className="flex-1">
      <h2 className="text-xl font-bold mb-4 flex items-center gap-2">
        <span className="text-orange-500">🔥</span> Movies
      </h2>
      <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
  {data.map((movie) => (
    <Link 
      href={MOVIE+"/"+movie.slug} 
      key={movie.title} 
      className="group bg-zinc-900 rounded-lg overflow-hidden hover:scale-105 transition-transform duration-300 flex flex-col shadow-lg hover:shadow-xl border border-zinc-800"
    >
      {/* Image container - compact and professional */}
      <div className="relative aspect-[3/4]">
        <Image
          src={`${movie.imageurl ? `${IMAGE_URL}/${movie.imageurl}` : `/placeholder.svg?height=1080&width=1920&text=${movie.title}`}`}
          alt={movie.title}
          fill={true}
          sizes="(max-width: 768px) 50vw, (max-width: 1024px) 33vw, 25vw"
          className="object-cover transition-opacity group-hover:opacity-90"
          quality={80}
        />
      </div>
      
      {/* Text content - compact and fully visible */}
      <div className="p-2.5 flex flex-col flex-grow space-y-1.5">
        <h3 className="text-sm font-semibold text-white line-clamp-2 leading-tight">
          {movie.title}
        </h3>
        <div className="flex items-center text-xs text-zinc-400 space-x-1.5">
          <span className="bg-zinc-800/50 px-1.5 py-0.5 rounded">
            {movie.year}
          </span>
          <span>•</span>
          {/* Colorful genre tags - fully visible and professional */}
          <div className="flex flex-wrap gap-1">
            {movie.genre.split(',').slice(0, 2).map((genre, index) => (
              <span 
                key={index}
                className={`px-1.5 py-0.5 rounded ${
                  index % 3 === 0 ? 'bg-blue-500/20 text-blue-300' :
                  index % 3 === 1 ? 'bg-purple-500/20 text-purple-300' :
                  'bg-rose-500/20 text-rose-300'
                }`}
              >
                {genre.trim()}
              </span>
            ))}
            {movie.genre.split(',').length > 2 && (
              <span className="bg-zinc-800/50 text-zinc-400 px-1.5 py-0.5 rounded">
                +{movie.genre.split(',').length - 2}
              </span>
            )}
          </div>
        </div>
      </div>
    </Link>
  ))}
</div>
    </div>
  )
}

