package com.example.easymoviedownloads.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.easymoviedownloads.constants.DefaultConstants;
import com.example.easymoviedownloads.model.Collections;
import com.example.easymoviedownloads.model.Languages;
import com.example.easymoviedownloads.repositary.LanguagesRepo;
import com.example.easymoviedownloads.service.LanguagesService;

/**
 * Author: Naveen Saini
 * Date: 10-Jan-2025	
 */
@Service
public class LanguageServiceImpl implements LanguagesService {
	@Autowired
	private LanguagesRepo	languagesRepo;

	@Override
	public void insertLanguages(Languages languages) throws Exception {
		Integer		responseId		=	0;
		if(languages.getName()==null || languages.getName().equals(""))
			throw new Exception("please Enter valid name");
		
		responseId	=	languagesRepo.createLanguage(languages);
		if(responseId==0)
			throw new Exception("collection Not created ");
		
	}

	@Override
	public List<Languages> getAllTheLanguagessByLimit(Integer page) {
		Integer									defualMessageLimit	=	DefaultConstants.DEFAULT_LIMIT_FOR_CATEG;
		Integer									offset				=	(page==1)?0:(page-1)*defualMessageLimit;
		
		return languagesRepo.getAllTheLanguagesByList(defualMessageLimit, offset);
	}

	@Override
	public void updateLanguagess(Integer languagesId, String languageNewName) throws Exception {
		if(languagesId==null || languagesId==0 || languageNewName==null || languageNewName.equals(""))
			throw new Exception("please Enter valid name");
		
		Languages language=new Languages();
		language.setLanguagesId(languagesId);
		language.setName(languageNewName);
		if(languagesRepo.updateTheLangue(language)==0)
			throw new Exception("please Enter valid name");
		
	}

	@Override
	public void deleteLanguages(Integer languagesId) throws Exception {
		
		if(languagesId==0)
			throw new Exception("please Enter valid Id");
		
		if(languagesRepo.deleteTheLanguage(languagesId)==0)
			throw new Exception("The language could not deleted");
	
		
	}

	@Override
	public Integer getTheTotalMoviesCountOfLangaugesMovie(String languageName) {
		Integer 	totalPage			=	0;
		
		totalPage	=	languagesRepo.getTheTotalMoviesOfLanguageMovie(languageName);
		totalPage 	=(int)Math.ceil((double)totalPage/DefaultConstants.DEFAULT_LIMIT_FOR_MOVIES);
		return totalPage;
	}

}
