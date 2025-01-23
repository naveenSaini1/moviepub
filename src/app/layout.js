import { PLATFORM_DESCRIPTION, PLATFORM_NAME, PLATFORM_TITLE } from "@/constants/baseConstants";
import "./globals.css";
import MovieHeader from "@/components/MovieComponents/MovieHeader";
import BannerSlider from "@/components/MovieComponents/BannerSlider";
import NavigationBar from "@/components/MovieComponents/NavigationBar";
import Footer from "@/components/MovieComponents/Footer";
import AlertSection from "@/components/MovieComponents/AlertSection";
import Sidebar from "@/components/MovieComponents/Sidebar";
import GoogleAnalytics from "@/components/GoogleAnalytics";


export const metadata = {
  title: {
    default: PLATFORM_TITLE,
    template:"%s - "+PLATFORM_TITLE
  },
  description: PLATFORM_DESCRIPTION,
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body
        className="">
          <main className="min-h-screen bg-black text-white">
      <MovieHeader />
      <BannerSlider />
      <NavigationBar />
      <AlertSection />
      <div className="container mx-auto px-4 py-8">
        <div className="flex flex-col md:flex-row gap-6">
         
          <Sidebar />
          {children}
        </div>
      </div>
      <Footer />
    </main>
      </body>
      <GoogleAnalytics />
    </html>
  );
}

