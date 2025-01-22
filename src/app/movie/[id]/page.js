import MovieCard from "@/components/MoviesCard";
import SingleMovieDownload from "@/components/SingleMovieComponent/SingleMovieDownload";
import { endpoints, IMAGE_URL } from "@/constants/UrlConstants";
import fetchApi from "@/utils/FetchApi";

export async function generateStaticParams(){
  let data = await fetchApi(endpoints.public.getAllTheMoviesSlug, 'GET')
  
  return data.map(({slug})=>({
    params:{
      id:slug
    }
  }))
    
}
 

export async function generateMetadata({params}) {
  const { id}=await params; 
  let data = await fetchApi(`${endpoints.public.singleMovieByUrl}/${id}`, 'GET')
  return {
    title: data.downloadName,
    description: data.smallDescription,
    keywords:data.keywords,
    image: `${IMAGE_URL}/${data.imageUrl}`,
    openGraph: {
      images: [
        {
          url: `${IMAGE_URL}/${data.imageUrl}`,
          alt: data.downloadName,
        },
      ],
    },
  };
}
export default async function SinglePage({params}) {
  const { id}=await params; 
  console.log(id,"idddddddddd")
  return (
    <div className="">
    <SingleMovieDownload url={id}/>
    </div>
  );
}
