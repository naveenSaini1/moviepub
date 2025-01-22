import React from "react"
import Image from "next/image"
import { IMAGE_URL } from "@/constants/UrlConstants"

export function MoviePoster({image,title=""}) {
  return (
    <div className="relative aspect-[2/3] rounded-xl overflow-hidden group">
      <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-transparent to-transparent z-10" />
      <Image
        src={`${IMAGE_URL}/${image}`}
        alt={title}
        fill
        className="object-cover transition-transform duration-500 group-hover:scale-105"
        priority
      />
      <div className="absolute bottom-0 left-0 right-0 p-4 z-20">
        <div className="inline-flex px-3 py-1 bg-orange-500 rounded-full text-sm font-medium">Featured</div>
      </div>
    </div>
  )
}

