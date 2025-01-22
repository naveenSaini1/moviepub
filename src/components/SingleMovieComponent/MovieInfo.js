import React from "react"
import { Star } from "lucide-react"

export function MovieInfo({genres=[],cast="",languages=[]}) {
   

  return (
    <div className="space-y-6">
      <div className="space-y-4">
        <div className="flex items-center gap-3">
          <div className="flex items-center gap-2 bg-orange-500/10 px-4 py-2 rounded-full">
            <Star className="w-6 h-6 text-orange-500 fill-orange-500" />
            <span className="text-2xl font-bold text-orange-500">0.0</span>
          </div>
          <span className="px-4 py-2 bg-gray-800 rounded-full text-sm">IMDb Rating</span>
        </div>

        <div className="grid gap-3">
          <InfoRow label="Genre" value={(genres)?genres.map(gen => gen.name).join(' | '):"NA"} />
          <InfoRow label="Director" value="Na" />
          <InfoRow
            label="Language"
            value={(languages)? languages.map(lan => lan.name).join(' | ') :"Na"}
          />
          
        </div>
      </div>

      <div className="grid gap-4">
        <h3 className="text-lg font-semibold">Cast</h3>
        <div className="grid grid-cols-2 md:grid-cols-3 gap-4">
        {cast && cast.split(",").map((actor) => (
            <div key={actor} className="bg-gray-800/50 rounded-lg p-4 hover:bg-orange-900/20 transition-colors">
              <div className="font-medium text-orange-400">{actor}</div>
              
            </div>
          ))}
        </div>
      </div>
    </div>
  )
}

function InfoRow({ label, value }) {
  return (
    <div className="flex gap-2 items-center">
      <span className="text-gray-400 min-w-[80px]">{label}:</span>
      <span className="flex gap-2">{value}</span>
    </div>
  )
}

