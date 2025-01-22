import { PLATFORM_DESCRIPTION, PLATFORM_NAME, PLATFORM_TITLE } from "@/constants/baseConstants";

export const metadata = {
  title: PLATFORM_TITLE,
  description: PLATFORM_DESCRIPTION,
};

export default function RootLayout({ children }) {
  return (
    <div>
      
  {children}
    </div>
        
    
  );  
}
