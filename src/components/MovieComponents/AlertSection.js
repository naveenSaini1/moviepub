import Link from 'next/link'

export default function AlertSection() {
  return (
    <div className="bg-zinc-800 p-4 text-center text-sm">
      <p className="text-yellow-400">
        ⚠️ Alert! Nowadays there are FAKE Copies of MoviePub on google, Kindly AVOID them and Always use
        <span className="text-blue-400"> moviepub.xyz </span>
        for Genuine and Secure Download. Follow our Official
        <Link href="/telegram" className="text-blue-400 hover:underline">
          {' '}
          TelegramChannel
        </Link>
        <span className="text-yellow-400"> For More Updates.</span>
      </p>
    </div>
  )
}

