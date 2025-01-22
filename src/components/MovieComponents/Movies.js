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
        <span className="text-orange-500">🔥</span> Latest Releases
      </h2>
      <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
        {data.map((movie) => (
          <Link href={MOVIE+"/"+movie.slug} key={movie.title} className="bg-zinc-800 rounded-lg overflow-hidden hover:scale-105  flex flex-col justify-between transition-transform">
            <Image
              src={`${movie.imageurl ? `${IMAGE_URL}/${movie.imageurl}` : `/placeholder.svg?height=1080&width=1920&text=${movie.title}`}`}
              alt={movie.title}
              width={200}
              height={300}
              className="w-full object-cover"
            />
            <div className="p-2">
              <h3 className="text-sm font-semibold">{movie.title}</h3>
              <p className="text-xs text-gray-400">{movie.year} • {movie.genre}</p>
            </div>
          </Link>
        ))}
      </div>
    </div>
  )
}

