package com.example.easymoviedownloads.repositaryimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.easymoviedownloads.constants.SqlConstants;
import com.example.easymoviedownloads.model.Year;
import com.example.easymoviedownloads.repositary.YearsRepo;
import com.example.easymoviedownloads.rowmapper.CommonMethodsRowMapper;
import com.example.easymoviedownloads.rowmapper.YearRowMapper;

/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */
@Repository
public class YearsRepoImpl implements YearsRepo {
	@Autowired
	private JdbcTemplate  jdbcTemplate;
	
	@Autowired
	private SqlConstants	sqlConstants;

	@Override
	public Integer createYear(Year year) {
		
		
		try {
			
			return jdbcTemplate.update(sqlConstants.INSERT_INTO_YEARS,year.getName());
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return 0;
	}

	@Override
	public List<Year> getAllTheYearsByList(Integer limit, Integer offset) {
	try {
			
			return jdbcTemplate.query(sqlConstants.GET_THE_LIST_YEARS_BY_LIMITS,new YearRowMapper.GetTheYears(),limit,offset);
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return new ArrayList<>();
	}

	@Override
	public Integer updateTheYear(Year year) {
	try {
			
			return jdbcTemplate.update(sqlConstants.UPDATE_THE_YEARS_BY_ID,year.getName(),year.getYearId());
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return 0;
	}

	@Override
	public Integer deleteTheYear(Integer yearId) {
try {
			
			return jdbcTemplate.update(sqlConstants.DELETE_THE_YEARS_BY_ID,yearId);
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return 0;
	}

	@Override
	public List<Year> getTheYearForMovieUpdateById(Integer movieId) {
	try {
			
			return jdbcTemplate.query(sqlConstants.GET_THE_YEARS_BY_MOVIE_ID,new YearRowMapper.GetTheYears(),movieId);
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return new ArrayList<>();
	}

	@Override
	public Integer deleteAllTheYearsOfMovieByMovieId(Integer movieId) {
		return jdbcTemplate.update(sqlConstants.DELETE_ALL_THE_YEARS_OF_MOVIE_BY_MOVIE_ID,movieId);
	}

	@Override
	public List<Year> getTheMultipleYearsByMultipleMoviesId(String movieIds) {
		return jdbcTemplate.query(String.format(sqlConstants.GET_THE_MULTIPLE_YEARS_BY_MOVIEIDS,movieIds), new YearRowMapper.GetTheMultipleYearsByMultipleMoviesId());
	}

	@Override
	public List<Integer> getTheMovieIds(String yearName, Integer limit, Integer offset) {
		return jdbcTemplate.query(sqlConstants.GET_THE_MOVIEIDS_BY_YEARS,new CommonMethodsRowMapper.GetTheMoviesIds(),yearName,limit,offset);
	}

	@Override
	public Integer getTheTotalMoviesOfYearsMovie(String yearName) {
		return jdbcTemplate.query(sqlConstants.GET_THE_TOTAL_NUMBER_MOVIEIDS_BY_YEARS, new CommonMethodsRowMapper.GetTheTotalCountOfMovies(),yearName);
	}

}
