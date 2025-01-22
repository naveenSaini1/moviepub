package com.example.easymoviedownloads.repositary;
/**
 * Author: Naveen Saini
 * Date: 14-Jan-2025	
 */

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.easymoviedownloads.model.Links;

public interface LinkRepo {
	
	public Integer insertLink(Integer movieId,String name ,String url);
	
	public List<Links> getTheAllLinks(Integer movieId);
	public Integer		deleteAllTheLinksOfMovieByMovieId(Integer movieId);
	

}
