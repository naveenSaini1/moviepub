package com.example.easymoviedownloads.repositary;
/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */

import java.util.List;
import com.example.easymoviedownloads.model.Collections;

public interface CollectionsRepo {

	public Integer createCollection(Collections collection);
	public List<Collections> getAllTheCollectionsByList(Integer limit,Integer offset);
	public Integer updateTheCollection(Collections collection);
	public Integer deleteTheCollectioin(Integer collectionId);
	public List<Collections> getTheCollections(Integer movieId);
	public void deleteAllTheCollectionOfMovieByMovieId(Integer movieId);
	public List<Integer> getTheMovieIds(String collectionName,Integer limit,Integer offset);
	public Integer		 getTheTotalMoviesOfCollectionMovie(String collectionName);
	
}
