import { DISCLAIMER, MOVIE_REQEUST } from '@/constants/baseConstants'
import Link from 'next/link'

export default function Footer() {
  return (
    <footer className="bg-zinc-900 text-center py-4">
      <p>2025 © <Link href="/" className="text-blue-400 hover:underline">moviepub.xyz</Link> | All Rights Reserved.</p>
      <div className="mt-2">
        <Link href={DISCLAIMER} className="text-blue-400 hover:underline mr-4">Disclaimer</Link>
        <Link href="/" className="text-blue-400 hover:underline mr-4">Join Our Group !</Link>
        <Link href="/" className="text-blue-400 hover:underline mr-4">How To Download ?</Link>
        <Link href={MOVIE_REQEUST} className="text-blue-400 hover:underline">Movie Request Page</Link>
      </div>
    </footer>
  )
}

