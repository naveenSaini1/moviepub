package com.example.easymoviedownloads.repositary;

import java.util.List;

import com.example.easymoviedownloads.dto.MovieDto;
import com.example.easymoviedownloads.dto.MovieUpdateDto;
import com.example.easymoviedownloads.dto.SingleMovieDto;
import com.example.easymoviedownloads.model.Movie;

/**
 * Author: Naveen Saini
 * Date: 11-Jan-2025	
 */
public interface MovieRepo {
	
	public Integer uploadMove(String name,String keywords,String downloadName,String slug,String imageUrl,String smallDescription,
			String duration,String releaseDate,String bigdescription,String cast);
	
	public List<MovieUpdateDto> getAllTheMovieUpdateDtos(Integer limit,Integer offset);
	
	public SingleMovieDto		getTheSingleMovieDataByMovieId(Integer movieId);
	public void					updateTheMovie(SingleMovieDto singleMovieDto);
	public List<MovieDto>		getTheBannerMovies();
	public List<MovieDto>		getTheLatestMovies(Integer limit,Integer offset);
	public Integer				getTheTotalNumber();
	public List<MovieDto>		getTheMoviesByMovieIds(String movieIds);
	public List<MovieDto>		searchTheMovies(String query,Integer limit,Integer offset);
	public Integer				getTheTotalNumberOfSearchedMovies(String query);
	public SingleMovieDto		getTheSingleMovieDataByUrl(String url);
	public List<SingleMovieDto>	getAllTheMovies();



}
