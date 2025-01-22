import React, { useState } from "react"
import { Download, Play, Zap, Heart, Share2 } from "lucide-react"
import Link from "next/link"

export function DownloadSection({links=[]}) {
  const [likesCount, setLikesCount] = useState(1024)

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <h2 className="text-xl font-bold flex items-center gap-2">
          <Zap className="w-5 h-5 text-orange-500" />
          Download Links
        </h2>
        <div className="flex items-center gap-4">
          <button
            onClick={() => setLikesCount((prev) => prev + 1)}
            className="flex items-center gap-2 bg-orange-500/10 hover:bg-orange-500/20 text-orange-500 px-3 py-1 rounded-full transition-colors"
          >
            <Heart className="w-4 h-4" />
            <span>{likesCount}</span>
          </button>
          <button className="bg-gray-800 hover:bg-gray-700 p-2 rounded-full transition-colors">
            <Share2 className="w-4 h-4" />
          </button>
          <span className="text-sm bg-orange-500/10 text-orange-500 px-3 py-1 rounded-full">Premium Quality</span>
        </div>
      </div>

      <div className="grid gap-3">
        {links && links.map((option) => (
          <Link
            key={option.name}
            href={option.url}
            className="flex items-center justify-between bg-gray-800/50 hover:bg-orange-900/20 transition-colors rounded-lg p-4 group"
          >
            <span className="flex items-center gap-2">
              <Download className="w-5 h-5 text-orange-500 group-hover:text-orange-400" />
              {option.name}
              {<span className="bg-orange-500 px-2 py-0.5 rounded-full text-xs">HOT</span>}
            </span>
            <span href={option.url} className="text-orange-400 group-hover:text-orange-300">Download</span>
          </Link>
        ))}
      </div>

      <button className="w-full bg-orange-600 hover:bg-orange-700 transition-colors rounded-lg p-4 flex items-center justify-center gap-2 font-medium">
        <Play className="w-5 h-5" />
        Watch Online (Comming Soon)
      </button>
    </div>
  )
}

