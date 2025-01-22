package com.example.easymoviedownloads.dto;

import lombok.Data;

/**
 * Author: Naveen Saini
 * Date: 14-Jan-2025	
 */
@Data
public class MovieUpdateDto {
	
	private Integer movieId;
	private Integer downloadCounts;
	private String  movieTitle;

}
