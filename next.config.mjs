/** @type {import('next').NextConfig} */
const nextConfig = {
    output: 'standalone',
    images: {
        domains: ['localhost',"app.moviepub.xyz"],
    },
};

export default nextConfig;
