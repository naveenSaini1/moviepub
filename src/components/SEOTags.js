import Link from "next/link"

export default function SEOTags() {
  const movieCategories = [
    "Action",
    "Comedy",
    "Drama",
    "Sci-Fi",
    "Horror",
    "Romance",
    "Thriller",
    "Animation",
    "Adventure",
    "Fantasy",
  ]

  const popularKeywords = [
    "Latest Movies",
    "Bollywood",
    "Hollywood",
    "Hindi Dubbed",
    "South Indian Movies",
    "Web Series",
    "4K Movies",
    "1080p Movies",
    "720p Movies",
    "300MB Movies",
  ]

  return (
    <div className="bg-zinc-900 text-white py-8 px-4">
      <div className="container mx-auto">
        <h2 className="text-2xl font-bold mb-6">Explore Movies</h2>

        <div className="mb-8">
          <h3 className="text-xl font-semibold mb-4">Popular Categories</h3>
          <div className="flex flex-wrap gap-2">
            {movieCategories.map((category, index) => (
              <Link
                key={index}
                href={`/category/${category.toLowerCase()}`}
                className="bg-zinc-800 hover:bg-orange-500 text-white px-3 py-1 rounded-full text-sm transition-colors"
              >
                {category}
              </Link>
            ))}
          </div>
        </div>

        <div className="mb-8">
          <h3 className="text-xl font-semibold mb-4">Popular Keywords</h3>
          <div className="flex flex-wrap gap-2">
            {popularKeywords.map((keyword, index) => (
              <Link
                key={index}
                href={`/search?q=${encodeURIComponent(keyword)}`}
                className="bg-zinc-800 hover:bg-orange-500 text-white px-3 py-1 rounded-full text-sm transition-colors"
              >
                {keyword}
              </Link>
            ))}
          </div>
        </div>

        <div className="mb-8">
          <h3 className="text-xl font-semibold mb-4">Keywords</h3>
          <p className="text-gray-300">
          bolly4u,bolly4u org,bolly4u.,bolly4u trade,bolly4u movie,bolly4u movies,bolly4u hub,bolly4u website,bolly4u la movies,bolly4u. us,bolly4u buzz,bolly4u fit,bolly4u 2023,bolly4u cc,bolly4u app,bolly4u. com,bolly4u guru,vegamovies bolly4u,bolly4u life,vegamovies,vegamovies nl,vegamovies in,vegamovies 2.0,vegamovies,hdhub4u,vegamovies.,vegamovies 4k,vegamovies download,vegamovies anime,vegamovies .com,vegamovies apk,vegamovies com,vegamovies hub,vegamovies. nl,vegamovies. in,vegamovies. cs,vegamovies. com,vegamovies 3,vegamovies nz,vegamovies south,hubflix,hubflix hdmovieshub,hubflix hd,hubflix 4u,hubflix in,hubflix download,hubflix movies,hubflix movie,hd movies hubflix,hubflix movie download,hdmovieshub hubflix,hubflix hindi,hubflix com,hubflix Bollywood,hubflix hdmovieshub hindi dubbed,hubflix .com,movies hubflix,hubflix 4u movies download,movie hubflix,uhdmovies,uhdmovies 4k,uhdmovies.,uhdmovies us,uhdmovies org,uhdmovies 2,uhdmovies. in,uhdmovies com,uhdmovies xyz,uhdmovies - 4k & uhd,uhdmovies anime,uhdmovies Bollywood,uhdmovies site,uhdmovies cc,uhdmovies in,uhdmovies download,uhdmovies dev,uhdmovies tel,4k uhdmovies,movieflix,movieflix Hollywood,the movieflix,movieflix - free movies,movieflix pro,movieflix hub,movieflix Bollywood,movieflix apk,movieflix.,movieflix pro.in,movieflix .com,movieflix app,movieflix 4u,movieflix. com,movieflix free,movieflix hindi,movieflix movie download,movieflix hq,movieflix download,movieflix 300,filmyzilla,mp4moviez in filmyzilla,filmyzilla in,filmyzilla 2023,filmyzilla 2024,filmyzilla xyz,mp4moviez filmyzilla,filmyzilla .com,filmyzilla movies4u,filmyzilla movie,filmyzilla movie download,filmyzilla mp4moviez,filmyzilla Bollywood,filmyfly filmyzilla
          </p>
        </div>

        <div>
          <h3 className="text-xl font-semibold mb-4 ">About MoviePUB</h3>
          <p className="text-gray-300">
            MoviePUB is your ultimate destination for high-quality movie downloads. We offer a vast collection of
            Bollywood, Hollywood, and South Indian movies, along with the latest web series. Our platform provides
            various quality options including 4K, 1080p, 720p, and compressed 300MB versions to suit your needs. Explore
            our extensive library of Hindi dubbed movies, dual audio releases, and exclusive content. Start your
            cinematic journey with MoviePUB today!
          </p>
        </div>
      </div>
    </div>
  )
}

