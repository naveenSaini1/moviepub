package com.example.easymoviedownloads.repositary;
/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */

import java.util.List;

import com.example.easymoviedownloads.model.Collections;
import com.example.easymoviedownloads.model.Year;

public interface YearsRepo {
	
	public Integer createYear(Year year);
	public List<Year> getAllTheYearsByList(Integer limit,Integer offset);
	public Integer updateTheYear(Year year);
	public Integer deleteTheYear(Integer yearid);
	public List<Year> getTheYearForMovieUpdateById(Integer movieId);
	public Integer deleteAllTheYearsOfMovieByMovieId(Integer movieId);
	public List<Year> getTheMultipleYearsByMultipleMoviesId(String movieIds);
	public List<Integer> getTheMovieIds(String yearName,Integer limit,Integer offset);
	public Integer		 getTheTotalMoviesOfYearsMovie(String yearName);
}
