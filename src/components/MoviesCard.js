import Image from 'next/image'
import Link from 'next/link'

export default function MovieCard({ movie }) {
  return (
    <Link href={`/movie/${movie.id}`} className="bg-white rounded-lg shadow-md overflow-hidden transition-transform hover:scale-105">
      <Image
        src={movie.imageUrl}
        alt={movie.title}
        width={300}
        height={400}
        className="w-full h-64 object-cover"
      />
      <div className="p-4">
        <h3 className="font-bold text-lg mb-1 truncate">{movie.title}</h3>
        <p className="text-sm text-gray-600">{movie.year} • {movie.genre}</p>
      </div>
    </Link>
  )
}
