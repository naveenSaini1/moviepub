import MainPage from "@/components/MainPage";



export default async function Home({params,searchParams}) {
  searchParams = await searchParams;
  console.log(searchParams);
  return (
    <div className="">
    
     <MainPage  searchParams={searchParams}/>
    </div>
  );
}
