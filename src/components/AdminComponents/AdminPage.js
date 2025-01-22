"use client"
import { useContext, useState } from 'react'
import { AdminContextApi } from '@/contextApi/AdminContextApi'
import { useRouter } from 'next/navigation';
import AdminMainSubComp from './AdminMainSubComp';
import Link from 'next/link';
import LoginComp from './LoginComp';


export default function AdminDashboard() {
 const {token}= useContext(AdminContextApi);

 console.log(token,"  token");


if(token.current !== null){
    return (
        <div>
            <AdminMainSubComp/>
        </div>
    )
  }
  else{
    return (
        <div className='min-h-screen flex bg-gray-100 justify-center items-center'>
            <LoginComp/>
        </div>
    )
  }

  
}
