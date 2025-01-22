package com.example.easymoviedownloads.repositaryimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.easymoviedownloads.constants.SqlConstants;
import com.example.easymoviedownloads.model.Genre;
import com.example.easymoviedownloads.repositary.GenresRepo;
import com.example.easymoviedownloads.rowmapper.CommonMethodsRowMapper;
import com.example.easymoviedownloads.rowmapper.GenresRowMapper;
import com.example.easymoviedownloads.rowmapper.YearRowMapper;

/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */
@Repository
public class GenresRepoImpl implements GenresRepo {
	@Autowired
	private JdbcTemplate  jdbcTemplate;
	
	@Autowired
	private SqlConstants	sqlConstants;

	@Override
	public Integer createGenre(Genre genre) {
		
		
		try {
			
			return jdbcTemplate.update(sqlConstants.INSERT_INTO_GENRES,genre.getName());
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return 0;
	}

	@Override
	public List<Genre> getAllTheGenresByList(Integer limit, Integer offset) {
	try {
			
			return jdbcTemplate.query(sqlConstants.GET_THE_LIST_GENRES_BY_LIMITS,new GenresRowMapper.GetTheGenrs(),limit,offset);
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return new ArrayList<>();
	}

	@Override
	public Integer updateTheGenre(Genre genre) {
	try {
			
			return jdbcTemplate.update(sqlConstants.UPDATE_THE_GENRES_BY_ID,genre.getName(),genre.getGenreId());
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return 0;
	}

	@Override
	public Integer deleteTheGenre(Integer genreId) {
try {
			
			return jdbcTemplate.update(sqlConstants.DELETE_THE_GENRES_BY_ID,genreId);
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return 0;
	}

	@Override
	public List<Genre> getTheGenreForMovieUpdateById(Integer movieId) {
		try {
			
			return jdbcTemplate.query(sqlConstants.GET_THE_GENRES_BY_MOVIE_ID,new GenresRowMapper.GetTheGenrs(),movieId);
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return new ArrayList<>();
	}

	@Override
	public Integer deleteAllTheGenresOfMovieByMovieId(Integer movieId) {
		System.out.println(sqlConstants.DELETE_ALL_THE_GENRES_OF_MVOIE_BY_MOVIE_ID+" sqlConstants.DELETE_ALL_THE_GENRES_OF_MVOIE_BY_MOVIE_ID");
		return jdbcTemplate.update(sqlConstants.DELETE_ALL_THE_GENRES_OF_MVOIE_BY_MOVIE_ID,movieId);
	}

	@Override
	public List<Genre> getTheMultipleGenresByMultipleIds(String movieIds) {
		return jdbcTemplate.query(String.format(sqlConstants.GET_THE_MULTIPLE_GERNRES_BY_MOVIEIDS,movieIds), new GenresRowMapper.GetTheMultipleGenresByMultipleIds());
	}

	@Override
	public List<Integer> getTheMovieIds(String genreName, Integer limit, Integer offset) {
		return jdbcTemplate.query(sqlConstants.GET_THE_MOVIEIDS_BY_GENRE_NAME,new CommonMethodsRowMapper.GetTheMoviesIds(),genreName,limit,offset);
	}

	@Override
	public Integer getTheTotalMoviesOfGenresMovie(String genreName) {
		return jdbcTemplate.query(sqlConstants.GET_THE_TOTAL_NUMBER_MOVIEIDS_BY_GENRE_NAME, new CommonMethodsRowMapper.GetTheTotalCountOfMovies(),genreName);
	}

}
