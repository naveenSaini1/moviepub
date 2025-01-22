package com.example.easymoviedownloads.repositaryimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.easymoviedownloads.constants.SqlConstants;
import com.example.easymoviedownloads.model.Collections;
import com.example.easymoviedownloads.repositary.CollectionsRepo;
import com.example.easymoviedownloads.rowmapper.CollectionRowMapper;
import com.example.easymoviedownloads.rowmapper.CommonMethodsRowMapper;
import com.example.easymoviedownloads.rowmapper.MovieRowMapper;

/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */
@Repository
public class CollectionsRepoImpl implements CollectionsRepo {
	@Autowired
	private JdbcTemplate  jdbcTemplate;
	
	@Autowired
	private SqlConstants	sqlConstants;

	@Override
	public Integer createCollection(Collections collection) {
		Integer		responseId	=	0;
		
		try {
			
			responseId 	=	 jdbcTemplate.update(sqlConstants.INSERT_INTO_COLLECTIONS,collection.getName());
			System.out.println(responseId);
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return responseId;
	}

	@Override
	public List<Collections> getAllTheCollectionsByList(Integer limit, Integer offset) {
	try {
			
		System.out.println(limit+"  limit "+offset+"  con"+sqlConstants.GET_THE_LIST_COLLECTIONS_BY_LIMITS);
		
			return jdbcTemplate.query(sqlConstants.GET_THE_LIST_COLLECTIONS_BY_LIMITS,new CollectionRowMapper.GetTheCollections(),limit,offset);
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return new ArrayList<>();
	}

	@Override
	public Integer updateTheCollection(Collections collection) {
	try {
			
			return jdbcTemplate.update(sqlConstants.UPDATE_THE_COLLECTIONS_BY_ID,collection.getName(),collection.getCollectionsId());
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return 0;
	}

	@Override
	public Integer deleteTheCollectioin(Integer collectionId) {
try {
			
			return jdbcTemplate.update(sqlConstants.DELETE_THE_COLLECTIONS_BY_ID,collectionId);
		}
		catch(Exception i) {
			System.out.println("Something Went Wrong"+i.getMessage());
			
		}
		return 0;
	}

	@Override
	public List<Collections> getTheCollections(Integer movieId) {
		try {
			
			
				return jdbcTemplate.query(sqlConstants.GET_THE_COLLECTIONS_BY_MOVIE_ID,new CollectionRowMapper.GetTheCollections(),movieId);
			}
			catch(Exception i) {
				System.out.println("Something Went Wrong"+i.getMessage());
				
			}
			return new ArrayList<>();
	}

	@Override
	public void deleteAllTheCollectionOfMovieByMovieId(Integer movieId) {
		
		 jdbcTemplate.update(sqlConstants.DELETE_ALL_THE_COLLECTION_OF_MOVIE_BY_MVOIE_ID,movieId);

		
	}

	@Override
	public List<Integer> getTheMovieIds(String collectionName,Integer limit,Integer offset) {
		return jdbcTemplate.query(sqlConstants.GET_THE_MOVIEIDS_BY_COLLECTION_NAME,new CommonMethodsRowMapper.GetTheMoviesIds(),collectionName,limit,offset);
	}

	@Override
	public Integer getTheTotalMoviesOfCollectionMovie(String collectionName) {
		System.out.println(sqlConstants.GET_THE_TOTAL_NUMBER_OF_COLLECTION_MOVIES+" total");
		return jdbcTemplate.query(sqlConstants.GET_THE_TOTAL_NUMBER_OF_COLLECTION_MOVIES, new CommonMethodsRowMapper.GetTheTotalCountOfMovies(),collectionName);
	}

}
