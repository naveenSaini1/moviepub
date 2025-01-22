import { COLLECTIONS, DISCLAIMER, GENRES, LANGUAGES, MOVIE, MOVIE_REQEUST, PLATFORM_URL, SEARCH, YEARS } from "@/constants/baseConstants";
import { endpoints } from "@/constants/UrlConstants";
import fetchApi from "@/utils/FetchApi";

export default async function  sitemap() {
    let data = await fetchApi(endpoints.public.getAllTheMoviesSlug, 'GET')
    let collection = await fetchApi(endpoints.public.collections+"/"+1, 'GET')
    let genres = await fetchApi(endpoints.public.genres+"/"+1, 'GET')
    let language = await fetchApi(endpoints.public.languages+"/"+1, 'GET')
    let years = await fetchApi(endpoints.public.years+"/"+1, 'GET')
    return (
        [
            {url:PLATFORM_URL+MOVIE, changefreq: 'daily', priority: 1},
            {url:PLATFORM_URL+DISCLAIMER, changefreq: 'daily', priority: 1},
            {url:PLATFORM_URL+MOVIE_REQEUST, changefreq: 'daily', priority: 1},
            {url:PLATFORM_URL+SEARCH, changefreq: 'daily', priority: 1},
            ...collection.map(({name})=>({
                url:PLATFORM_URL+`${COLLECTIONS}/`+name,
                changefreq: 'daily',
                priority: 0.9
            })),
            ...genres.map(({name})=>({
                url:PLATFORM_URL+`${GENRES}/`+name,
                changefreq: 'daily',
                priority: 0.9
            })),
            ...language.map(({name})=>({
                url:PLATFORM_URL+`${LANGUAGES}/`+name,
                changefreq: 'daily',
                priority: 0.9
            })),
            ...years.map(({name})=>({
                url:PLATFORM_URL+`${YEARS}/`+name,
                changefreq: 'daily',
                priority: 0.9
            })
            ),
            ...data.map(({slug})=>({
                url:PLATFORM_URL+`${MOVIE}/`+slug,
                changefreq: 'daily',
                priority: 0.9
            }))

        ]
    )


}