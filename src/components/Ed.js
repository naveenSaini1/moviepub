import Script from "next/script";

export default function Ed() {
    return (
     <>
      {/* ShareUs Configuration */}
      <Script>
        {`
         window.shareus_config = {
    uid: "niOnO0LJkJX70DBqFxH3ZPLyHOL2",
  };
  window.exclude_domains = ["https://moviepub.xyz/**"];
        `}
      </Script>
      <Script
        data-cfasync="false"
        type="module"
        crossOrigin="true"
        src="//api.shareus.io/script.js"
      />
   
     </>
    )
}