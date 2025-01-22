package com.example.easymoviedownloads.model;
/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */

import java.sql.Timestamp;

import lombok.Data;

@Data
public class Year {
	private Integer yearId;
	private String  name;
	private Timestamp createdTime;

}
