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

        </>
    )
}