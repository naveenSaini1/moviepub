package com.example.easymoviedownloads.model;
/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */

import java.sql.Timestamp;
import java.time.LocalDateTime;

import lombok.Data;

@Data
public class Collections {
	private Integer collectionsId;
	private String  name;
	private Timestamp createdDate;
	

}
