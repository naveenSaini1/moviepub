import CategoreisComp from "@/components/CategoreisComp";
import { endpoints } from "@/constants/UrlConstants";


export default async function  Home({params,searchParams}) {
  const { query } = await params;
  const { page } = await searchParams;
  const decodedCollection = query ? decodeURIComponent(query) : '';
  console.log(decodedCollection," hhh ", page);
  return (

    <div className="">
    
    <CategoreisComp page={page} pageName={decodedCollection} moviesLink={endpoints.public.searchMovies} countLink={endpoints.public.getTheTotalPagesOfSearches}/>
    </div>
  );
}
