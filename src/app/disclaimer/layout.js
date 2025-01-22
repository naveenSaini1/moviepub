import { PLATFORM_DESCRIPTION, PLATFORM_NAME, PLATFORM_TITLE } from "@/constants/baseConstants";

export const metadata = {
  title: "Disclaimer ",
  description: "disclaimer for moviepub",
  keywords: "disclaimer",
};

export default function RootLayout({ children }) {
  return (
    <div>
  {children}
    </div>
        
    
  );  
}
