package com.example.easymoviedownloads.service;

import java.util.List;

import com.example.easymoviedownloads.model.Languages;

/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */
public interface LanguagesService {
	
	public void insertLanguages(Languages Languagess) throws Exception;
	public List<Languages> getAllTheLanguagessByLimit(Integer page);
	public void	updateLanguagess(Integer LanguagesId,String LanguageNewName) throws Exception;
	public void deleteLanguages (Integer LanguagesId) throws Exception;
	public Integer getTheTotalMoviesCountOfLangaugesMovie(String languageName);


}
