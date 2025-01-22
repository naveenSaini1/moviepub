package com.example.easymoviedownloads.repositary;
/**
 * Author: Naveen Saini
 * Date: 11-Jan-2025	
 */
public interface SingleMethodsRepo {
	
	public void insertIntoCollectionMovie(Integer movieId,Integer collectionId);
	 
	public void inserIntoLangaugeMovie(Integer movieId,Integer languageId);
	public void insertIntoGenreMovie(Integer movieId,Integer genreId);
	public void insertIntoYearMovie(Integer movieId,Integer yaearId);
	

}
