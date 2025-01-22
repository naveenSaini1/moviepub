package com.example.easymoviedownloads.service;

import java.util.List;

import com.example.easymoviedownloads.model.Genre;

/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */
public interface GenresService {
	
	public void insertGenre(Genre genre) throws Exception;
	public List<Genre> getAllTheGenresByLimit(Integer page);
	public void	updateGenre(Integer genreId,String genreNewName) throws Exception;
	public void deleteGenr (Integer genreId) throws Exception;
	public Integer getTheTotalMoviesCountOfGenreMovie(String genreName);



}
