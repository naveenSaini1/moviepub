import CategoreisComp from "@/components/CategoreisComp";
import { endpoints } from "@/constants/UrlConstants";


export default async function  Home({params,searchParams}) {
  const { lang } = await params;
  const { page } = await searchParams;
  const decodedCollection = lang ? decodeURIComponent(lang) : '';
  console.log(decodedCollection," hhh ", page);
  return (

    <div className="">
    
    <CategoreisComp page={page} pageName={decodedCollection} moviesLink={endpoints.public.getTheMoviesByLanguages} countLink={endpoints.public.getTheTotalCountOfLangaugesMovies}/>
    </div>
  );
}
