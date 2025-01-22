package com.example.easymoviedownloads.dto;

import java.sql.Timestamp;
import java.util.List;

import com.example.easymoviedownloads.model.Collections;
import com.example.easymoviedownloads.model.Genre;
import com.example.easymoviedownloads.model.Languages;
import com.example.easymoviedownloads.model.Links;
import com.example.easymoviedownloads.model.Year;

import lombok.Data;

/**
 * Author: Naveen Saini
 * Date: 15-Jan-2025	
 */
@Data
public class SingleMovieDto {

	private int movieId;
    private String movieTitle;
    private String keywords;
    private String downloadName;
    private String slug;
    private String imageUrl;
    private String smallDescription;
    private String duration;
    private String releaseDate;
    private String bigDescription;
    private int downloadCounts;
    private String casts;
    private Timestamp creationDate;
    private List<Links> links;
    private List<Languages> languages;
    private List<Genre> genres;
    private List<Collections> collections;
    private List<Year> year;
    
}
