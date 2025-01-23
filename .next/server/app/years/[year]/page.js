(()=>{var e={};e.id=811,e.ids=[811],e.modules={846:e=>{"use strict";e.exports=require("next/dist/compiled/next-server/app-page.runtime.prod.js")},9121:e=>{"use strict";e.exports=require("next/dist/server/app-render/action-async-storage.external.js")},3295:e=>{"use strict";e.exports=require("next/dist/server/app-render/after-task-async-storage.external.js")},9294:e=>{"use strict";e.exports=require("next/dist/server/app-render/work-async-storage.external.js")},3033:e=>{"use strict";e.exports=require("next/dist/server/app-render/work-unit-async-storage.external.js")},3873:e=>{"use strict";e.exports=require("path")},9551:e=>{"use strict";e.exports=require("url")},6565:(e,t,s)=>{"use strict";s.r(t),s.d(t,{GlobalError:()=>n.a,__next_app__:()=>u,pages:()=>c,routeModule:()=>p,tree:()=>d});var r=s(260),a=s(8203),o=s(5155),n=s.n(o),i=s(7292),l={};for(let e in i)0>["default","tree","pages","GlobalError","__next_app__","routeModule"].indexOf(e)&&(l[e]=()=>i[e]);s.d(t,l);let d=["",{children:["years",{children:["[year]",{children:["__PAGE__",{},{page:[()=>Promise.resolve().then(s.bind(s,9370)),"/home/naveen/Desktop/moviepub/src/app/years/[year]/page.js"]}]},{layout:[()=>Promise.resolve().then(s.bind(s,3139)),"/home/naveen/Desktop/moviepub/src/app/years/[year]/layout.js"],loading:[()=>Promise.resolve().then(s.bind(s,4861)),"/home/naveen/Desktop/moviepub/src/app/years/[year]/loading.js"]}]},{layout:[()=>Promise.resolve().then(s.bind(s,3699)),"/home/naveen/Desktop/moviepub/src/app/years/layout.js"],"not-found":[()=>Promise.resolve().then(s.bind(s,6041)),"/home/naveen/Desktop/moviepub/src/app/years/not-found.js"],metadata:{icon:[async e=>(await Promise.resolve().then(s.bind(s,440))).default(e)],apple:[],openGraph:[async e=>(await Promise.resolve().then(s.bind(s,3634))).default(e)],twitter:[],manifest:void 0}}]},{layout:[()=>Promise.resolve().then(s.bind(s,5822)),"/home/naveen/Desktop/moviepub/src/app/layout.js"],loading:[()=>Promise.resolve().then(s.bind(s,8988)),"/home/naveen/Desktop/moviepub/src/app/loading.js"],"not-found":[()=>Promise.resolve().then(s.bind(s,6420)),"/home/naveen/Desktop/moviepub/src/app/not-found.js"],forbidden:[()=>Promise.resolve().then(s.t.bind(s,9116,23)),"next/dist/client/components/forbidden-error"],unauthorized:[()=>Promise.resolve().then(s.t.bind(s,1485,23)),"next/dist/client/components/unauthorized-error"],metadata:{icon:[async e=>(await Promise.resolve().then(s.bind(s,440))).default(e)],apple:[],openGraph:[async e=>(await Promise.resolve().then(s.bind(s,3634))).default(e)],twitter:[],manifest:void 0}}],c=["/home/naveen/Desktop/moviepub/src/app/years/[year]/page.js"],u={require:s,loadChunk:()=>Promise.resolve()},p=new r.AppPageRouteModule({definition:{kind:a.RouteKind.APP_PAGE,page:"/years/[year]/page",pathname:"/years/[year]",bundlePath:"",filename:"",appPaths:[]},userland:{loaderTree:d}})},9973:(e,t,s)=>{Promise.resolve().then(s.bind(s,9202))},3125:(e,t,s)=>{Promise.resolve().then(s.bind(s,9950))},9950:(e,t,s)=>{"use strict";s.d(t,{default:()=>i});var r=s(5512),a=s(8009),o=s(7481);s(1644),s(3714);var n=s(8496);function i({page:e,pageName:t,moviesLink:s,countLink:i}){let[l,d]=(0,a.useState)(0),[c,u]=(0,a.useState)([]);return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(o.A,{data:c}),(0,r.jsx)(n.A,{totalPage:l,page:t||"bollywood",currentPage:e||1})]})}s(9334)},7481:(e,t,s)=>{"use strict";s.d(t,{A:()=>d});var r=s(5512),a=s(9960),o=s(3714);s(758);var n=s(5103),i=s(8531),l=s.n(i);function d({data:e}){return(0,r.jsxs)("div",{className:"flex-1",children:[(0,r.jsxs)("h2",{className:"text-xl font-bold mb-4 flex items-center gap-2",children:[(0,r.jsx)("span",{className:"text-orange-500",children:"\uD83D\uDD25"})," Latest Releases"]}),(0,r.jsx)("div",{className:"grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4",children:e.map(e=>(0,r.jsxs)(l(),{href:a.fm+"/"+e.slug,className:"bg-zinc-800 rounded-lg overflow-hidden hover:scale-105  flex flex-col justify-between transition-transform",children:[(0,r.jsx)(n.default,{src:`${e.imageurl?`${o.IMAGE_URL}/${e.imageurl}`:`/placeholder.svg?height=1080&width=1920&text=${e.title}`}`,alt:e.title,width:200,height:300,className:"w-full object-cover"}),(0,r.jsxs)("div",{className:"p-2",children:[(0,r.jsx)("h3",{className:"text-sm font-semibold",children:e.title}),(0,r.jsxs)("p",{className:"text-xs text-gray-400",children:[e.year," • ",e.genre]})]})]},e.title))})]})}s(8009)},8496:(e,t,s)=>{"use strict";s.d(t,{A:()=>n});var r=s(5512),a=s(8531),o=s.n(a);function n({totalPage:e=10,currentPage:t=1,page:s="movie"}){if(0==e||t>e)return(0,r.jsx)(r.Fragment,{children:"  "});let a=Array.from({length:e},(e,t)=>t),n=0;return(0,r.jsx)(r.Fragment,{children:(0,r.jsx)("div",{className:"container mx-auto px-4 mt-8",children:(0,r.jsxs)("nav",{className:"flex flex-row flex-wrap md:flex-nowrap justify-start md:justify-center items-center","aria-label":"Pagination",children:[(0,r.jsxs)(o(),{className:"cursor-pointer flex w-10 h-10 mr-1 justify-center items-center rounded-full border border-gray-200 bg-white text-black hover:border-gray-300",href:t>1?s+`?page=${Number(t)-1}`:s+`?page=${t}`,title:"Previous Page",children:[(0,r.jsx)("span",{className:"sr-only",children:"Previous Page"}),(0,r.jsx)("svg",{className:"block w-4 h-4 fill-current",viewBox:"0 0 256 512","aria-hidden":"true",role:"presentation",children:(0,r.jsx)("path",{d:"M238.475 475.535l7.071-7.07c4.686-4.686 4.686-12.284 0-16.971L50.053 256 245.546 60.506c4.686-4.686 4.686-12.284 0-16.971l-7.071-7.07c-4.686-4.686-12.284-4.686-16.97 0L10.454 247.515c-4.686 4.686-4.686 12.284 0 16.971l211.051 211.05c4.686 4.686 12.284 4.686 16.97-.001z"})})]}),a.map((a,i)=>{let l=a+1;if(t<=l&&n<=e&&n++,0!=n&&n<=5)return(0,r.jsx)(o(),{href:s+"?page="+l,className:`md:flex w-10 h-10 mx-1 justify-center text-center items-center rounded-full border border-gray-200 ${t!=l?"bg-white text-black":"bg-black text-white"} hover:border-gray-300`,title:`page ${i+1}`,children:i+1},i)}),(0,r.jsxs)(o(),{href:t<e?s+`?page=${Number(t)+1}`:s+`?page=${t}`,className:"flex w-10 h-10 ml-1 justify-center items-center rounded-full border border-gray-200 bg-white text-black hover:border-gray-300",title:"Next Page",children:[(0,r.jsx)("span",{className:"sr-only",children:"Next Page"}),(0,r.jsx)("svg",{className:"block w-4 h-4 fill-current",viewBox:"0 0 256 512","aria-hidden":"true",role:"presentation",children:(0,r.jsx)("path",{d:"M17.525 36.465l-7.071 7.07c-4.686 4.686-4.686 12.284 0 16.971L205.947 256 10.454 451.494c-4.686 4.686-4.686 12.284 0 16.971l7.071 7.07c4.686 4.686 12.284 4.686 16.97 0l211.051-211.05c4.686-4.686 4.686-12.284 0-16.971L34.495 36.465c-4.686-4.687-12.284-4.687-16.97 0z"})})]})]})})})}},3139:(e,t,s)=>{"use strict";s.r(t),s.d(t,{default:()=>o,metadata:()=>a});var r=s(2740);let a={title:"Years",description:"free download all the movies and series by year"};function o({children:e}){return(0,r.jsx)("div",{children:e})}},4861:(e,t,s)=>{"use strict";s.r(t),s.d(t,{default:()=>o});var r=s(2740),a=s(3174);function o(){return(0,r.jsx)(a.default,{})}},9370:(e,t,s)=>{"use strict";s.r(t),s.d(t,{default:()=>n});var r=s(2740),a=s(9202),o=s(9902);async function n({params:e,searchParams:t}){let{year:s}=await e,{page:n}=await t,i=s?decodeURIComponent(s):"";return console.log(i," hhh ",n),(0,r.jsx)("div",{className:"",children:(0,r.jsx)(a.default,{page:n,pageName:i,moviesLink:o.vZ.public.getTheMoviesByYears,countLink:o.vZ.public.getTheTotalCountOfYearsMovies})})}},3699:(e,t,s)=>{"use strict";s.r(t),s.d(t,{default:()=>n,metadata:()=>o});var r=s(2740),a=s(6908);let o={title:a.Rl,description:a.Lc};function n({children:e}){return(0,r.jsx)("div",{children:e})}},6041:(e,t,s)=>{"use strict";s.r(t),s.d(t,{default:()=>o});var r=s(2740),a=s(8225);function o(){return(0,r.jsx)("div",{children:(0,r.jsx)(a.default,{})})}},9202:(e,t,s)=>{"use strict";s.d(t,{default:()=>r});let r=(0,s(6760).registerClientReference)(function(){throw Error("Attempted to call the default export of \"/home/naveen/Desktop/moviepub/src/components/CategoreisComp.js\" from the server, but it's on the client. It's not possible to invoke a client function from the server, it can only be rendered as a Component or passed to props of a Client Component.")},"/home/naveen/Desktop/moviepub/src/components/CategoreisComp.js","default")},9902:(e,t,s)=>{"use strict";s.d(t,{Y5:()=>n,vZ:()=>i});let r="https://app.moviepub.xyz",a=`${r}/api`,o=`${r}/api/public`,n=`${r}/static`,i={login:`${a}/auth/signin`,register:`${a}/auth/register`,movies:`${a}/movies`,genres:`${a}/genres`,users:`${a}/users`,admin:{movies:`${a}/admin/movies`,users:`${a}/admin/users`,genres:`${a}/admin/genres`,collections:`${a}/admin/collections`,years:`${a}/admin/years`,languages:`${a}/admin/languages`,updateMovie:`${a}/admin/updateMovie`,getAllTheMessages:`${a}/admin/getAllTheMessages`},public:{movies:`${o}/movies`,genres:`${o}/genres`,collections:`${o}/collections`,years:`${o}/years`,languages:`${o}/languages`,moviesUpdateDto:`${o}/moviesUpdateDto`,singleMovie:`${o}/singleMovie`,bannerMovies:`${o}/bannerMovies`,getThelatestMoives:`${o}/latestMovies`,getTheTotalPages:`${o}/getTheTotalPages`,getTheMoviesByCollection:`${o}/getTheMoviesByCollection`,getTheTotalCountOfCollectionMovies:`${o}/getTheTotalCountOfCollectionMovies`,getTheMoviesByYears:`${o}/getTheMoviesByYears`,getTheTotalCountOfYearsMovies:`${o}/getTheTotalCountOfYearsMovies`,getTheMoviesByLanguages:`${o}/getTheMoviesByLanguages`,getTheTotalCountOfLangaugesMovies:`${o}/getTheTotalCountOfLangaugesMovies`,getTheMoviesByGenres:`${o}/getTheMoviesByGenres`,getTheTotalCountOfGenreMovies:`${o}/getTheTotalCountOfGenreMovies`,searchMovies:`${o}/searchMovies`,getTheTotalPagesOfSearches:`${o}/getTheTotalPagesOfSearches`,singleMovieByUrl:`${o}/singleMovieByUrl`,createAMovieRequest:`${o}/createAMovieRequest`,getAllTheMoviesSlug:`${o}/getAllTheMoviesSlug`}}}};var t=require("../../../webpack-runtime.js");t.C(e);var s=e=>t(t.s=e),r=t.X(0,[638,957,830],()=>s(6565));module.exports=r})();