package com.example.easymoviedownloads.repositaryimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.easymoviedownloads.constants.SqlConstants;
import com.example.easymoviedownloads.repositary.SingleMethodsRepo;

/**
 * Author: Naveen Saini
 * Date: 11-Jan-2025	
 */
@Repository
public class SingleMethodRepoImpl  implements SingleMethodsRepo{
	
	@Autowired
	private JdbcTemplate   jdbcTemplate;
	
	@Autowired
	private SqlConstants	sqlConstants;
	

	@Override
	public void insertIntoCollectionMovie(Integer movieId, Integer collectionId) {

		jdbcTemplate.update(sqlConstants.INSERT_INTO_COLLECTION_MOVIES,movieId,collectionId);
		
	}

	@Override
	public void inserIntoLangaugeMovie(Integer movieId, Integer langagueId) {
		jdbcTemplate.update(sqlConstants.INSERT_INTO_LANGUAGE_MOVIE,movieId,langagueId);
		
	}

	@Override
	public void insertIntoGenreMovie(Integer movieId, Integer genreId) {
		jdbcTemplate.update(sqlConstants.INSERT_INTO_GENRE_MOVIE,movieId,genreId);		
	}

	@Override
	public void insertIntoYearMovie(Integer movieId, Integer yearId) {

		jdbcTemplate.update(sqlConstants.INSERT_INTO_YEAR_MOVIE,movieId,yearId);
	}

}
