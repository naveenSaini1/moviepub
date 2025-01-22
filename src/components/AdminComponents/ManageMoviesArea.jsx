import { use, useEffect, useState } from 'react';
import UpdateMovie from './UpdateMovie';
import fetchApi from '@/utils/FetchApi';
import { endpoints } from '@/constants/UrlConstants';

const ManageMovies = () => {
  const [movies, setMovies] = useState([]);
  const [showModal, setShowModal] = useState(false);
  const [selectedMovie, setSelectedMovie] = useState(null);

  useEffect(() => {

    // Fetch movies data from API
    fetchApi(`${endpoints.public.moviesUpdateDto}/1`, 'GET')
      .then((data) => {
        setMovies(data);
      })
      .catch((error) => {
        console.error('Error fetching movies:', error);
      });

  }, []);

  const openUpdateModal = (movieId) => {
    setSelectedMovie(movieId);
    setShowModal(true);
  }
  const cancelUpdate = () => {
    setSelectedMovie(null);
    setShowModal(false);
  }




  return (
    <div className="container mx-auto p-6">
      <h2 className="text-2xl font-bold text-gray-800 mb-4">Manage Movies</h2>

      {/* Movies List */}
      <div className="space-y-4">
        {movies.map((movie) => (
          <div key={movie.movieId} className="flex justify-between items-center p-4 bg-white rounded-md shadow-md">
            <div>
              <h3 className="text-xl font-bold">{movie.movieTitle}</h3>
              <p>Downloads: {movie.downloadCounts}</p>
            </div>
            <button
              onClick={() => (!showModal)?openUpdateModal(movie.movieId):cancelUpdate()}
              className=" text-white rounded-md hover:bg-blue-700"
            >
              {(!showModal)?<p className='bg-blue-600 px-4 py-2 '> Update</p>:<p className='bg-red-600 px-4 py-2 '>Cancel</p>}
            </button>
          </div>
        ))}
      </div>

      {/* Modal for Movie Update */}
      {showModal && (
        
        <div className="inset-0 flex items-center justify-center bg-black bg-opacity-50 overflow-scroll">
          <div className="bg-white p-6 rounded-md shadow-md relative">
            <button
              onClick={() => setShowModal(false)}
              className="absolute top-20 right-2 text-gray-600 hover:text-gray-800"
            >
              &times;
            </button>
            <UpdateMovie movieId={selectedMovie} />
          </div>
        </div>

      )}
    </div>
  );
};

export default ManageMovies;
