exports.id=830,exports.ids=[830],exports.modules={4620:(e,t,s)=>{Promise.resolve().then(s.t.bind(s,9607,23)),Promise.resolve().then(s.t.bind(s,6638,23)),Promise.resolve().then(s.bind(s,2523)),Promise.resolve().then(s.bind(s,6665)),Promise.resolve().then(s.bind(s,5014))},1052:(e,t,s)=>{Promise.resolve().then(s.t.bind(s,8531,23)),Promise.resolve().then(s.t.bind(s,7882,23)),Promise.resolve().then(s.bind(s,5071)),Promise.resolve().then(s.bind(s,5421)),Promise.resolve().then(s.bind(s,834))},9942:(e,t,s)=>{Promise.resolve().then(s.t.bind(s,3219,23)),Promise.resolve().then(s.t.bind(s,4863,23)),Promise.resolve().then(s.t.bind(s,5155,23)),Promise.resolve().then(s.t.bind(s,802,23)),Promise.resolve().then(s.t.bind(s,9350,23)),Promise.resolve().then(s.t.bind(s,8530,23)),Promise.resolve().then(s.t.bind(s,8921,23))},6798:(e,t,s)=>{Promise.resolve().then(s.t.bind(s,6959,23)),Promise.resolve().then(s.t.bind(s,3875,23)),Promise.resolve().then(s.t.bind(s,1284,23)),Promise.resolve().then(s.t.bind(s,7174,23)),Promise.resolve().then(s.t.bind(s,4178,23)),Promise.resolve().then(s.t.bind(s,7190,23)),Promise.resolve().then(s.t.bind(s,1365,23))},7943:(e,t,s)=>{Promise.resolve().then(s.bind(s,3174))},5967:(e,t,s)=>{Promise.resolve().then(s.bind(s,2698))},3275:(e,t,s)=>{Promise.resolve().then(s.bind(s,8225))},2504:(e,t,s)=>{Promise.resolve().then(s.bind(s,4365))},6487:()=>{},8335:()=>{},2698:(e,t,s)=>{"use strict";s.d(t,{default:()=>r});var o=s(5512);function r(){return(0,o.jsxs)("div",{className:"min-h-screen bg-gray-900 flex flex-col justify-center items-center",children:[(0,o.jsxs)("div",{className:"text-center",children:[(0,o.jsx)("h1",{className:"text-3xl font-bold text-white mb-2",children:"Loading"}),(0,o.jsx)("p",{className:"text-gray-400 text-lg",children:"Please wait while we fetch your content"})]}),(0,o.jsx)("div",{className:"mt-12 w-64 bg-gray-800 rounded-full h-2.5",children:(0,o.jsx)("div",{className:"bg-orange-500 h-2.5 rounded-full animate-pulse",style:{width:"70%"}})}),(0,o.jsx)("div",{className:"mt-8 flex space-x-2",children:[0,1,2].map(e=>(0,o.jsx)("div",{className:"w-3 h-3 bg-orange-500 rounded-full animate-bounce",style:{animationDelay:`${.1*e}s`}},e))}),(0,o.jsx)("div",{className:"mt-12 text-gray-500 text-sm",children:(0,o.jsx)("p",{children:"If this takes too long, please refresh the page"})})]})}s(8009)},5071:(e,t,s)=>{"use strict";s.d(t,{default:()=>i});var o=s(5512),r=s(8009);s(5103),s(758);var n=s(3714),l=s(8531),a=s.n(l);function i(){let[e,t]=(0,r.useState)([]);(0,r.useRef)();let[s,l]=(0,r.useState)(0),i=t=>{"left"===t?l(t=>(t-1+e.length)%e.length):l(t=>(t+1)%e.length)};return(0,o.jsxs)("div",{className:"relative w-full h-[300px] md:h-[400px] overflow-hidden",children:[(0,o.jsx)("div",{className:"flex transition-transform duration-300 ease-in-out",style:{transform:`translateX(-${100*s}%)`},children:e.map(e=>(0,o.jsxs)("div",{className:"min-w-full h-full relative",children:[(0,o.jsx)("div",{className:" bg-cover bg-no-repeat bg-center brightness-50",style:{width:"100%",height:"400px",backgroundImage:`url(${e.imageurl?`${n.IMAGE_URL}/${e.imageurl}`:`/placeholder.svg?height=1080&width=1920&text=${e.title}`})`}}),(0,o.jsx)("div",{className:"absolute inset-0 flex justify-center items-center text-center p-4",children:(0,o.jsxs)("div",{className:"flex flex-col",children:[(0,o.jsx)("h2",{className:"text-4xl font-bold mb-2",children:e.title}),(0,o.jsxs)("p",{className:"text-xl mb-4",children:[e.year," • ",e.genre]}),(0,o.jsx)(a(),{href:e.slug,className:"bg-orange-500 text-white px-6 py-2 rounded-full hover:bg-orange-600 transition-colors",children:"Download Now"})]})})]},e.title))}),(0,o.jsx)("button",{className:"absolute top-1/2 left-4 transform -translate-y-1/2 bg-black bg-opacity-50 text-white p-2 rounded-full",onClick:()=>i("left"),children:"◀"}),(0,o.jsx)("button",{className:"absolute top-1/2 right-4 transform -translate-y-1/2 bg-black bg-opacity-50 text-white p-2 rounded-full",onClick:()=>i("right"),children:"▶"})]})}s(1644)},5421:(e,t,s)=>{"use strict";s.d(t,{default:()=>i});var o=s(5512),r=s(9960);s(3714);var n=s(8531),l=s.n(n),a=s(8009);function i(){let[e,t]=(0,a.useState)([]),[s,n]=(0,a.useState)([]),[i,c]=(0,a.useState)([]),[d,h]=(0,a.useState)([]);return(0,o.jsxs)("nav",{className:"bg-zinc-900 p-4 flex flex-wrap gap-4 justify-center items-center",children:[(0,o.jsx)(l(),{href:r.I+"/bollywood",className:"hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold",children:"BollyWood"}),(0,o.jsx)(l(),{href:r.I+"/hollywood",className:"hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold",children:"HollyWood"}),(0,o.jsx)(l(),{href:r.Yj+"/dubbed",className:"hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold",children:"Hindi Dubbed"}),(0,o.jsx)(l(),{href:r.I+"/south",className:"hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold",children:"South Hindi Dubs"}),(0,o.jsx)(l(),{href:r.I+"/series",className:"hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold",children:"Web Series"}),(0,o.jsx)(l(),{href:r.I+"/18",className:"hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold",children:"18+"}),(0,o.jsxs)("div",{className:"relative group",children:[(0,o.jsx)("button",{className:"hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold",children:"GENRES ▼"}),(0,o.jsx)("div",{className:"absolute hidden group-hover:block w-48 bg-zinc-800 p-2 rounded-md z-50",children:e.map(e=>(0,o.jsx)(l(),{href:r.DD+"/"+e.name,className:"block p-2 hover:bg-zinc-700",children:e.name},e.genreId))})]}),(0,o.jsxs)("div",{className:"relative group",children:[(0,o.jsx)("button",{className:"hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold",children:"Year ▼"}),(0,o.jsx)("div",{className:"absolute hidden group-hover:block w-48 bg-zinc-800 p-2 rounded-md z-50",children:i.map(e=>(0,o.jsx)(l(),{href:r.dE+"/"+e.name,className:"block p-2 hover:bg-zinc-700",children:e.name},e.yearId))})]}),(0,o.jsxs)("div",{className:"relative group",children:[(0,o.jsx)("button",{className:"hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold",children:"Collections ▼"}),(0,o.jsx)("div",{className:"absolute hidden group-hover:block w-48 bg-zinc-800 p-2 rounded-md z-50",children:s.map(e=>(0,o.jsx)(l(),{href:r.I+"/"+e.name,className:"block p-2 hover:bg-zinc-700",children:e.name},e.collectionsId))})]}),(0,o.jsxs)("div",{className:"relative group",children:[(0,o.jsx)("button",{className:"hover:text-orange-500 transition-colors  bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold",children:"Languages ▼"}),(0,o.jsx)("div",{className:"absolute hidden group-hover:block w-48 bg-zinc-800 p-2 rounded-md z-50",children:d.map(e=>(0,o.jsx)("li",{className:"list-none ",children:(0,o.jsx)(l(),{href:r.Yj+"/"+e.name,className:"block p-2 hover:bg-zinc-700",children:e.name})},e.languagesId))})]})]})}},834:(e,t,s)=>{"use strict";s.d(t,{default:()=>c});var o=s(5512),r=s(9960),n=s(8531),l=s.n(n),a=s(8009),i=s(9334);function c(){let e=(0,a.useRef)(),t=(0,i.useRouter)();return(0,o.jsx)("div",{className:"w-full md:w-72",children:(0,o.jsxs)("div",{className:"bg-zinc-800 p-4 rounded-lg",children:[(0,o.jsx)("h2",{className:"text-xl font-bold mb-4",children:"\uD83D\uDD0D Search Here !!"}),(0,o.jsxs)("div",{className:"flex mb-4 w-[100%]",children:[(0,o.jsx)("input",{ref:e,type:"search",placeholder:"Search movies...",className:"flex-grow p-2 w-[70%] rounded-l bg-zinc-700 text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-orange-500"}),(0,o.jsx)("button",{onClick:()=>{""!=e.current.value.trim()&&(t.push(r.Dn+"/"+e.current.value),console.log("search bar is open",e.current.value))},className:"bg-orange-500 w-[30%] text-white px-4 py-2 rounded-r hover:bg-orange-600 transition-colors","aria-label":"Search",children:"\uD83D\uDD0D"})]}),(0,o.jsxs)("div",{className:"flex flex-wrap gap-2",children:[(0,o.jsx)(l(),{href:r.I+"/latest",className:"bg-zinc-700 text-white px-3 py-1 rounded-full text-sm hover:bg-orange-500 transition-colors",children:"Latest"}),(0,o.jsx)(l(),{href:r.I+"/popular",className:"bg-zinc-700 text-white px-3 py-1 rounded-full text-sm hover:bg-orange-500 transition-colors",children:"Popular"}),(0,o.jsx)(l(),{href:r.DD+"/action",className:"bg-zinc-700 text-white px-3 py-1 rounded-full text-sm hover:bg-orange-500 transition-colors",children:"Action"}),(0,o.jsx)(l(),{href:r.DD+"/comedy",className:"bg-zinc-700 text-white px-3 py-1 rounded-full text-sm hover:bg-orange-500 transition-colors",children:"Comedy"}),(0,o.jsx)(l(),{href:r.DD+"/drama",className:"bg-zinc-700 text-white px-3 py-1 rounded-full text-sm hover:bg-orange-500 transition-colors",children:"Drama"})]})]})})}},4365:(e,t,s)=>{"use strict";s.d(t,{default:()=>c});var o=s(5512),r=s(8531),n=s.n(r),l=s(6611),a=s(7137),i=s(6873);function c(){return(0,o.jsx)("div",{className:"min-h-screen bg-gray-900 text-gray-100 flex flex-col justify-center items-center px-4",children:(0,o.jsxs)("div",{className:"text-center",children:[(0,o.jsx)(l.A,{className:"w-24 h-24 text-orange-500 mx-auto mb-8"}),(0,o.jsx)("h1",{className:"text-5xl font-bold text-orange-500 mb-4",children:"404"}),(0,o.jsx)("h2",{className:"text-3xl font-semibold mb-6",children:"Page Not Found"}),(0,o.jsx)("p",{className:"text-xl text-gray-300 mb-8",children:"Oops! The page you're looking for doesn't exist."}),(0,o.jsxs)("div",{className:"flex flex-col sm:flex-row justify-center gap-4",children:[(0,o.jsxs)(n(),{href:"/",className:"inline-flex items-center justify-center px-6 py-3 border border-transparent text-base font-medium rounded-md text-white bg-orange-600 hover:bg-orange-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-orange-500 transition-colors duration-200",children:[(0,o.jsx)(a.A,{className:"w-5 h-5 mr-2"}),"Go Home"]}),(0,o.jsxs)(n(),{href:"/search",className:"inline-flex items-center justify-center px-6 py-3 border border-orange-500 text-base font-medium rounded-md text-orange-500 bg-transparent hover:bg-orange-500 hover:text-white focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-orange-500 transition-colors duration-200",children:[(0,o.jsx)(i.A,{className:"w-5 h-5 mr-2"}),"Search Movies"]})]})]})})}},3714:(e,t,s)=>{"use strict";s.r(t),s.d(t,{API_URL:()=>r,HOST_ADDRESS:()=>o,IMAGE_URL:()=>l,NEXT_CONFIG:()=>a,PUBLIC_API_URL:()=>n,endpoints:()=>i});let o="https://app.moviepub.xyz",r=`${o}/api`,n=`${o}/api/public`,l=`${o}/static`,a="localhost",i={login:`${r}/auth/signin`,register:`${r}/auth/register`,movies:`${r}/movies`,genres:`${r}/genres`,users:`${r}/users`,admin:{movies:`${r}/admin/movies`,users:`${r}/admin/users`,genres:`${r}/admin/genres`,collections:`${r}/admin/collections`,years:`${r}/admin/years`,languages:`${r}/admin/languages`,updateMovie:`${r}/admin/updateMovie`,getAllTheMessages:`${r}/admin/getAllTheMessages`},public:{movies:`${n}/movies`,genres:`${n}/genres`,collections:`${n}/collections`,years:`${n}/years`,languages:`${n}/languages`,moviesUpdateDto:`${n}/moviesUpdateDto`,singleMovie:`${n}/singleMovie`,bannerMovies:`${n}/bannerMovies`,getThelatestMoives:`${n}/latestMovies`,getTheTotalPages:`${n}/getTheTotalPages`,getTheMoviesByCollection:`${n}/getTheMoviesByCollection`,getTheTotalCountOfCollectionMovies:`${n}/getTheTotalCountOfCollectionMovies`,getTheMoviesByYears:`${n}/getTheMoviesByYears`,getTheTotalCountOfYearsMovies:`${n}/getTheTotalCountOfYearsMovies`,getTheMoviesByLanguages:`${n}/getTheMoviesByLanguages`,getTheTotalCountOfLangaugesMovies:`${n}/getTheTotalCountOfLangaugesMovies`,getTheMoviesByGenres:`${n}/getTheMoviesByGenres`,getTheTotalCountOfGenreMovies:`${n}/getTheTotalCountOfGenreMovies`,searchMovies:`${n}/searchMovies`,getTheTotalPagesOfSearches:`${n}/getTheTotalPagesOfSearches`,singleMovieByUrl:`${n}/singleMovieByUrl`,createAMovieRequest:`${n}/createAMovieRequest`,getAllTheMoviesSlug:`${n}/getAllTheMoviesSlug`}}},9960:(e,t,s)=>{"use strict";s.d(t,{DD:()=>o,Dn:()=>a,I:()=>r,Yj:()=>l,dE:()=>n,fm:()=>i});let o="/genres",r="/collections",n="/years",l="/languages",a="/search",i="/movie"},758:(e,t,s)=>{"use strict";s.d(t,{_:()=>c});var o=s(5512);s(3714);let{createContext:r,use:n,useEffect:l,useState:a}=s(8009),i=r(),c=({children:e})=>(0,o.jsx)(i.Provider,{value:{},children:e})},1644:(e,t,s)=>{"use strict";s.r(t),s.d(t,{default:()=>o});let o=async(e,t="GET",s="",o=null,r=null)=>{let n=new Headers;s&&n.append("Authorization",`Bearer ${s}`),o&&n.append("Content-Type","application/json");let l={method:t,headers:n,body:o?JSON.stringify(o):r,redirect:"follow"};try{let t=await fetch(e,l);if(!t.ok)throw Error(`HTTP error! status: ${t.status}`);let s=await t.json();return console.log(s),s}catch(e){throw console.error("API call error:",e),e}}},5822:(e,t,s)=>{"use strict";s.r(t),s.d(t,{default:()=>p,metadata:()=>x});var o=s(2740),r=s(6908);s(1135);var n=s(9607),l=s.n(n);function a(){return(0,o.jsxs)("header",{className:"bg-black py-4 px-6 flex flex-col md:flex-row justify-between items-center gap-4",children:[(0,o.jsx)("div",{className:"flex items-center ",children:(0,o.jsxs)(l(),{href:"/",className:"text-2xl font-bold text-orange-500",children:["Movie",(0,o.jsx)("span",{className:"text-red-500",children:"PUB"})]})}),(0,o.jsxs)("nav",{className:"flex flex-wrap justify-center gap-8 ",children:[(0,o.jsx)(l(),{href:r.On,className:"hover:text-orange-500 transition-colors bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold",children:"Disclaimer"}),(0,o.jsx)(l(),{href:"/",className:"hover:text-orange-500 transition-colors bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold",children:"How To Download ?"}),(0,o.jsx)(l(),{href:"/",className:"hover:text-orange-500 transition-colors bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold",children:"Join Our Group !"}),(0,o.jsx)(l(),{href:r.FU,className:"hover:text-orange-500 transition-colors bg-orange-300 pl-1 pr-1 rounded-lg text-black font-bold",children:"Movie Request Page"})]})]})}var i=s(2523),c=s(6665);function d(){return(0,o.jsxs)("footer",{className:"bg-zinc-900 text-center py-4",children:[(0,o.jsxs)("p",{children:["2025 \xa9 ",(0,o.jsx)(l(),{href:"/",className:"text-blue-400 hover:underline",children:"moviepub.xyz"})," | All Rights Reserved."]}),(0,o.jsxs)("div",{className:"mt-2",children:[(0,o.jsx)(l(),{href:r.On,className:"text-blue-400 hover:underline mr-4",children:"Disclaimer"}),(0,o.jsx)(l(),{href:"/",className:"text-blue-400 hover:underline mr-4",children:"Join Our Group !"}),(0,o.jsx)(l(),{href:"/",className:"text-blue-400 hover:underline mr-4",children:"How To Download ?"}),(0,o.jsx)(l(),{href:r.FU,className:"text-blue-400 hover:underline",children:"Movie Request Page"})]})]})}function h(){return(0,o.jsx)("div",{className:"bg-zinc-800 p-4 text-center text-sm",children:(0,o.jsxs)("p",{className:"text-yellow-400",children:["⚠️ Alert! Nowadays there are FAKE Copies of MoviePub on google, Kindly AVOID them and Always use",(0,o.jsx)("span",{className:"text-blue-400",children:" moviepub.xyz "}),"for Genuine and Secure Download. Follow our Official",(0,o.jsxs)(l(),{href:"/telegram",className:"text-blue-400 hover:underline",children:[" ","TelegramChannel"]}),(0,o.jsx)("span",{className:"text-yellow-400",children:" For More Updates."})]})})}var u=s(5014),m=s(9847);function g(){return(0,o.jsxs)(o.Fragment,{children:[(0,o.jsx)(m.default,{src:"https://www.googletagmanager.com/gtag/js?id=G-DV31KDM329"}),(0,o.jsx)(m.default,{children:`
                   window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-DV31KDM329');
                    `})]})}let x={title:{default:r.Rl,template:"%s - "+r.Rl},description:r.Lc};function p({children:e}){return(0,o.jsxs)("html",{lang:"en",children:[(0,o.jsx)("body",{className:"",children:(0,o.jsxs)("main",{className:"min-h-screen bg-black text-white",children:[(0,o.jsx)(a,{}),(0,o.jsx)(i.default,{}),(0,o.jsx)(c.default,{}),(0,o.jsx)(h,{}),(0,o.jsx)("div",{className:"container mx-auto px-4 py-8",children:(0,o.jsxs)("div",{className:"flex flex-col md:flex-row gap-6",children:[(0,o.jsx)(u.default,{}),e]})}),(0,o.jsx)(d,{})]})}),(0,o.jsx)(g,{})]})}},8988:(e,t,s)=>{"use strict";s.r(t),s.d(t,{default:()=>n});var o=s(2740),r=s(3174);function n(){return(0,o.jsx)(r.default,{})}},6420:(e,t,s)=>{"use strict";s.r(t),s.d(t,{default:()=>n});var o=s(2740),r=s(8225);function n(){return(0,o.jsx)("div",{children:(0,o.jsx)(r.default,{})})}},3174:(e,t,s)=>{"use strict";s.d(t,{default:()=>o});let o=(0,s(6760).registerClientReference)(function(){throw Error("Attempted to call the default export of \"/home/naveen/Desktop/moviepub/src/components/LoadingPage.js\" from the server, but it's on the client. It's not possible to invoke a client function from the server, it can only be rendered as a Component or passed to props of a Client Component.")},"/home/naveen/Desktop/moviepub/src/components/LoadingPage.js","default")},2523:(e,t,s)=>{"use strict";s.d(t,{default:()=>o});let o=(0,s(6760).registerClientReference)(function(){throw Error("Attempted to call the default export of \"/home/naveen/Desktop/moviepub/src/components/MovieComponents/BannerSlider.js\" from the server, but it's on the client. It's not possible to invoke a client function from the server, it can only be rendered as a Component or passed to props of a Client Component.")},"/home/naveen/Desktop/moviepub/src/components/MovieComponents/BannerSlider.js","default")},6665:(e,t,s)=>{"use strict";s.d(t,{default:()=>o});let o=(0,s(6760).registerClientReference)(function(){throw Error("Attempted to call the default export of \"/home/naveen/Desktop/moviepub/src/components/MovieComponents/NavigationBar.js\" from the server, but it's on the client. It's not possible to invoke a client function from the server, it can only be rendered as a Component or passed to props of a Client Component.")},"/home/naveen/Desktop/moviepub/src/components/MovieComponents/NavigationBar.js","default")},5014:(e,t,s)=>{"use strict";s.d(t,{default:()=>o});let o=(0,s(6760).registerClientReference)(function(){throw Error("Attempted to call the default export of \"/home/naveen/Desktop/moviepub/src/components/MovieComponents/Sidebar.js\" from the server, but it's on the client. It's not possible to invoke a client function from the server, it can only be rendered as a Component or passed to props of a Client Component.")},"/home/naveen/Desktop/moviepub/src/components/MovieComponents/Sidebar.js","default")},8225:(e,t,s)=>{"use strict";s.d(t,{default:()=>o});let o=(0,s(6760).registerClientReference)(function(){throw Error("Attempted to call the default export of \"/home/naveen/Desktop/moviepub/src/components/NotFoundPage.js\" from the server, but it's on the client. It's not possible to invoke a client function from the server, it can only be rendered as a Component or passed to props of a Client Component.")},"/home/naveen/Desktop/moviepub/src/components/NotFoundPage.js","default")},6908:(e,t,s)=>{"use strict";s.d(t,{DD:()=>l,Dn:()=>d,FU:()=>m,GW:()=>n,I:()=>a,Lc:()=>r,On:()=>u,Rl:()=>o,Yj:()=>c,dE:()=>i,fm:()=>h});let o="MoviePub",r="free download movies and series in all language",n="https://moviepub.xyz",l="/genres",a="/collections",i="/years",c="/languages",d="/search",h="/movie",u="/disclaimer",m="/movierequest"},440:(e,t,s)=>{"use strict";s.r(t),s.d(t,{default:()=>r});var o=s(8077);let r=async e=>[{type:"image/x-icon",sizes:"48x48",url:(0,o.fillMetadataSegment)(".",await e.params,"favicon.ico")+""}]},3634:(e,t,s)=>{"use strict";s.r(t),s.d(t,{default:()=>r});var o=s(8077);let r=async e=>[{type:"image/png",width:171,height:43,url:(0,o.fillMetadataSegment)(".",await e.params,"opengraph-image.png")+"?f20c239185cc2c1b"}]},1135:()=>{}};