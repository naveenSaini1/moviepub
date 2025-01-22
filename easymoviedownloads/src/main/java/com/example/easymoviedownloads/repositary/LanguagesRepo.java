package com.example.easymoviedownloads.repositary;
/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */

import java.util.List;

import com.example.easymoviedownloads.model.Collections;
import com.example.easymoviedownloads.model.Languages;

public interface LanguagesRepo {
	
	public Integer createLanguage(Languages language);
	public List<Languages> getAllTheLanguagesByList(Integer limit,Integer offset);
	public Integer updateTheLangue(Languages language);
	public Integer deleteTheLanguage(Integer languageId);
	public List<Languages> getAlTheLanguageForMovieUpdateById(Integer movieId);
	public Integer deleteAllTheLangaugesOfMovieByMovieId(Integer movieId);
	public List<Integer> getTheMovieIds(String langaugeName,Integer limit,Integer offset);
	public Integer		 getTheTotalMoviesOfLanguageMovie(String languageName);
}
