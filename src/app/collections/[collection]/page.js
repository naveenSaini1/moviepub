import CategoreisComp from "@/components/CategoreisComp";
import { endpoints } from "@/constants/UrlConstants";
import fetchApi from "@/utils/FetchApi";

// export async function generateStaticParams(){
//   let data = await fetchApi(`${endpoints.public.collections}/1`, 'GET');
  
//   return data.map(({name})=>({
//     params:{
//       collection:name,
      
//     }
//   }))
    
// }

export default async function  Home({params,searchParams}) {
  const { collection } = await params;
  const { page } = await searchParams;
  const decodedCollection = collection ? decodeURIComponent(collection) : '';
  console.log(decodedCollection," hhh ", page);
  return (

    <div className="">
    
    <CategoreisComp page={page} pageName={decodedCollection} moviesLink={endpoints.public.getTheMoviesByCollection} countLink={endpoints.public.getTheTotalCountOfCollectionMovies}/>
    </div>
  );
}
