import { PLATFORM_URL } from "@/constants/baseConstants";

export default function robots() {
    return {
      rules: {
        userAgent: '*',
        allow: '/',
        disallow: '/movie/admin/',
      },
      sitemap: `${PLATFORM_URL}/sitemap.xml`,
    }
  }