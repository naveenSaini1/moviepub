import { PLATFORM_DESCRIPTION, PLATFORM_NAME, PLATFORM_TITLE } from "@/constants/baseConstants";

export const metadata = {
  title: "Latest Collection of Movies and Series",
  description: "free download movies and series in all language",
  keywords: "movies, series, free download",
};

export default function RootLayout({ children }) {
  return (
    <div>
  {children}
    </div>
        
    
  );  
}
