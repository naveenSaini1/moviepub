package com.example.easymoviedownloads.repositary;
/**
 * Author: Naveen Saini
 * Date: 21-Jan-2025	
 */

import java.util.List;

import com.example.easymoviedownloads.model.MovieRequest;

public interface MovieRequestRepo {

		public Integer createARequest(String email,String message);
		public List<MovieRequest> getAllTheMessage(Integer limit,Integer offset);
}
