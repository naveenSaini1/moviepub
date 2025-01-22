package com.example.easymoviedownloads.model;
/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */

import java.sql.Timestamp;
import java.time.LocalDateTime;

import lombok.Data;

@Data
public class Languages {
	private Integer			languagesId;
	private String 			name;
	private Timestamp	createdTime;

}
