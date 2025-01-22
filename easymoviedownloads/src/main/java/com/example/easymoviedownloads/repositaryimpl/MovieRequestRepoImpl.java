package com.example.easymoviedownloads.repositaryimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.easymoviedownloads.constants.SqlConstants;
import com.example.easymoviedownloads.model.MovieRequest;
import com.example.easymoviedownloads.repositary.MovieRequestRepo;
import com.example.easymoviedownloads.rowmapper.MovieRequestRowMapper;

/**
 * Author: Naveen Saini
 * Date: 21-Jan-2025	
 */
@Repository
public  class MovieRequestRepoImpl  implements MovieRequestRepo{

	@Autowired
	private JdbcTemplate	jdbcTemplate;
	@Autowired
	private	SqlConstants	sqlConstants;
	@Override
	public Integer createARequest(String email, String message) {
		return jdbcTemplate.update(sqlConstants.CREATE_A_REQUEST,email,message);
	}
	@Override
	public List<MovieRequest> getAllTheMessage(Integer limit, Integer offset) {
		return jdbcTemplate.query(sqlConstants.GET_ALL_THE_MESSAGES,new MovieRequestRowMapper.GetTheMessages(), limit,offset);
	}
	

}
