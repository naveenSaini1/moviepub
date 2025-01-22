package com.example.easymoviedownloads.service;

import java.util.List;

import com.example.easymoviedownloads.model.Year;

/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */
public interface YearsService {
	
	public void insertYears(Year Years) throws Exception;
	public List<Year> getAllTheYearsByLimit(Integer page);
	public void	updateYearss(Integer yearsId,String yearsNewName) throws Exception;
	public void deleteYears (Integer yearsId) throws Exception;
	public Integer getTheTotalMoviesCountOfYearsMovie(String yearName);


}
