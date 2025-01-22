import { PLATFORM_DESCRIPTION, PLATFORM_NAME, PLATFORM_TITLE } from "@/constants/baseConstants";

export const metadata = {
  title: "Search",
  description: "search all the movies here",
};

export default function RootLayout({ children }) {
  return (
    <div>
  {children}
    </div>
        
    
  );  
}
