import React from "react"
import { CalendarDays } from "lucide-react"
import Link from "next/link"
import { COLLECTIONS, GENRES, LANGUAGES, YEARS } from "@/constants/baseConstants"

export function MovieHeader({downLoadName,title,relaseDate,genres=[],collections=[],languages=[],year=[]}) {
  return (
    <header className="bg-gradient-to-b from-gray-900 to-black p-4 lg:p-6 border-b border-orange-900/20">
      <div className="max-w-7xl mx-auto">
        <h1 className="text-2xl lg:text-4xl font-bold mb-4 bg-gradient-to-r from-orange-500 to-orange-300 bg-clip-text text-transparent">
        {downLoadName}
        </h1>
        <h3 className="text-xl lg:text-2xl font-bold mb-4 bg-gradient-to-r from-orange-500 to-orange-300 bg-clip-text text-transparent">
            {title}
        </h3>
        <div className="flex flex-wrap gap-2 text-sm">
          <span className="bg-orange-600 px-3 py-1 rounded-full flex items-center gap-2">
            <CalendarDays className="w-4 h-4" />
            {relaseDate}
          </span>
          {genres.map((tag) => (
            <Link
              href={GENRES+"/"+tag.name}
              key={tag.name}
              className="bg-gray-800 hover:bg-orange-900/30 transition-colors px-3 py-1 rounded-full cursor-pointer"
            >
              {tag.name}
            </Link>
          ))}
          {collections.map((tag) => (
            <Link
              key={tag.name}
              href={COLLECTIONS+"/"+tag.name}
              className="bg-gray-800 hover:bg-orange-900/30 transition-colors px-3 py-1 rounded-full cursor-pointer"
            >
              {tag.name}
            </Link>
          ))}
          {languages.map((tag) => (
            <Link
            href={LANGUAGES+"/"+tag.name}
              key={tag.name}
              className="bg-gray-800 hover:bg-orange-900/30 transition-colors px-3 py-1 rounded-full cursor-pointer"
            >
              {tag.name}
            </Link>
          ))}
          {year.map((tag) => (
            <Link
            href={YEARS+"/"+tag.name}
              key={tag.name}
              className="bg-gray-800 hover:bg-orange-900/30 transition-colors px-3 py-1 rounded-full cursor-pointer"
            >
              {tag.name}
            </Link>
          ))}
        </div>
      </div>
    </header>
  )
}

