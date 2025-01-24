import Script from "next/script";

export default function GoogleAnalytics() {
    return (
        <>

            <Script src="https://www.googletagmanager.com/gtag/js?id=G-DV31KDM329"></Script>
            <Script>
                {
                    `
                   window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-DV31KDM329');
                    `
                }

            </Script>

            <>
      {/* ShareUs Configuration */}
      <Script>
        {`
          window.shareus_config = {
            uid: "niOnO0LJkJX70DBqFxH3ZPLyHOL2",
          };
          window.include_domains = ["https://mega.nz/"];
        `}
      </Script>
      <Script
        data-cfasync="false"
        type="module"
        crossOrigin="true"
        src="//api.shareus.io/script.js"
      />
    </>
        </>
    )
}