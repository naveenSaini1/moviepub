import Link from "next/link";


export default function Pagination({ totalPage = 10, currentPage = 1, page = "movie" }) {
    if (totalPage == 0 || currentPage > totalPage) return <>  </>
    let arr = Array.from({ length: totalPage }, (_, index) => index);
    let slide = 0;
    let pageToshow = 5;
    return (
        <>
            <div className="container mx-auto px-4 mt-8">
                <nav className="flex flex-row flex-wrap md:flex-nowrap justify-start md:justify-center items-center" aria-label="Pagination">
                    <Link className="cursor-pointer flex w-10 h-10 mr-1 justify-center items-center rounded-full border border-gray-200 bg-white text-black hover:border-gray-300"
                        href={currentPage > 1
                            ? page + `?page=${Number(currentPage) - 1}`
                            : page + `?page=${currentPage}`} title="Previous Page"

                    >

                        <span className="sr-only">Previous Page</span>
                        <svg className="block w-4 h-4 fill-current" viewBox="0 0 256 512" aria-hidden="true" role="presentation">
                            <path d="M238.475 475.535l7.071-7.07c4.686-4.686 4.686-12.284 0-16.971L50.053 256 245.546 60.506c4.686-4.686 4.686-12.284 0-16.971l-7.071-7.07c-4.686-4.686-12.284-4.686-16.97 0L10.454 247.515c-4.686 4.686-4.686 12.284 0 16.971l211.051 211.05c4.686 4.686 12.284 4.686 16.97-.001z"></path>
                        </svg>
                    </Link>

                    {arr.map((el, index) => {
                        let label = el + 1;

                        if (currentPage <= label && slide <= totalPage) {
                            slide++;
                        }

                        if (slide != 0 && slide <= pageToshow) {
                            return (
                                <Link key={index} href={page + "?page=" + (label)} className={`md:flex w-10 h-10 mx-1 justify-center text-center items-center rounded-full border border-gray-200 ${(currentPage != label) ? 'bg-white text-black' : 'bg-black text-white'} hover:border-gray-300`} title={`page ${index + 1}`}>
                                    {index + 1}
                                </Link>
                            )
                        }
                        //if(currentPage==label)flag=true;




                    })}

                    <Link href={currentPage < totalPage
                        ? page + `?page=${Number(currentPage) + 1}`
                        : page + `?page=${currentPage}`} className="flex w-10 h-10 ml-1 justify-center items-center rounded-full border border-gray-200 bg-white text-black hover:border-gray-300" title="Next Page">

                        <span className="sr-only">Next Page</span>
                        <svg className="block w-4 h-4 fill-current" viewBox="0 0 256 512" aria-hidden="true" role="presentation">
                            <path d="M17.525 36.465l-7.071 7.07c-4.686 4.686-4.686 12.284 0 16.971L205.947 256 10.454 451.494c-4.686 4.686-4.686 12.284 0 16.971l7.071 7.07c4.686 4.686 12.284 4.686 16.97 0l211.051-211.05c4.686-4.686 4.686-12.284 0-16.971L34.495 36.465c-4.686-4.687-12.284-4.687-16.97 0z"></path>
                        </svg>

                    </Link>
                </nav>
            </div>
        </>
    )
}