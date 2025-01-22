"use client"
import Link from "next/link"
import { Film, Home, Search } from "lucide-react"

export default function NotFoundPage() {
  return (
    <div className="min-h-screen bg-gray-900 text-gray-100 flex flex-col justify-center items-center px-4">
      <div className="text-center">
        <Film className="w-24 h-24 text-orange-500 mx-auto mb-8" />
        <h1 className="text-5xl font-bold text-orange-500 mb-4">404</h1>
        <h2 className="text-3xl font-semibold mb-6">Page Not Found</h2>
        <p className="text-xl text-gray-300 mb-8">Oops! The page you're looking for doesn't exist.</p>

        <div className="flex flex-col sm:flex-row justify-center gap-4">
          <Link
            href="/"
            className="inline-flex items-center justify-center px-6 py-3 border border-transparent text-base font-medium rounded-md text-white bg-orange-600 hover:bg-orange-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-orange-500 transition-colors duration-200"
          >
            <Home className="w-5 h-5 mr-2" />
            Go Home
          </Link>
          <Link
            href="/search"
            className="inline-flex items-center justify-center px-6 py-3 border border-orange-500 text-base font-medium rounded-md text-orange-500 bg-transparent hover:bg-orange-500 hover:text-white focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-orange-500 transition-colors duration-200"
          >
            <Search className="w-5 h-5 mr-2" />
            Search Movies
          </Link>
        </div>
      </div>

    
    </div>
  )
}

