package com.example.easymoviedownloads.constants;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;


/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */

@Component
@PropertySource("classpath:sql.properties")
public class SqlConstants {
	// collections
	@Value("${INSERT_INTO_COLLECTIONS}")
	public  String 	INSERT_INTO_COLLECTIONS;
	
	@Value("${GET_THE_LIST_COLLECTIONS_BY_LIMITS}")
	public   String	GET_THE_LIST_COLLECTIONS_BY_LIMITS;
	
	@Value("${UPDATE_THE_COLLECTIONS_BY_ID}")
	public 	String	UPDATE_THE_COLLECTIONS_BY_ID;
	
	@Value("${DELETE_THE_COLLECTIONS_BY_ID}")
	public 	String	DELETE_THE_COLLECTIONS_BY_ID;
	
	@Value("${GET_THE_MOVIEIDS_BY_COLLECTION_NAME}")
	public	String	GET_THE_MOVIEIDS_BY_COLLECTION_NAME;
	
	@Value("${GET_THE_TOTAL_NUMBER_OF_COLLECTION_MOVIES}")
	public	String	GET_THE_TOTAL_NUMBER_OF_COLLECTION_MOVIES;
	
//	 years
	
	@Value("${INSERT_INTO_YEARS}")
	public  String 	INSERT_INTO_YEARS;
	
	@Value("${GET_THE_LIST_YEARS_BY_LIMITS}")
	public  String	GET_THE_LIST_YEARS_BY_LIMITS;
	
	@Value("${UPDATE_THE_YEARS_BY_ID}")
	public 	String	UPDATE_THE_YEARS_BY_ID;
	
	@Value("${DELETE_THE_YEARS_BY_ID}")
	public 	String	DELETE_THE_YEARS_BY_ID;
	
	@Value("${GET_THE_MULTIPLE_YEARS_BY_MOVIEIDS}")
	public   String GET_THE_MULTIPLE_YEARS_BY_MOVIEIDS;
	@Value("${GET_THE_MOVIEIDS_BY_YEARS}")
	public	String	GET_THE_MOVIEIDS_BY_YEARS;
	
	@Value("${GET_THE_TOTAL_NUMBER_MOVIEIDS_BY_YEARS}")
	public	String	GET_THE_TOTAL_NUMBER_MOVIEIDS_BY_YEARS;
	
//	 languages
	
	@Value("${INSERT_INTO_LANGUAGES}")
	public  String 	INSERT_INTO_LANGUAGES;
	
	@Value("${GET_THE_LIST_LANGUAGES_BY_LIMITS}")
	public  String	GET_THE_LIST_LANGUAGES_BY_LIMITS;
	
	@Value("${UPDATE_THE_LANGUAGES_BY_ID}")
	public 	String	UPDATE_THE_LANGUAGES_BY_ID;
	
	@Value("${DELETE_THE_LANGUAGES_BY_ID}")
	public 	String	DELETE_THE_LANGUAGES_BY_ID;
	
	@Value("${GET_THE_MOVIEIDS_BY_LANGAUGE_MOVIE}")
	public	String GET_THE_MOVIEIDS_BY_LANGAUGE_MOVIE;
	
	@Value("${GET_THE_TOTAL_NUMBER_OF_LANGUAGES_MOVIES}")
	public	String GET_THE_TOTAL_NUMBER_OF_LANGUAGES_MOVIES;
	
	
	 
//	 genre
	
	@Value("${INSERT_INTO_GENRES}")
	public  String 	INSERT_INTO_GENRES;
	
	@Value("${GET_THE_LIST_GENRES_BY_LIMITS}")
	public  String	GET_THE_LIST_GENRES_BY_LIMITS;
	
	@Value("${UPDATE_THE_GENRES_BY_ID}")
	public 	String	UPDATE_THE_GENRES_BY_ID;
	
	@Value("${DELETE_THE_GENRES_BY_ID}")
	public 	String	DELETE_THE_GENRES_BY_ID;
	
	@Value("${GET_THE_MULTIPLE_GERNRES_BY_MOVIEIDS}")
	public	String 	GET_THE_MULTIPLE_GERNRES_BY_MOVIEIDS;
	
	@Value("${GET_THE_MOVIEIDS_BY_GENRE_NAME}")
	public	String	GET_THE_MOVIEIDS_BY_GENRE_NAME;
	
	@Value("${GET_THE_TOTAL_NUMBER_MOVIEIDS_BY_GENRE_NAME}")
	public	String	GET_THE_TOTAL_NUMBER_MOVIEIDS_BY_GENRE_NAME;
	
	
//	movies
	
	@Value("${INSERT_INTO_MOVIES}")
	public 	String	INSERT_INTO_MOVIES;
	@Value("${GET_THE_MOVIES_WITH_UPDATE_DTO}")
	public	String GET_THE_MOVIES_WITH_UPDATE_DTO;
	@Value("${GET_THE_SINGLE_MOVIES_BY_MOVIEID}")
	public	String GET_THE_SINGLE_MOVIES_BY_MOVIEID;
	@Value("${UPDATE_THE_MVOIE_BY_MOVIE_ID}")
	public  String	UPDATE_THE_MVOIE_BY_MOVIE_ID;
	@Value("${SELECT_BANNER_MOVIES}")
	public	String SELECT_BANNER_MOVIES;
	@Value("${SELECT_LATEST_MOVIES}")
	public	String SELECT_LATEST_MOVIES;
	
	@Value("${GET_THE_TOTAL_NUMBER_OF_MOVIES}")
	public	String	GET_THE_TOTAL_NUMBER_OF_MOVIES;
	
	@Value("${GET_THE_MVOIES_BY_MOVIEIDS}")
	public	String	GET_THE_MVOIES_BY_MOVIEIDS;
	
	@Value("${SEARCH_MOVIES_BY_TITLE}")
	public	String	SEARCH_MOVIES_BY_TITLE;
	
	@Value("${GET_THE_TOTAL_NUMBER_OF_SEARCH_MOVIES}")
	public	String	GET_THE_TOTAL_NUMBER_OF_SEARCH_MOVIES;
	@Value("${GET_THE_SINGLE_MOVIES_BY_URL}")
	public	String	GET_THE_SINGLE_MOVIES_BY_URL;
	@Value("${GET_THE_ALL_MOVIES}")
	public	String GET_THE_ALL_MOVIES;
	
//	collection_movie
	
	@Value("${INSERT_INTO_COLLECTION_MOVIES}")
	public 	String	INSERT_INTO_COLLECTION_MOVIES;
	@Value("${GET_THE_COLLECTIONS_BY_MOVIE_ID}")
	public	String	GET_THE_COLLECTIONS_BY_MOVIE_ID;
	@Value("${DELETE_ALL_THE_COLLECTION_OF_MOVIE_BY_MVOIE_ID}")
	public	String	DELETE_ALL_THE_COLLECTION_OF_MOVIE_BY_MVOIE_ID;
	
	
	
//	genre_movie
	
	@Value("${INSERT_INTO_GENRE_MOVIE}")
	public 	String	INSERT_INTO_GENRE_MOVIE;
	@Value("${GET_THE_GENRES_BY_MOVIE_ID}")
	public	String	GET_THE_GENRES_BY_MOVIE_ID;
	@Value("${DELETE_ALL_THE_GENRES_OF_MVOIE_BY_MOVIE_ID}")
	public String DELETE_ALL_THE_GENRES_OF_MVOIE_BY_MOVIE_ID;
	
//	year_movie
	
	@Value("${INSERT_INTO_YEAR_MOVIE}")
	public 	String	INSERT_INTO_YEAR_MOVIE;
	@Value("${GET_THE_YEARS_BY_MOVIE_ID}")
	public	String	GET_THE_YEARS_BY_MOVIE_ID;
	@Value("${DELETE_ALL_THE_YEARS_OF_MOVIE_BY_MOVIE_ID}")
	public	String DELETE_ALL_THE_YEARS_OF_MOVIE_BY_MOVIE_ID;
	
//	langauge_movie
	
	@Value("${INSERT_INTO_LANGUAGE_MOVIE}")
	public 	String	INSERT_INTO_LANGUAGE_MOVIE;
	@Value("${GET_THE_LANGUAGES_BY_MOVIE_ID}")
	public	String	GET_THE_LANGUAGES_BY_MOVIE_ID;
	@Value("${DELETE_ALL_THE_LANGAUGES_OF_MOVIE_BY_MOVIE_ID}")
	public	String	DELETE_ALL_THE_LANGAUGES_OF_MOVIE_BY_MOVIE_ID;
	
//	link
	@Value("${INSERT_INTO_LINK}")
	public	String	INSERT_INTO_LINK;
	@Value("${GET_THE_ALL_LINKS_BY_ID}")
	public	String GET_THE_ALL_LINKS_BY_ID;
	@Value("${DELETE_ALL_THE_LINKS_OF_MOVIE_BY_MOVIE_ID}")
	public	String DELETE_ALL_THE_LINKS_OF_MOVIE_BY_MOVIE_ID;
	
//	movieRequest
	@Value("${CREATE_A_REQUEST}")
	public	String	CREATE_A_REQUEST;
	@Value("${GET_ALL_THE_MESSAGES}")
	public	String	GET_ALL_THE_MESSAGES;
	
	
	
	 

}
