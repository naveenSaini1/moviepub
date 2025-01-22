import { PLATFORM_DESCRIPTION, PLATFORM_NAME, PLATFORM_TITLE } from "@/constants/baseConstants";

export const metadata = {
  title: "Genres",
  description: "Genres of movies and series free downoad",
  keywords: "genres, movies, series",
};

export default function RootLayout({ children }) {
  return (
    <div>
  {children}
    </div>
        
    
  );  
}
