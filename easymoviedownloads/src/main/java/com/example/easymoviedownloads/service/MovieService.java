package com.example.easymoviedownloads.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.example.easymoviedownloads.dto.MovieDto;
import com.example.easymoviedownloads.dto.MovieUpdateDto;
import com.example.easymoviedownloads.dto.SingleMovieDto;
import com.example.easymoviedownloads.model.Links;

/**
 * Author: Naveen Saini
 * Date: 11-Jan-2025	
 */
public interface MovieService {
	
	public void insertMovie(String name,List<Links> links,String keywords,String downloadName,MultipartFile imageUrl,String smallDescription,
			String duration,String releaseDate,String bigdescription,String cast,String[] collections,String[] languages,String[] years,String[] genres);
	
	public List<MovieUpdateDto> getAllTheMovieUpdateDto(Integer page);
	public SingleMovieDto		getTheSingleMovieDtoById(Integer moiveId) throws Exception;
	
	public void updateMovie(Integer movieId,String name,List<Links> links,String keywords,String downloadName,MultipartFile imageUrl,String smallDescription,
			String duration,String releaseDate,String bigdescription,String cast,String[] collections,String[] languages,String[] years,String[] genres) throws Exception;
	
	public List<MovieDto> getTheBannerMovies();
	public List<MovieDto> getTheLatestMovies(Integer page);
	public Integer			getTheTotalNumberOfMovies();
	public List<MovieDto>   getTheMoviesByCollections(String collectionName,Integer page);
	public List<MovieDto>   getTheMoviesByLangauges(String languageName,Integer page);
	public List<MovieDto>   getTheMoviesByYears(String yearName,Integer page);
	public List<MovieDto>   getTheMoviesByGernes(String genreName,Integer page);
	public List<MovieDto>   searchMoivesByTitle(String query,Integer page);
	public Integer			getTheTotalNumberOfSearhedMovies(String query);
	public SingleMovieDto	getTheSingleMovieDtoByUrl(String url) throws Exception;
	public List<SingleMovieDto>	getAllTheMoviesSlug();


	



}
