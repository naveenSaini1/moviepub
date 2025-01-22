import { DISCLAIMER, MOVIE_REQEUST, PLATFORM_NAME } from '@/constants/baseConstants'
import Link from 'next/link'

export default function MovieHeader() {
  return (
    <header className="bg-black py-4 px-6 flex flex-col md:flex-row justify-between items-center gap-4">
      <div className="flex items-center ">
        <Link href="/" className="text-2xl font-bold text-orange-500">
          {"Movie"}<span className="text-red-500">PUB</span>
        </Link>
      </div>
      <nav className="flex flex-wrap justify-center gap-8 ">
        <Link href={DISCLAIMER} className="hover:text-orange-500 transition-colors bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold"> 
          Disclaimer
        </Link>
       
        <Link href="/" className="hover:text-orange-500 transition-colors bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold">
          How To Download ?
        </Link>
        <Link href="/" className="hover:text-orange-500 transition-colors bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold">
          Join Our Group !
        </Link>
        <Link href={MOVIE_REQEUST} className="hover:text-orange-500 transition-colors bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold">
          Movie Request Page
        </Link>
      </nav>
    </header>
  )
}

