"use client"
import React, { useState } from "react"
import { Send, Film } from "lucide-react"
import { endpoints } from "@/constants/UrlConstants"
import fetchApi from "@/utils/FetchApi"

export default function MovieRequest() {
  const [email, setEmail] = useState("")
  const [message, setMessage] = useState("")
  const [isSubmitted, setIsSubmitted] = useState(false)

  const handleSubmit = async (e) => {
    e.preventDefault()
    // Here you would typically send the data to your backend
    console.log("Form submitted:", { email, message })
   await fetchApi(`${endpoints.public.createAMovieRequest}/${email}/${message}`,'POST')
    setIsSubmitted(true)
    // Reset form after submission
    setEmail("")
    setMessage("")
    // Reset submission status after 5 seconds
    setTimeout(() => setIsSubmitted(false), 5000)
  }

  return (
    <div className="min-h-screen w-[100%] bg-gray-900 text-gray-100 py-12 px-4 sm:px-6 lg:px-8">
      <div className="max-w-md mx-auto">
        <div className="text-center mb-8">
          <h1 className="text-3xl font-bold text-orange-500 mb-2">Request a Movie</h1>
          <p className="text-gray-300">Let us know what movie you'd like to see!</p>
        </div>

        <form onSubmit={handleSubmit} className="space-y-6 bg-gray-800 p-6 rounded-lg shadow-lg">
          <div>
            <label htmlFor="email" className="block text-sm font-medium text-gray-300 mb-2">
              Email <span className="text-orange-500">*</span>
            </label>
            <input
              type="email"
              id="email"
              required
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              className="w-full px-3 py-2 bg-gray-700 border border-gray-600 rounded-md text-white focus:outline-none focus:ring-2 focus:ring-orange-500"
              placeholder="Your email address"
            />
          </div>

          <div>
            <label htmlFor="message" className="block text-sm font-medium text-gray-300 mb-2">
              Movie Request <span className="text-orange-500">*</span>
            </label>
            <textarea
              id="message"
              required
              value={message}
              onChange={(e) => setMessage(e.target.value)}
              rows="4"
              className="w-full px-3 py-2 bg-gray-700 border border-gray-600 rounded-md text-white focus:outline-none focus:ring-2 focus:ring-orange-500"
              placeholder="Enter the movie title and any additional details..."
            ></textarea>
          </div>

          <div className="flex items-center justify-between">
            <button
              type="submit"
              className="flex items-center justify-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-white bg-orange-600 hover:bg-orange-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-orange-500 transition-colors duration-200"
            >
              <Send className="w-4 h-4 mr-2" />
              Submit Request
            </button>
            {isSubmitted && (
              <p className="text-green-400 flex items-center text-sm">
                <Film className="w-4 h-4 mr-2" />
                Request sent!
              </p>
            )}
          </div>
        </form>
      </div>
    </div>
  )
}

