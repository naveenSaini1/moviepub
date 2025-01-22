package com.example.easymoviedownloads.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.easymoviedownloads.constants.DefaultConstants;
import com.example.easymoviedownloads.model.Collections;
import com.example.easymoviedownloads.repositary.CollectionsRepo;
import com.example.easymoviedownloads.service.CollectionsService;

/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */
@Service
public class CollectionsServiceImpl implements CollectionsService{
	
	@Autowired
	private CollectionsRepo	collectionsRepo;

	@Override
	public String insertCollection(Collections collections) throws Exception {
		Integer		responseId		=	0;
		if(collections.getName()==null || collections.getName().equals(""))
			throw new Exception("please Enter valid name");
		
		responseId	=	collectionsRepo.createCollection(collections);
		if(responseId==0)
			throw new Exception("collection Not created ");
		
		return "Done";
			
		

		
	}

	@Override
	public List<Collections> getAllTheCollectionsByLimit(Integer page) {
		Integer									defualMessageLimit	=	DefaultConstants.DEFAULT_LIMIT_FOR_CATEG;
		Integer									offset				=	(page==1)?0:(page-1)*defualMessageLimit;
		
		return collectionsRepo.getAllTheCollectionsByList(defualMessageLimit, offset);
	}

	@Override
	public void updateCollections(Integer collectionId, String collectionNewName) throws Exception {
		if(collectionId==null || collectionId==0 || collectionNewName==null || collectionNewName.equals(""))
			throw new Exception("please Enter valid name");
		
		Collections collection=new Collections();
		collection.setCollectionsId(collectionId);
		collection.setName(collectionNewName);
		if(collectionsRepo.updateTheCollection(collection)==0)
			throw new Exception("please Enter valid name");
			
	
	}

	@Override
	public void deleteCollection(Integer collectionId) throws Exception {
		
		if(collectionId==0)
			throw new Exception("please Enter valid name");
		
		if(collectionsRepo.deleteTheCollectioin(collectionId)==0)
			throw new Exception("The collection did not deleted");
		

		
	}

	@Override
	public Integer getTheTotalMoviesCountOfCollectionMovie(String collectionName) {
		Integer 	totalPage			=	0;
		
		totalPage	=	collectionsRepo.getTheTotalMoviesOfCollectionMovie(collectionName);
		totalPage 	=(int)Math.ceil((double)totalPage/DefaultConstants.DEFAULT_LIMIT_FOR_MOVIES);
		return totalPage;
	}

}
