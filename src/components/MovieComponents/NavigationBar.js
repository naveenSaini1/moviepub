"use client"
import { COLLECTIONS, GENRES, LANGUAGES, YEARS } from '@/constants/baseConstants'
import { endpoints } from '@/constants/UrlConstants';
import Link from 'next/link'
import { useEffect, useState } from 'react';

export default function NavigationBar() {
  const [categories, setCategories] = useState([]);
  const [collections, setCollections] = useState([]);
  const [years, setYears] = useState([]);
  const [languages, setLanguages] = useState([]);

  useEffect(() => {
    const abortController = new AbortController();
    const signal = abortController.signal;

    const fetchWithAbort = async (url, setter) => {
      try {
        const response = await fetch(url, { signal });
        const data = await response.json();
        setter(data);
      } catch (error) {
        if (error.name !== 'AbortError') {
          console.error('Fetch error:', error);
        }
      }
    };

    fetchWithAbort(`${endpoints.public.genres}/1`, setCategories);
    fetchWithAbort(`${endpoints.public.collections}/1`, setCollections);
    fetchWithAbort(`${endpoints.public.years}/1`, setYears);
    fetchWithAbort(`${endpoints.public.languages}/1`, setLanguages);

    return () => abortController.abort(); // Cleanup function to abort ongoing fetch requests
  }, []);


  return (
    <nav className="bg-zinc-900 p-4 flex flex-wrap gap-4 justify-center items-center">

      <Link href={COLLECTIONS + "/bollywood"} className="hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold">
        BollyWood
      </Link>
      <Link href={COLLECTIONS + "/hollywood"} className="hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold">
        HollyWood
      </Link>
      <Link href={LANGUAGES + "/dubbed"} className="hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold">
        Hindi Dubbed
      </Link>
      <Link href={COLLECTIONS + "/south"} className="hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold">
        South Hindi Dubs
      </Link>
      <Link href={COLLECTIONS + "/series"} className="hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold">
        Web Series
      </Link>
      <Link href={COLLECTIONS + "/18"} className="hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold">
        18+
      </Link>
      {/* genres */}
      <div className="relative group">
        <button className="hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold">
          GENRES ▼
        </button>
        <div className="absolute hidden group-hover:block w-48 bg-zinc-800 p-2 rounded-md z-50">

          {
            categories.map((gen) => {
              return (
              
                  <Link key={gen.genreId} href={GENRES + "/" + gen.name} className="block p-2 hover:bg-zinc-700">
                    {gen.name}
                  </Link>

               
              )
            })
          }

        </div>
      </div>
      {/* year  */}

      <div className="relative group">
        <button className="hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold">
          Year ▼
        </button>
        <div className="absolute hidden group-hover:block w-48 bg-zinc-800 p-2 rounded-md z-50">
          {
            years.map((year) => {
              return (
              

                  <Link key={year.yearId} href={YEARS + "/" + year.name} className="block p-2 hover:bg-zinc-700">
                    {year.name}
                  </Link>
             
              )
            })
          }



        </div>
      </div>
      {/* Collections  */}
      <div className="relative group">
        <button className="hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold">
          Collections ▼
        </button>
        <div className="absolute hidden group-hover:block w-48 bg-zinc-800 p-2 rounded-md z-50">
          {
            collections.map((collection) => {
              return (
              <Link key={collection.collectionsId} href={COLLECTIONS + "/" + collection.name} className="block p-2 hover:bg-zinc-700">
                {collection.name}
              </Link>
              )
            })
          }


        </div>
      </div>
      {/* Langauges */}
      <div className="relative group">
        <button className="hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold">
          Languages ▼
        </button>
        <div className="absolute hidden group-hover:block w-48 bg-zinc-800 p-2 rounded-md z-50">
          {
            languages.map((lang) => {
              return (
               <li key={lang.languagesId} className='list-none '>
                  <Link  href={LANGUAGES+"/"+lang.name} className="block p-2 hover:bg-zinc-700">
                    {lang.name}
                  </Link>
                  </li>

              )
            })
          }


        </div>
      </div>
    </nav>
  )
}

