import MovieRequestPage from "@/components/MovieRequestPage";

export default async function  Home({params,searchParams}) {
    searchParams = await searchParams;
    
    return (
      <div className="">
      
      <MovieRequestPage/>
      </div>
    );
  }
  