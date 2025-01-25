package com.example.easymoviedownloads.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.example.easymoviedownloads.dto.MovieDto;
import com.example.easymoviedownloads.dto.SuccesDto;
import com.example.easymoviedownloads.model.Collections;
import com.example.easymoviedownloads.model.Genre;
import com.example.easymoviedownloads.model.Languages;
import com.example.easymoviedownloads.model.Links;
import com.example.easymoviedownloads.model.MovieRequest;
import com.example.easymoviedownloads.model.Year;
import com.example.easymoviedownloads.service.CollectionsService;
import com.example.easymoviedownloads.service.GenresService;
import com.example.easymoviedownloads.service.LanguagesService;
import com.example.easymoviedownloads.service.MovieRequestService;
import com.example.easymoviedownloads.service.MovieService;
import com.example.easymoviedownloads.service.YearsService;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.core.JsonProcessingException;

@RestController
@RequestMapping("/api/admin")
public class AdminController {

	@Autowired
	private CollectionsService collectionsService;
	
	@Autowired
	private	GenresService		genresService;
	
	@Autowired
	private LanguagesService	languagesService;
	
	@Autowired
	private YearsService	 	yearService;
	
	@Autowired
	private MovieService		movieService;
	
	@Autowired 
	private MovieRequestService	movieRequestService;
	@GetMapping("/myadmin")
	public String getAdmin() {
		return new String("admin");
	}
	
	// collection services
	
	@PostMapping("/collections")
	public ResponseEntity<SuccesDto>	createCollection(@RequestBody Collections collections) throws Exception
	{
		collectionsService.insertCollection(collections);
		return new ResponseEntity<SuccesDto>(new SuccesDto("successfully created"),HttpStatus.CREATED);
	}
	@PostMapping("/collections/{id}/{name}")
	public ResponseEntity<SuccesDto>	updateTheCollection(@PathVariable("id") Integer id,@PathVariable("name") String name) throws Exception
	{
		collectionsService.updateCollections(id, name);
		return new ResponseEntity<SuccesDto>(new SuccesDto("successfully"),HttpStatus.OK);

	}
	
	@DeleteMapping("/collections/{id}")
	public ResponseEntity<SuccesDto>	deleteTheCollection(@PathVariable("id") Integer id) throws Exception
	{
		collectionsService.deleteCollection(id);
		return new ResponseEntity<SuccesDto>(new SuccesDto("successfully"),HttpStatus.OK);

	}
	
	// genre Services
	

	@PostMapping("/genres")
	public ResponseEntity<SuccesDto>	createGenre(@RequestBody Genre genre) throws Exception
	{
		genresService.insertGenre(genre);
		return new ResponseEntity<SuccesDto>(new SuccesDto("successfully"),HttpStatus.OK);

	}
	@PostMapping("/genres/{id}/{name}")
	public ResponseEntity<SuccesDto>	updateTheGenre(@PathVariable("id") Integer id,@PathVariable("name") String name) throws Exception
	{
		genresService.updateGenre(id, name);
		return new ResponseEntity<SuccesDto>(new SuccesDto("successfully"),HttpStatus.OK);

	}
	
	@DeleteMapping("/genres/{id}")
	public ResponseEntity<SuccesDto>	deleteTheGenre(@PathVariable("id") Integer id) throws Exception
	{
		genresService.deleteGenr(id);
		return new ResponseEntity<SuccesDto>(new SuccesDto("successfully"),HttpStatus.OK);

	}
	
	
	// Language Services
	

		@PostMapping("/languages")
		public ResponseEntity<SuccesDto>	createLangauges(@RequestBody Languages language) throws Exception
		{
			languagesService.insertLanguages(language);
			return new ResponseEntity<SuccesDto>(new SuccesDto("successfully"),HttpStatus.OK);

		}
		@PostMapping("/languages/{id}/{name}")
		public ResponseEntity<SuccesDto>	updateTheLanguage(@PathVariable("id") Integer id,@PathVariable("name") String name) throws Exception
		{
			languagesService.updateLanguagess(id, name);
			return new ResponseEntity<SuccesDto>(new SuccesDto("successfully"),HttpStatus.OK);

		}
		
		@DeleteMapping("/languages/{id}")
		public ResponseEntity<SuccesDto>	deleteTheLanguage(@PathVariable("id") Integer id) throws Exception
		{
			languagesService.deleteLanguages(id);
			return new ResponseEntity<SuccesDto>(new SuccesDto("successfully"),HttpStatus.OK);

		}
		
		// year Services
		

		@PostMapping("/years")
		public ResponseEntity<SuccesDto>	createYears(@RequestBody Year year) throws Exception
		{
			yearService.insertYears(year);
			return new ResponseEntity<SuccesDto>(new SuccesDto("successfully"),HttpStatus.OK);

		}
		@PostMapping("/years/{id}/{name}")
		public ResponseEntity<SuccesDto>	updateTheYear(@PathVariable("id") Integer id,@PathVariable("name") String name) throws Exception
		{
			yearService.updateYearss(id, name);
			return new ResponseEntity<SuccesDto>(new SuccesDto("successfully"),HttpStatus.OK);

		}
		
		@DeleteMapping("/years/{id}")
		public ResponseEntity<SuccesDto>	deleteTheYear(@PathVariable("id") Integer id) throws Exception
		{
			yearService.deleteYears(id);
			return new ResponseEntity<SuccesDto>(new SuccesDto("successfully"),HttpStatus.OK);

		}
		
		// movies
		
		@PostMapping("/movies")
		public ResponseEntity<SuccesDto> uploadMovies(@RequestParam("title") String title,@RequestParam("keywords") String keywords,@RequestParam("downloadName") String downloadName,@RequestParam("image") MultipartFile image,
				@RequestParam("smalldescription") String smalldescription,@RequestParam("duration") String duration
				, @RequestParam("releaseDate")String releaseDate,@RequestParam("bigDescription") String bigDescription,
				@RequestParam("casts") String casts,@RequestParam("collectionNames")String[] collectionNames,
				@RequestParam("genreNames")String[] genreNames,@RequestParam("languageNames")String[] languageNames,
				@RequestParam("year")String[] year, @RequestParam("episodes")String episodesJson ) throws UnsupportedEncodingException
		{
			System.out.println(episodesJson);
			ObjectMapper objectMapper = new ObjectMapper();
		    List<Links> episodes;
		    try {
		        episodes = objectMapper.readValue(episodesJson, new TypeReference<List<Links>>() {});
		    } catch (JsonProcessingException e) {
		        return new ResponseEntity<>(new SuccesDto("Failed to parse episodes"), HttpStatus.BAD_REQUEST);
		    }
		    System.out.println(episodes);
		
			movieService.insertMovie(title,episodes, keywords,downloadName, image, smalldescription, duration, releaseDate, bigDescription, casts,collectionNames,languageNames,year,genreNames);
			return new ResponseEntity<SuccesDto>(new SuccesDto("successfully"),HttpStatus.OK);

		}
		
		@PostMapping("/updateMovie")
		public ResponseEntity<SuccesDto> updateMovie(@RequestParam("movieId") Integer movieId,@RequestParam("title") String title,@RequestParam("keywords") String keywords,@RequestParam("downloadName") String downloadName,@RequestParam(value="image",required = false ) MultipartFile image,
				@RequestParam("smalldescription") String smalldescription,@RequestParam("duration") String duration
				, @RequestParam("releaseDate")String releaseDate,@RequestParam("bigDescription") String bigDescription,
				@RequestParam("casts") String casts,@RequestParam("collectionNames")String[] collectionNames,
				@RequestParam("genreNames")String[] genreNames,@RequestParam("languageNames")String[] languageNames,
				@RequestParam("year")String[] year, @RequestParam("episodes")String episodesJson ) throws Exception
		{
			System.out.println(episodesJson);
			ObjectMapper objectMapper = new ObjectMapper();
		    List<Links> episodes;
		    try {
		        episodes = objectMapper.readValue(episodesJson, new TypeReference<List<Links>>() {});
		    } catch (JsonProcessingException e) {
		        return new ResponseEntity<>(new SuccesDto("Failed to parse episodes"), HttpStatus.BAD_REQUEST);
		    }
		    System.out.println(episodes);
		
			movieService.updateMovie(movieId,title,episodes, keywords,downloadName, image, smalldescription, duration, releaseDate, bigDescription, casts,collectionNames,languageNames,year,genreNames);
			return new ResponseEntity<SuccesDto>(new SuccesDto("successfully"),HttpStatus.OK);

		}
		
		
		// movie Request messages
		@GetMapping("/getAllTheMessages/{page}")
		public ResponseEntity<List<MovieRequest>> getAllTheMessages(@PathVariable("page") Integer page){
			return new ResponseEntity<List<MovieRequest>>(movieRequestService.getAllTheMessages(page),HttpStatus.OK);
		}
}
