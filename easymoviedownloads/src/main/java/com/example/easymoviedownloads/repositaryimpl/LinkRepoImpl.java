package com.example.easymoviedownloads.repositaryimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.easymoviedownloads.constants.SqlConstants;
import com.example.easymoviedownloads.model.Links;
import com.example.easymoviedownloads.repositary.LinkRepo;
import com.example.easymoviedownloads.rowmapper.LinksRowMqpper;

/**
 * Author: Naveen Saini
 * Date: 14-Jan-2025	
 */
@Repository
public class LinkRepoImpl  implements LinkRepo{

	@Autowired
	private JdbcTemplate  jdbcTemplate;
	
	@Autowired
	private SqlConstants	sqlConstants;

	
	@Override
	public Integer insertLink(Integer movieId, String name, String url) {
	
	 
	 return jdbcTemplate.update(sqlConstants.INSERT_INTO_LINK,movieId,name,url);
	 
		
	}


	@Override
	public List<Links> getTheAllLinks(Integer movieId) {
		
		return jdbcTemplate.query(sqlConstants.GET_THE_ALL_LINKS_BY_ID,new LinksRowMqpper.GetTheAllLinksByMovieId(), movieId);
	}


	@Override
	public Integer deleteAllTheLinksOfMovieByMovieId(Integer movieId) {
		
		return jdbcTemplate.update(sqlConstants.DELETE_ALL_THE_LINKS_OF_MOVIE_BY_MOVIE_ID,movieId);
	}

}
