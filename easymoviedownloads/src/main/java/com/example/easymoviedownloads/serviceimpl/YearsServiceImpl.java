package com.example.easymoviedownloads.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.easymoviedownloads.constants.DefaultConstants;
import com.example.easymoviedownloads.model.Year;
import com.example.easymoviedownloads.repositary.YearsRepo;
import com.example.easymoviedownloads.service.YearsService;

/**
 * Author: Naveen Saini
 * Date: 10-Jan-2025	
 */
@Service
public class YearsServiceImpl implements YearsService {

	@Autowired
	private YearsRepo	yearRepo;
	@Override
	public void insertYears(Year year) throws Exception {
		if(year==null || year.getName().equals(""))
			throw new Exception("please put the valid details");
		
		if(yearRepo.createYear(year)==0)
			throw new Exception("the year did not made it");
		
		
		
	}

	@Override
	public List<Year> getAllTheYearsByLimit(Integer page) {
		Integer									defualMessageLimit	=	DefaultConstants.DEFAULT_LIMIT_FOR_CATEG;
		Integer									offset				=	(page==1)?0:(page-1)*defualMessageLimit;
		
		return yearRepo.getAllTheYearsByList(defualMessageLimit, offset);
	
	}

	@Override
	public void updateYearss(Integer yearsId, String yearsNewName) throws Exception {
		if(yearsId==0 || yearsNewName.equals(""))
			throw new Exception("Please enter valid value to the field");
		
		Year year=new Year();
		year.setName(yearsNewName);
		year.setYearId(yearsId);
		if(yearRepo.updateTheYear(year)==0)
			throw new Exception("the value of the year has not updated");
		
	}

	@Override
	public void deleteYears(Integer yearsId) throws Exception {
		if(yearsId==0)
			throw new Exception("the yearsId is null or zero please enter valid id");
		
		if(yearRepo.deleteTheYear(yearsId)==0)
			throw new Exception(" the year you try to delte it could't delete");
		
	}

	@Override
	public Integer getTheTotalMoviesCountOfYearsMovie(String yearName) {
		Integer 	totalPage			=	0;
		
		totalPage	=	yearRepo.getTheTotalMoviesOfYearsMovie(yearName);
		totalPage 	=(int)Math.ceil((double)totalPage/DefaultConstants.DEFAULT_LIMIT_FOR_MOVIES);
		return totalPage;
	}

}
