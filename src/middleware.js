// middleware.js

import { NextResponse } from 'next/server';

export function middleware(request) {
    console.log(request.nextUrl.pathname,"middleware");
    const pathsToRedirect = ['/', '/collections','/genres','/languages','/years',"/search"];

    // Check if the current pathname is in the array
    if (pathsToRedirect.includes(request.nextUrl.pathname)) {
      const url = request.nextUrl.clone();
      url.pathname = '/movie';
      return NextResponse.redirect(url);
    }
  return NextResponse.next();
}

// Specify the paths to match for the middleware
export const config = {
  matcher: ['/','/collections','/genres','/languages','/years',"/search"],
};
