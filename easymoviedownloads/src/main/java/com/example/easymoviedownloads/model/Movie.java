package com.example.easymoviedownloads.model;

import lombok.Data;

/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */
@Data
public class Movie {
	private String title;
	private String url;
	private String smallDescription;
	private String duration;
	private String releaseDate;
	private String bigDescritpion;
	private String cast;
	private Genre   genre;
	private Year   year;
	private Languages languages;
	private Collections collections;
	
}
