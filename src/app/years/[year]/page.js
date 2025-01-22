import CategoreisComp from "@/components/CategoreisComp";
import { endpoints } from "@/constants/UrlConstants";


export default async function  Home({params,searchParams}) {
  const { year } = await params;
  const { page } = await searchParams;
  const decodedCollection = year ? decodeURIComponent(year) : '';
  console.log(decodedCollection," hhh ", page);
  return (

    <div className="">
    
    <CategoreisComp page={page} pageName={decodedCollection} moviesLink={endpoints.public.getTheMoviesByYears} countLink={endpoints.public.getTheTotalCountOfYearsMovies}/>
    </div>
  );
}
