package com.example.easymoviedownloads.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.easymoviedownloads.constants.DefaultConstants;
import com.example.easymoviedownloads.model.MovieRequest;
import com.example.easymoviedownloads.repositary.MovieRequestRepo;
import com.example.easymoviedownloads.service.MovieRequestService;

/**
 * Author: Naveen Saini
 * Date: 21-Jan-2025	
 */
@Service
public class MovieRequestServiceImpl implements MovieRequestService {
	
	@Autowired
	private MovieRequestRepo	movieRequestRepo;
	

	@Override
	public void createARequest(String email,String message) throws Exception {
		if(email==null || email.trim().equals("") || email.length()>100 || message==null || message.trim().equals("") || message.length()>200)
			throw new Exception(" Please Enter a valid details");
		
		movieRequestRepo.createARequest(email, message);
		
	}

	@Override
	public List<MovieRequest> getAllTheMessages(Integer page) {
		Integer									defualMessageLimit	=	DefaultConstants.DEFAULT_LIMIT_FOR_MOVIES;
		Integer									offset				=	(page==1)?0:(page-1)*defualMessageLimit;
		
	
		return movieRequestRepo.getAllTheMessage(defualMessageLimit,offset);
	}

}
