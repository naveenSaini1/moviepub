package com.example.easymoviedownloads.repositary;
/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */

import java.util.List;

import com.example.easymoviedownloads.model.Collections;
import com.example.easymoviedownloads.model.Genre;

public interface GenresRepo {
	
	public Integer createGenre(Genre genre);
	public List<Genre> getAllTheGenresByList(Integer limit,Integer offset);
	public Integer updateTheGenre(Genre genre);
	public Integer deleteTheGenre(Integer genreId);
	public List<Genre> getTheGenreForMovieUpdateById(Integer movieId);
	public Integer deleteAllTheGenresOfMovieByMovieId(Integer movieId);
	public List<Genre> getTheMultipleGenresByMultipleIds(String movieIds);
	public List<Integer> getTheMovieIds(String genreName,Integer limit,Integer offset);
	public Integer		 getTheTotalMoviesOfGenresMovie(String GenreName);

}
