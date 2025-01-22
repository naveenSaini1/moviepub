package com.example.easymoviedownloads.service;
/**
 * Author: Naveen Saini
 * Date: 21-Jan-2025	
 */

import java.util.List;

import com.example.easymoviedownloads.model.MovieRequest;

public interface MovieRequestService {
	public void createARequest(String email,String message) throws Exception;
	public List<MovieRequest> getAllTheMessages(Integer page);

}
