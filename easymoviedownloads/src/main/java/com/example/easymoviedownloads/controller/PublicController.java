package com.example.easymoviedownloads.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.easymoviedownloads.dto.MovieDto;
import com.example.easymoviedownloads.dto.MovieUpdateDto;
import com.example.easymoviedownloads.dto.SingleMovieDto;
import com.example.easymoviedownloads.dto.SuccesDto;
import com.example.easymoviedownloads.model.Collections;
import com.example.easymoviedownloads.model.Genre;
import com.example.easymoviedownloads.model.Languages;
import com.example.easymoviedownloads.model.Year;
import com.example.easymoviedownloads.service.CollectionsService;
import com.example.easymoviedownloads.service.GenresService;
import com.example.easymoviedownloads.service.LanguagesService;
import com.example.easymoviedownloads.service.MovieRequestService;
import com.example.easymoviedownloads.service.MovieService;
import com.example.easymoviedownloads.service.YearsService;

/**
 * Author: Naveen Saini
 * Date: 09-Jan-2025	
 */
@RestController
@RequestMapping("/api/public")
public class PublicController {
	@Autowired
	private CollectionsService collectionsService;
	@Autowired
	private	GenresService	genresService;
	@Autowired
	private	 LanguagesService languagesService;
	@Autowired
	private  YearsService	yearsService;
	
	@Autowired
	private MovieService		movieService;
	@Autowired
	private	MovieRequestService	movieRequestService;
	
	@GetMapping("/collections/{page}")
	public ResponseEntity<List<Collections>>	getAllTheCollection(@PathVariable("page") Integer page) throws Exception
	{
		return new ResponseEntity<List<Collections>>(collectionsService.getAllTheCollectionsByLimit(page),HttpStatus.OK);
	}
	@GetMapping("/genres/{page}")
	public ResponseEntity<List<Genre>>	getAllTheGenres(@PathVariable("page") Integer page) throws Exception
	{
		return new ResponseEntity<List<Genre>>(genresService.getAllTheGenresByLimit(page),HttpStatus.OK);
	}
	@GetMapping("/languages/{page}")
	public ResponseEntity<List<Languages>>	getAllTheLnaguaes(@PathVariable("page") Integer page) throws Exception
	{
		return new ResponseEntity<List<Languages>>(languagesService.getAllTheLanguagessByLimit(page),HttpStatus.OK);
	}
	@GetMapping("/years/{page}")
	public ResponseEntity<List<Year>>	getAllTheYears(@PathVariable("page") Integer page) throws Exception
	{
		return new ResponseEntity<List<Year>>(yearsService.getAllTheYearsByLimit(page),HttpStatus.OK);
	}
	
	
	@GetMapping("/moviesUpdateDto/{page}")
	public ResponseEntity<List<MovieUpdateDto>> getAllTheMovieUpdateDtoList(@PathVariable("page") Integer page){
		return new ResponseEntity<List<MovieUpdateDto>>(movieService.getAllTheMovieUpdateDto(page),HttpStatus.OK);
	}

	@GetMapping("/singleMovie/{movieId}")
	public ResponseEntity<SingleMovieDto>	getTheSingleMovieDto(@PathVariable("movieId") Integer movieId) throws Exception{
		return new ResponseEntity<SingleMovieDto>(movieService.getTheSingleMovieDtoById(movieId),HttpStatus.OK);
	}
	
	
	@GetMapping("/bannerMovies")
	public ResponseEntity<List<MovieDto>> getTheBannerMovies(){
		return new ResponseEntity<List<MovieDto>>(movieService.getTheBannerMovies(),HttpStatus.OK);
	}
	
	@GetMapping("/latestMovies/{page}")
	public ResponseEntity<List<MovieDto>> getTheLatestMovies(@PathVariable("page") Integer page){
		return new ResponseEntity<List<MovieDto>>(movieService.getTheLatestMovies(page),HttpStatus.OK);
	}
	
	@GetMapping("/getTheTotalPages")
	public ResponseEntity<Integer> getTheTotalPages(){
		return new ResponseEntity<Integer>(movieService.getTheTotalNumberOfMovies(),HttpStatus.OK);
	}
	
//	Here we are getting the movies by cateogries , mean when the user want the mvoies by their categories we will server thos fucntoins by the cateogires

	@GetMapping("/getTheMoviesByCollection/{collectionName}/{page}")
	public ResponseEntity<List<MovieDto>> getTheMoviesByCollections(@PathVariable("collectionName") String collectionName,@PathVariable("page") Integer page){
		return new ResponseEntity<List<MovieDto>>(movieService.getTheMoviesByCollections(collectionName, page),HttpStatus.OK);
	}
	
	
	@GetMapping("/getTheMoviesByGenres/{genreName}/{page}")
	public ResponseEntity<List<MovieDto>> getTheMoviesByGenres(@PathVariable("genreName") String genreName,@PathVariable("page") Integer page){
		return new ResponseEntity<List<MovieDto>>(movieService.getTheMoviesByGernes(genreName, page),HttpStatus.OK);
	}
	
	@GetMapping("/getTheMoviesByYears/{yearName}/{page}")
	public ResponseEntity<List<MovieDto>> getTheMoviesByYears(@PathVariable("yearName") String yearName,@PathVariable("page") Integer page){
		return new ResponseEntity<List<MovieDto>>(movieService.getTheMoviesByYears(yearName, page),HttpStatus.OK);
	}
	
	@GetMapping("/getTheMoviesByLanguages/{langaugeName}/{page}")
	public ResponseEntity<List<MovieDto>> getTheMoviesByLanguages(@PathVariable("langaugeName") String langaugeName,@PathVariable("page") Integer page){
		return new ResponseEntity<List<MovieDto>>(movieService.getTheMoviesByLangauges(langaugeName, page),HttpStatus.OK);
	}
	
	
	// here ends
	
	// here we will send the count of categories movies 
	
	@GetMapping("/getTheTotalCountOfCollectionMovies/{collectionName}")
	public ResponseEntity<Integer> getTheTotalCountOfCollectionMovies(@PathVariable("collectionName") String collectionName){
		return new ResponseEntity<Integer>(collectionsService.getTheTotalMoviesCountOfCollectionMovie(collectionName),HttpStatus.OK);
	}
	
	
	@GetMapping("/getTheTotalCountOfGenreMovies/{genreName}")
	public ResponseEntity<Integer> getTheTotalCountOfGenreMovies(@PathVariable("genreName") String genreName){
		return new ResponseEntity<Integer>(genresService.getTheTotalMoviesCountOfGenreMovie(genreName),HttpStatus.OK);
	}
	
	@GetMapping("/getTheTotalCountOfLangaugesMovies/{languageName}")
	public ResponseEntity<Integer> getTheTotalCountOfLangaugesMovies(@PathVariable("languageName") String languageName){
		return new ResponseEntity<Integer>(languagesService.getTheTotalMoviesCountOfLangaugesMovie(languageName),HttpStatus.OK);
	}
	
	@GetMapping("/getTheTotalCountOfYearsMovies/{yearName}")
	public ResponseEntity<Integer> getTheTotalCountOfYearsMovies(@PathVariable("yearName") String yearName){
		return new ResponseEntity<Integer>(yearsService.getTheTotalMoviesCountOfYearsMovie(yearName),HttpStatus.OK);
	}
	
	// here the things end of the count
	

	@GetMapping("/searchMovies/{query}/{page}")
	public ResponseEntity<List<MovieDto>> searchMovies(@PathVariable("query") String query,@PathVariable("page") Integer page){
		return new ResponseEntity<List<MovieDto>>(movieService.searchMoivesByTitle(query,page),HttpStatus.OK);
	}
	
	@GetMapping("/getTheTotalPagesOfSearches/{query}")
	public ResponseEntity<Integer> getTheTotalPagesOfSearches(@PathVariable("query") String query){
		return new ResponseEntity<Integer>(movieService.getTheTotalNumberOfSearhedMovies(query),HttpStatus.OK);
	}
	
	@GetMapping("/singleMovieByUrl/{url}")
	public ResponseEntity<SingleMovieDto>	singleMovieByUrl(@PathVariable("url") String url) throws Exception{
		return new ResponseEntity<SingleMovieDto>(movieService.getTheSingleMovieDtoByUrl(url),HttpStatus.OK);
	}
	@PostMapping("/createAMovieRequest/{email}/{message}")
	public ResponseEntity<SuccesDto> createAMovieRequest(@PathVariable("email") String email,@PathVariable("message")String message) throws Exception
	{
		
		movieRequestService.createARequest(email, message);
		return new ResponseEntity<SuccesDto>(new SuccesDto("successfully"),HttpStatus.OK);
		
	}
	
	@GetMapping("/getAllTheMoviesSlug")
	public ResponseEntity<List<SingleMovieDto>>	getAllTheMoviesSlug() throws Exception{
		return new ResponseEntity<List<SingleMovieDto>>(movieService.getAllTheMoviesSlug(),HttpStatus.OK);
	}
	
	
	
	

}
