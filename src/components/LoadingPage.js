"use client"
import React from "react"
import { Loader2 } from "lucide-react"

export default function LoadingPage() {
  return (
    <div className="min-h-screen bg-gray-900 flex flex-col justify-center items-center">
      <div className="text-center">
        <h1 className="text-3xl font-bold text-white mb-2">Loading</h1>
        <p className="text-gray-400 text-lg">Please wait while we fetch your content</p>
      </div>

      <div className="mt-12 w-64 bg-gray-800 rounded-full h-2.5">
        <div className="bg-orange-500 h-2.5 rounded-full animate-pulse" style={{ width: "70%" }}></div>
      </div>

      <div className="mt-8 flex space-x-2">
        {[0, 1, 2].map((i) => (
          <div
            key={i}
            className="w-3 h-3 bg-orange-500 rounded-full animate-bounce"
            style={{ animationDelay: `${i * 0.1}s` }}
          ></div>
        ))}
      </div>

      <div className="mt-12 text-gray-500 text-sm">
        <p>If this takes too long, please refresh the page</p>
      </div>
    </div>
  )
}

