"use client"
import { COLLECTIONS, GENRES, SEARCH } from "@/constants/baseConstants";
import Link from "next/link";
import { useRef, useState } from "react";
import { useRouter } from 'next/navigation';

export default function Sidebar() {
  const inputRef=useRef();
  const router = useRouter()


  const submitSearch=()=>{
    if(inputRef.current.value.trim()!=""){

      router.push(SEARCH + "/" + inputRef.current.value); // Redirect to the search URL
      console.log("search bar is open",inputRef.current.value);

    }
  }

  return (
    <div className="w-full md:w-72">
      <div className="bg-zinc-800 p-4 rounded-lg">
        <h2 className="text-xl font-bold mb-4">🔍 Search Here !!</h2>
        <div className="flex mb-4 w-[100%]">
          <input 
          ref={inputRef}
            type="search"
            placeholder="Search movies..."
            className="flex-grow p-2 w-[70%] rounded-l bg-zinc-700 text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-orange-500"
          />
          <button
          onClick={submitSearch}
            className="bg-orange-500 w-[30%] text-white px-4 py-2 rounded-r hover:bg-orange-600 transition-colors"
            aria-label="Search"
          >
            🔍
          </button>
        </div>
        <div className="flex flex-wrap gap-2">
          <Link href={COLLECTIONS+"/"+"Latest"} className="bg-zinc-700 text-white px-3 py-1 rounded-full text-sm hover:bg-orange-500 transition-colors">
            Latest
          </Link>
          <Link href={COLLECTIONS+"/"+"Popular"} className="bg-zinc-700 text-white px-3 py-1 rounded-full text-sm hover:bg-orange-500 transition-colors">
            Popular
          </Link>
          <Link href={GENRES+"/"+"Action"} className="bg-zinc-700 text-white px-3 py-1 rounded-full text-sm hover:bg-orange-500 transition-colors">
            Action
          </Link>
          <Link href={GENRES+"/"+"Comedy"} className="bg-zinc-700 text-white px-3 py-1 rounded-full text-sm hover:bg-orange-500 transition-colors">
            Comedy
          </Link>
          <Link href={GENRES+"/"+"Drama"} className="bg-zinc-700 text-white px-3 py-1 rounded-full text-sm hover:bg-orange-500 transition-colors">
            Drama
          </Link>
        </div>
      </div>
    </div>
  )
}

