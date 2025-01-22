package com.example.easymoviedownloads.service;

import java.util.List;

import com.example.easymoviedownloads.model.Collections;

/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */
public interface CollectionsService {

	public String insertCollection(Collections collections) throws Exception;
	public List<Collections> getAllTheCollectionsByLimit(Integer page);
	public void	updateCollections(Integer collectionId,String collectionNewName) throws Exception;
	public void deleteCollection (Integer collectionId) throws Exception;
	public Integer getTheTotalMoviesCountOfCollectionMovie(String collectionName);
}
