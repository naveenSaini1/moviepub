import { PLATFORM_DESCRIPTION, PLATFORM_NAME, PLATFORM_TITLE } from "@/constants/baseConstants";

export const metadata = {
  title: PLATFORM_TITLE,
  description: PLATFORM_DESCRIPTION,
};

export default function AdminLayout({ children }) {
  return (
    <html lang="en">
      <body
        className="">
        {children}
      </body>
    </html>
  );
}
