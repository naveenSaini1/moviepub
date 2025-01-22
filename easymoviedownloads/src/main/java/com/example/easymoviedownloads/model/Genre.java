package com.example.easymoviedownloads.model;
/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */

import java.sql.Timestamp;
import java.time.LocalDateTime;

import lombok.Data;

@Data
public class Genre {
	private Integer genreId;
	private String  name;
	private Timestamp createdTime;

}
