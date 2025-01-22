package com.example.easymoviedownloads.model;

import lombok.Data;
import lombok.ToString;

/**
 * Author: Naveen Saini
 * Date: 11-Jan-2025	
 */
@Data
@ToString
public class Links {
	private Integer linkId;
	private Integer movieId;
	private String name;
	private String url;

}
