import { useEffect, useState } from "react"
import Link from 'next/link'
import { ArrowLeft } from 'lucide-react'
import CreateMovie from './CreateMovieArea'
import CreateGenreArea from './CreateGenreArea'
import ManageMovies from './ManageMoviesArea'

export default function AdminMainSubComp() {
   const [activeSection, setActiveSection] = useState('createMovie')
  
  
 
  
    return (
      <div className="min-h-screen flex bg-gray-100">
        {/* Sidebar */}
        <div className="w-64 bg-blue-800 text-white p-6">
          <h2 className="text-2xl font-bold mb-6">Admin Dashboard</h2>
          <ul className="space-y-4">
            <li>
              <button
                onClick={() => setActiveSection('createMovie')}
                className={`w-full text-left p-2 rounded-md ${activeSection === 'createMovie' ? 'bg-blue-700' : 'hover:bg-blue-600'}`}
              >
                Create Movie
              </button>
            </li>
            <li>
              <button
                onClick={() => setActiveSection('createCategory')}
                className={`w-full text-left p-2 rounded-md ${activeSection === 'createCategory' ? 'bg-blue-700' : 'hover:bg-blue-600'}`}
              >
                Manage Others
              </button>
            </li>
            <li>
              <button
                onClick={() => setActiveSection('manageMovies')}
                className={`w-full text-left p-2 rounded-md ${activeSection === 'manageMovies' ? 'bg-blue-700' : 'hover:bg-blue-600'}`}
              >
                Manage Movies
              </button>
            </li>
          </ul>
        </div>
  
        {/* Main Content Area */}
        <div className="flex-1 p-6">
          {/* Back to Home Button */}
          <Link href="/" className="inline-flex items-center text-blue-600 hover:text-blue-800 mb-6">
            <ArrowLeft className="mr-2" size={20} />
            Back to Home
          </Link>
  
          {/* Conditional content based on active section */}
          {activeSection === 'createMovie' && (
            <div className="bg-white rounded-lg shadow-md p-6">
              <h2 className="text-2xl font-bold text-gray-800 mb-4">Create Movie</h2>
              {/* Your Create Movie form content here */}
              <CreateMovie/>
            </div>
          )}
  
          {activeSection === 'createCategory' && (
            <div className="bg-white rounded-lg shadow-md p-6">
              <h2 className="text-2xl font-bold text-gray-800 mb-4">Create Category</h2>
              {/* Your Create Category form content here */}
              <CreateGenreArea/>
            </div>
          )}
  
          {activeSection === 'manageMovies' && (
            <div className="bg-white rounded-lg shadow-md p-6">
              <h2 className="text-2xl font-bold text-gray-800 mb-4">Manage Movies</h2>
              {/* Your Manage Movies section content here */}
              <ManageMovies/>
            </div>
          )}
        </div>
      </div>
    )
  }
  