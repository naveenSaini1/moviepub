package com.example.easymoviedownloads.repositaryimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.easymoviedownloads.constants.SqlConstants;
import com.example.easymoviedownloads.model.Languages;
import com.example.easymoviedownloads.repositary.LanguagesRepo;
import com.example.easymoviedownloads.rowmapper.CommonMethodsRowMapper;
import com.example.easymoviedownloads.rowmapper.LanguagesRowMapper;

/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */
@Repository
public class LanguagesRepoImpl implements LanguagesRepo {
	@Autowired
	private JdbcTemplate  jdbcTemplate;
	
	@Autowired
	private SqlConstants	sqlConstants;

	@Override
	public Integer createLanguage(Languages language) {
		
		
		try {
			
			return jdbcTemplate.update(sqlConstants.INSERT_INTO_LANGUAGES,language.getName());
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return 0;
	}

	@Override
	public List<Languages> getAllTheLanguagesByList(Integer limit, Integer offset) {
	try {
			
			return jdbcTemplate.query(sqlConstants.GET_THE_LIST_LANGUAGES_BY_LIMITS,new LanguagesRowMapper.GetTheLanguages(),limit,offset);
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return new ArrayList<>();
	}

	@Override
	public Integer updateTheLangue(Languages language) {
	try {
			
			return jdbcTemplate.update(sqlConstants.UPDATE_THE_LANGUAGES_BY_ID,language.getName(),language.getLanguagesId());
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return 0;
	}

	@Override
	public Integer deleteTheLanguage(Integer langugeId) {
try {
			
			return jdbcTemplate.update(sqlConstants.DELETE_THE_LANGUAGES_BY_ID,langugeId);
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return 0;
	}

	@Override
	public List<Languages> getAlTheLanguageForMovieUpdateById(Integer movieId) {
	try {
			
			return jdbcTemplate.query(sqlConstants.GET_THE_LANGUAGES_BY_MOVIE_ID,new LanguagesRowMapper.GetTheLanguages(),movieId);
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return new ArrayList<>();
	}

	@Override
	public Integer deleteAllTheLangaugesOfMovieByMovieId(Integer movieId) {
		// TODO Auto-generated method stub
		return jdbcTemplate.update(sqlConstants.DELETE_ALL_THE_LANGAUGES_OF_MOVIE_BY_MOVIE_ID,movieId);
	}

	@Override
	public List<Integer> getTheMovieIds(String langaugeName, Integer limit, Integer offset) {
		return jdbcTemplate.query(sqlConstants.GET_THE_MOVIEIDS_BY_LANGAUGE_MOVIE,new CommonMethodsRowMapper.GetTheMoviesIds(),langaugeName,limit,offset);
	}

	@Override
	public Integer getTheTotalMoviesOfLanguageMovie(String languageName) {
		return jdbcTemplate.query(sqlConstants.GET_THE_TOTAL_NUMBER_OF_LANGUAGES_MOVIES, new CommonMethodsRowMapper.GetTheTotalCountOfMovies(),languageName);

	}

}
