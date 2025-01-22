import CategoreisComp from "@/components/CategoreisComp";
import { endpoints } from "@/constants/UrlConstants";



export default async function  Home({params,searchParams}) {
  const { genre } = await params;
  const { page } = await searchParams;
  const decodedCollection = genre ? decodeURIComponent(genre) : '';
  console.log(decodedCollection," hhh ", page);
  return (

    <div className="">
    
    <CategoreisComp page={page} pageName={decodedCollection} moviesLink={endpoints.public.getTheMoviesByGenres} countLink={endpoints.public.getTheTotalCountOfGenreMovies}/>
    </div>
  );
}
