import DisclaimerPage from "@/components/DisclaimerPage";

export default async function  Home({params,searchParams}) {
    searchParams = await searchParams;
    
    return (
      <div className="">
      
       <DisclaimerPage/>
      </div>
    );
  }
  