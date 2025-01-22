import Link from "next/link"
import React from "react"

export function MovieDescription({smallDescription,bigDescription,keywords=""}) {
  return (
    <div className="space-y-8">
      <div className="space-y-4">
        <h2 className="text-2xl font-bold flex items-center gap-2">
          <span className="w-8 h-1 bg-orange-500 rounded-full" />
          Small Description
        </h2>
        <p className="text-gray-300 leading-relaxed">
       {smallDescription}
        </p>
      </div>

      <div className="space-y-4">
        <h2 className="text-2xl font-bold flex items-center gap-2">
          <span className="w-8 h-1 bg-orange-500 rounded-full" />
          Big Description
        </h2>
        <div className="text-gray-300 leading-relaxed space-y-4">
          <p>
            {bigDescription}
         </p>
          
        </div>
        
      </div>

      <div className="space-y-4">
        <h2 className="text-2xl font-bold flex items-center gap-2">
          <span className="w-8 h-1 bg-orange-500 rounded-full" />
          Keywords
        </h2>
        <div className="text-gray-300 leading-relaxed space-y-4">
          <p>
          {keywords.split(",").map((tag) => (
            <Link
              key={tag}
              href={"/"}
              className="bg-gray-800 hover:bg-orange-900/30 transition-colors px-3 py-1 rounded-full cursor-pointer"
            >
              {tag}
            </Link>
          ))}
         </p>
          
        </div>
        
      </div>

     
    </div>
  )
}

