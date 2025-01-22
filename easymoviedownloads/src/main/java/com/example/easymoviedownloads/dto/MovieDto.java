package com.example.easymoviedownloads.dto;

import lombok.Data;

/**
 * Author: Naveen Saini
 * Date: 16-Jan-2025	
 */
@Data
public class MovieDto {
	private Integer movieId;
	private String title;
	private String downloadName;
	private String slug;
	private String imageurl;
	private	String genre;
	private String year;

}
