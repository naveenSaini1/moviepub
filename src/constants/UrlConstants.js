// All the url constants are defined here
// export const HOST_ADDRESS = 'http://localhost:8080';
export const HOST_ADDRESS = 'https://app.moviepub.xyz';

export const API_URL = `${HOST_ADDRESS}/api`;
export const PUBLIC_API_URL = `${HOST_ADDRESS}/api/public`;
export const IMAGE_URL = `${HOST_ADDRESS}/static`;
export const NEXT_CONFIG = "localhost";

export const endpoints = {
    // Auth
    login: `${API_URL}/auth/signin`,
    register: `${API_URL}/auth/register`,
    // Movies
    movies: `${API_URL}/movies`,
    // Genres
    genres: `${API_URL}/genres`,
    // Users
    users: `${API_URL}/users`,
    // Admin
    admin: {
        movies: `${API_URL}/admin/movies`,
        users: `${API_URL}/admin/users`,
        genres: `${API_URL}/admin/genres`,
        collections: `${API_URL}/admin/collections`,
        years: `${API_URL}/admin/years`,
        languages: `${API_URL}/admin/languages`,
        updateMovie: `${API_URL}/admin/updateMovie`,
        getAllTheMessages:`${API_URL}/admin/getAllTheMessages`,

    },
    // Public
    public: {
        movies: `${PUBLIC_API_URL}/movies`,
        genres: `${PUBLIC_API_URL}/genres`,
        collections: `${PUBLIC_API_URL}/collections`,
        years: `${PUBLIC_API_URL}/years`,
        languages: `${PUBLIC_API_URL}/languages`,
        moviesUpdateDto: `${PUBLIC_API_URL}/moviesUpdateDto`,
        singleMovie: `${PUBLIC_API_URL}/singleMovie`,
        bannerMovies: `${PUBLIC_API_URL}/bannerMovies`,
        getThelatestMoives: `${PUBLIC_API_URL}/latestMovies`,
        getTheTotalPages:`${PUBLIC_API_URL}/getTheTotalPages`,
        getTheMoviesByCollection:`${PUBLIC_API_URL}/getTheMoviesByCollection`,
        getTheTotalCountOfCollectionMovies:`${PUBLIC_API_URL}/getTheTotalCountOfCollectionMovies`,
        getTheMoviesByYears:`${PUBLIC_API_URL}/getTheMoviesByYears`,
        getTheTotalCountOfYearsMovies:`${PUBLIC_API_URL}/getTheTotalCountOfYearsMovies`,
        getTheMoviesByLanguages:`${PUBLIC_API_URL}/getTheMoviesByLanguages`,
        getTheTotalCountOfLangaugesMovies:`${PUBLIC_API_URL}/getTheTotalCountOfLangaugesMovies`,
        getTheMoviesByGenres:`${PUBLIC_API_URL}/getTheMoviesByGenres`,
        getTheTotalCountOfGenreMovies:`${PUBLIC_API_URL}/getTheTotalCountOfGenreMovies`,
        searchMovies:`${PUBLIC_API_URL}/searchMovies`,
        getTheTotalPagesOfSearches:`${PUBLIC_API_URL}/getTheTotalPagesOfSearches`,
        singleMovieByUrl:`${PUBLIC_API_URL}/singleMovieByUrl`,
        createAMovieRequest:`${PUBLIC_API_URL}/createAMovieRequest`,
        getAllTheMoviesSlug:`${PUBLIC_API_URL}/getAllTheMoviesSlug`,

        
    },
}
