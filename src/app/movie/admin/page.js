"use client"
import AdminDashboard from "@/components/AdminComponents/AdminPage";
import { AdminContextApiProvider } from "@/contextApi/AdminContextApi";

export default function SinglePage() {
  return (
    <div className="">
     <AdminContextApiProvider>
     <AdminDashboard/>
      </AdminContextApiProvider> 
    </div>
  );
}
