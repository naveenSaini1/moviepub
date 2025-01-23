import { endpoints } from "@/constants/UrlConstants";
import { AdminContextApi } from "@/contextApi/AdminContextApi";
import fetchApi from "@/utils/FetchApi";
import { useContext, useEffect, useState } from "react";

export default function Messages() {
  const [data, setData] = useState([]);
  const [currentPage, setCurrentPage] = useState(1); // To track the current page
  const { token } = useContext(AdminContextApi);

  useEffect(() => {
    fetchApi(`${endpoints.admin.getAllTheMessages}/${currentPage}`, 'GET', token.current)
      .then((data) => {
        setData(data); // Keeping it as you had it
      })
      .catch((error) => {
        console.error('Error fetching messages:', error);
      });
  }, [currentPage]);

  const goToNextPage = () => {
    setCurrentPage((prevPage) => prevPage + 1);
  };

  const goToPreviousPage = () => {
    if (currentPage > 1) {
      setCurrentPage((prevPage) => prevPage - 1);
    }
  };

  return (
    <>
      <div className="p-6 bg-gray-50 min-h-screen">
        <h1 className="text-3xl font-semibold text-blue-800 mb-6">Messages</h1>

        {/* Current page display */}
        <div className="mb-4">
          <span className="text-lg font-medium text-gray-700">Page {currentPage}</span>
        </div>

        {/* Message list container */}
        <div className="space-y-6">
          {data.length > 0 ? (
            data.map((item) => (
              <div key={item.movieRequstId} className="bg-white p-4 rounded-lg shadow-lg border border-gray-200">
                <h3 className="text-xl font-semibold text-blue-600">{item.email}</h3>
                <p className="text-gray-700 mt-2">{item.message}</p>
              </div>
            ))
          ) : (
            <p className="text-gray-600">No messages found.</p>
          )}
        </div>

        {/* Pagination buttons */}
        <div className="mt-6 flex justify-between">
          <button
            onClick={goToPreviousPage}
            className="px-4 py-2 rounded-md bg-blue-600 text-white hover:bg-blue-700 disabled:opacity-50"
            disabled={currentPage === 1}
          >
            Previous
          </button>

          <button
            onClick={goToNextPage}
            className="px-4 py-2 rounded-md bg-blue-600 text-white hover:bg-blue-700"
          >
            Next
          </button>
        </div>
      </div>
    </>
  );
}
