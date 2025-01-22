package com.example.easymoviedownloads.serviceimpl;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.easymoviedownloads.constants.DefaultConstants;
import com.example.easymoviedownloads.dto.MovieDto;
import com.example.easymoviedownloads.dto.MovieUpdateDto;
import com.example.easymoviedownloads.dto.SingleMovieDto;
import com.example.easymoviedownloads.model.Collections;
import com.example.easymoviedownloads.model.Genre;
import com.example.easymoviedownloads.model.Languages;
import com.example.easymoviedownloads.model.Links;
import com.example.easymoviedownloads.model.Year;
import com.example.easymoviedownloads.repositary.CollectionsRepo;
import com.example.easymoviedownloads.repositary.GenresRepo;
import com.example.easymoviedownloads.repositary.LanguagesRepo;
import com.example.easymoviedownloads.repositary.LinkRepo;
import com.example.easymoviedownloads.repositary.MovieRepo;
import com.example.easymoviedownloads.repositary.SingleMethodsRepo;
import com.example.easymoviedownloads.repositary.YearsRepo;
import com.example.easymoviedownloads.service.MovieService;
import com.example.easymoviedownloads.utitly.SlugUtils;

/**
 * Author: Naveen Saini
 * Date: 11-Jan-2025	
 */
@Service
public class MovieServiceImpl implements MovieService{
	
	@Value("${file.upload-dir}")
    private String uploadDir;
	
	@Autowired
	private MovieRepo	movieRepo;
	
	@Autowired
	private SingleMethodsRepo	singleMethodsRepo;
	
	@Autowired
	private  LinkRepo			linkRepo;
	
	@Autowired
	private  CollectionsRepo	collectionsRepo;
	
	@Autowired
	private	  LanguagesRepo		languagesRepo;
	
	@Autowired
	private		YearsRepo		yearRepo;
	
	@Autowired
	private		GenresRepo		genresRepo;
	

	@Override
	public void insertMovie(String name,List<Links> links,String keywords, String downloadName, MultipartFile imageUrl, String smallDescription,
			String duration, String releaseDate, String bigdescription, String cast,String[] collections,String[] languages,String[] years,String[] genres) {
		
		String slug=SlugUtils.generateSlug(downloadName);
		String imageName = fileUpload(imageUrl, slug);
		
		Integer movieId	=	movieRepo.uploadMove(name,keywords ,downloadName, slug, imageName, smallDescription, duration, releaseDate, bigdescription, cast);
		System.out.println(movieId+" movieId");
		// first let's insert the collection
		for(Links l:links) {
			linkRepo.insertLink(movieId, l.getName(), l.getUrl());
		}
		for(String s:collections) {
			System.out.println(s+" ssss ");
			singleMethodsRepo.insertIntoCollectionMovie(movieId, Integer.parseInt(s));
		}
		// inserting language
		for(String s:languages) {
			System.out.println(s+" ssss ");
			singleMethodsRepo.inserIntoLangaugeMovie(movieId, Integer.parseInt(s));
		}
		// inserting year
		for(String s:years) {
			System.out.println(s+" ssss ");
			singleMethodsRepo.insertIntoYearMovie(movieId, Integer.parseInt(s));
		}
		// inserting genre
		for(String s:genres) {
			System.out.println(s+" ssss ");
			singleMethodsRepo.insertIntoGenreMovie(movieId, Integer.parseInt(s));
		}
					
//		
		
		
		
	}
	
	
	// uploading the images of movie
	public String fileUpload(MultipartFile file,String newFileName) {
		String pathName="";
		String extenstion=getFileExtension(file);
		pathName	=	newFileName+extenstion;
		
		try {
			
			System.out.println("===============================================");
			String targetPath=new File(uploadDir).getAbsolutePath();
			System.out.println(targetPath);
			Files.copy(file.getInputStream(),Paths.get(targetPath+File.separator+pathName) , StandardCopyOption.REPLACE_EXISTING);
			//]   String download=ServletUriComponentsBuilder.fromCurrentContextPath().path("/img/").path(file.getOriginalFilename()).toUriString();
	
//			Files.copy(file.getInputStream(),Paths.get(targetPath+File.separator+IMAGE_FOLDER_PATH+File.separator+pathName) , StandardCopyOption.REPLACE_EXISTING);

		} catch (IOException e) {
			e.printStackTrace();
		}
		return pathName;
		

		
	}
	
	// getting the file extension
	public String getFileExtension(MultipartFile file) {
	    String fileName = file.getOriginalFilename();
	    if (fileName != null && fileName.contains(".")) {
	        return fileName.substring(fileName.lastIndexOf("."));
	    }
	    return ""; // Return an empty string if there is no extension
	}


	@Override
	public List<MovieUpdateDto> getAllTheMovieUpdateDto(Integer page) {
		Integer									defualMessageLimit	=	DefaultConstants.DEFAULT_LIMIT_FOR_MOVIES;
		Integer									offset				=	(page==1)?0:(page-1)*defualMessageLimit;
		
		return movieRepo.getAllTheMovieUpdateDtos(defualMessageLimit, offset);
	}


	@Override
	public SingleMovieDto getTheSingleMovieDtoById(Integer moiveId) throws Exception {
		List<Links> 	links		= new ArrayList<>();
		List<Collections> collection =new ArrayList<>();
		List<Languages>  langauges	= new ArrayList<>();
		List<Year>		 year		= new ArrayList<>();
		List<Genre>      genres		= new ArrayList<>();
		
		SingleMovieDto	singleMovie	= new SingleMovieDto();
		if(moiveId==0)throw new Exception(" Please Enter a valid Exception");
		links	= linkRepo.getTheAllLinks(moiveId);
		collection	=	collectionsRepo.getTheCollections(moiveId);
		langauges	=	languagesRepo.getAlTheLanguageForMovieUpdateById(moiveId);
		year		=	yearRepo.getTheYearForMovieUpdateById(moiveId);
		genres		=	genresRepo.getTheGenreForMovieUpdateById(moiveId);
		
		singleMovie	=	movieRepo.getTheSingleMovieDataByMovieId(moiveId);
		singleMovie.setLinks(links);
		singleMovie.setCollections(collection);
		singleMovie.setLanguages(langauges);
		singleMovie.setYear(year);
		singleMovie.setGenres(genres);
		
		
		return singleMovie;
	}


	@Override
	public void updateMovie(Integer movieId,String name, List<Links> links, String keywords, String downloadName,
			MultipartFile imageUrl, String smallDescription, String duration, String releaseDate, String bigdescription,
			String cast, String[] collections, String[] languages, String[] years, String[] genres) throws Exception {
		
		if(movieId==null || movieId==0) throw new Exception("movieId is Invalid");
		// let's first delete All the movies links and the categories 
		System.out.println("movie"+movieId);
		linkRepo.deleteAllTheLinksOfMovieByMovieId(movieId);
		collectionsRepo.deleteAllTheCollectionOfMovieByMovieId(movieId);
		languagesRepo.deleteAllTheLangaugesOfMovieByMovieId(movieId);
		yearRepo.deleteAllTheYearsOfMovieByMovieId(movieId);
		genresRepo.deleteAllTheGenresOfMovieByMovieId(movieId);
		
		
		
		// now let's first get the object for image
		SingleMovieDto		singleMovieDto = movieRepo.getTheSingleMovieDataByMovieId(movieId);
		
		
		String slug=SlugUtils.generateSlug(downloadName);
		String imageName	=	null;
		System.out.println("Image url"+singleMovieDto.getImageUrl()+" url"+imageUrl);
		
		if(imageUrl!=null) {
			imageName = fileUpload(imageUrl, slug);
			singleMovieDto.setImageUrl(imageName);
	
		}
		
		singleMovieDto.setMovieTitle(name);
		singleMovieDto.setKeywords(keywords);
		singleMovieDto.setDownloadName(downloadName);
		singleMovieDto.setSlug(slug);
		singleMovieDto.setSmallDescription(smallDescription);
		singleMovieDto.setDuration(duration);
		singleMovieDto.setReleaseDate(releaseDate);
		singleMovieDto.setBigDescription(bigdescription);
		singleMovieDto.setCasts(cast);
		
		movieRepo.updateTheMovie(singleMovieDto);
		
		for(Links l:links) {
			linkRepo.insertLink(movieId, l.getName(), l.getUrl());
		}
		for(String s:collections) {
			System.out.println(s+" ssss ");
			singleMethodsRepo.insertIntoCollectionMovie(movieId, Integer.parseInt(s));
		}
		// inserting language
		for(String s:languages) {
			System.out.println(s+" ssss ");
			singleMethodsRepo.inserIntoLangaugeMovie(movieId, Integer.parseInt(s));
		}
		// inserting year
		for(String s:years) {
			System.out.println(s+" ssss ");
			singleMethodsRepo.insertIntoYearMovie(movieId, Integer.parseInt(s));
		}
		// inserting genre
		for(String s:genres) {
			System.out.println(s+" ssss ");
			singleMethodsRepo.insertIntoGenreMovie(movieId, Integer.parseInt(s));
		}
		
		
		
	}


	@Override
	public List<MovieDto> getTheBannerMovies() {
		List<MovieDto> list= new ArrayList<>();

		// get The list
		list	=	movieRepo.getTheBannerMovies();
		if(list.size()==0)return list;

		// Collect movie IDs in a comma-separated string
		StringBuilder movieId = new StringBuilder();
		list.forEach(s -> movieId.append(s.getMovieId()).append(","));

		// Remove the trailing comma
		if (movieId.length() > 0) {
		    movieId.setLength(movieId.length() - 1);
		}
		
		return getTheYearAndGenres(list,movieId);
	}


	@Override
	public List<MovieDto> getTheLatestMovies(Integer page) {
		Integer									defualMessageLimit	=	DefaultConstants.DEFAULT_LIMIT_FOR_MOVIES;
		Integer									offset				=	(page==1)?0:(page-1)*defualMessageLimit;
		List<MovieDto>	list =	movieRepo.getTheLatestMovies(defualMessageLimit, offset);
		if(list.size()==0)return list;

		// Collect movie IDs in a comma-separated string
		StringBuilder movieId = new StringBuilder();
		list.forEach(s -> movieId.append(s.getMovieId()).append(","));

		// Remove the trailing comma
		if (movieId.length() > 0) {
		    movieId.setLength(movieId.length() - 1);
		}

		System.out.println(movieId.toString()+" movies id");
		// Fetch the years based on movie IDs
	
		
		return getTheYearAndGenres(list,movieId);
	}

	
	

	@Override
	public Integer getTheTotalNumberOfMovies() {
		Integer 	totalPage			=	0;
		
		totalPage	=	movieRepo.getTheTotalNumber();
		totalPage 	=(int)Math.ceil((double)totalPage/DefaultConstants.DEFAULT_LIMIT_FOR_MOVIES);

		return totalPage;
	}


	@Override
	public List<MovieDto> getTheMoviesByCollections(String collectionName,Integer page) {
		Integer									defualMessageLimit	=	DefaultConstants.DEFAULT_LIMIT_FOR_MOVIES;
		Integer									offset				=	(page==1)?0:(page-1)*defualMessageLimit;
		
		List<Integer> movieIdsList=collectionsRepo.getTheMovieIds(collectionName,defualMessageLimit,offset);
		// if the list is empty no need to go through this process
		if(movieIdsList.size()==0)return new ArrayList<>();

		StringBuilder		movieId=new StringBuilder();	
		movieIdsList.forEach(s -> movieId.append(s).append(","));

		// Remove the trailing comma
		if (movieId.length() > 0) {
		    movieId.setLength(movieId.length() - 1);
		}
		List<MovieDto> list	=	movieRepo.getTheMoviesByMovieIds(movieId.toString());
		
		
		return getTheYearAndGenres(list,movieId);
	}




	@Override
	public List<MovieDto> getTheMoviesByLangauges(String languageName, Integer page) {
		Integer									defualMessageLimit	=	DefaultConstants.DEFAULT_LIMIT_FOR_MOVIES;
		Integer									offset				=	(page==1)?0:(page-1)*defualMessageLimit;
		
		List<Integer> movieIdsList=languagesRepo.getTheMovieIds(languageName,defualMessageLimit,offset);
		// if the list is empty no need to go through this process
		if(movieIdsList.size()==0)return new ArrayList<>();

		StringBuilder		movieId=new StringBuilder();	
		movieIdsList.forEach(s -> movieId.append(s).append(","));

		// Remove the trailing comma
		if (movieId.length() > 0) {
		    movieId.setLength(movieId.length() - 1);
		}
		List<MovieDto> list	=	movieRepo.getTheMoviesByMovieIds(movieId.toString());
		
		
		return getTheYearAndGenres(list,movieId);
	}


	@Override
	public List<MovieDto> getTheMoviesByYears(String yearName, Integer page) {
		Integer									defualMessageLimit	=	DefaultConstants.DEFAULT_LIMIT_FOR_MOVIES;
		Integer									offset				=	(page==1)?0:(page-1)*defualMessageLimit;
		
		List<Integer> movieIdsList=yearRepo.getTheMovieIds(yearName,defualMessageLimit,offset);
		// if the list is empty no need to go through this process
		if(movieIdsList.size()==0)return new ArrayList<>();

		StringBuilder		movieId=new StringBuilder();	
		movieIdsList.forEach(s -> movieId.append(s).append(","));

		// Remove the trailing comma
		if (movieId.length() > 0) {
		    movieId.setLength(movieId.length() - 1);
		}
		List<MovieDto> list	=	movieRepo.getTheMoviesByMovieIds(movieId.toString());
		
		
		return getTheYearAndGenres(list,movieId);
	}


	@Override
	public List<MovieDto> getTheMoviesByGernes(String genreName, Integer page) {
		Integer									defualMessageLimit	=	DefaultConstants.DEFAULT_LIMIT_FOR_MOVIES;
		Integer									offset				=	(page==1)?0:(page-1)*defualMessageLimit;
		
		List<Integer> movieIdsList=genresRepo.getTheMovieIds(genreName,defualMessageLimit,offset);
		// if the list is empty no need to go through this process
		if(movieIdsList.size()==0)return new ArrayList<>();

		StringBuilder		movieId=new StringBuilder();	
		movieIdsList.forEach(s -> movieId.append(s).append(","));

		// Remove the trailing comma
		if (movieId.length() > 0) {
		    movieId.setLength(movieId.length() - 1);
		}
		List<MovieDto> list	=	movieRepo.getTheMoviesByMovieIds(movieId.toString());
		
		
		return getTheYearAndGenres(list,movieId);
	}

	
	
	public List<MovieDto> getTheYearAndGenres(List<MovieDto> list,StringBuilder movieId){
		List<Year> yearList = yearRepo.getTheMultipleYearsByMultipleMoviesId(movieId.toString());
			
			// Create a map for quick lookup of year by movie ID
			Map<Integer, String> yearMap = yearList.stream()
				    .collect(Collectors.toMap(
				        Year::getYearId, 
				        Year::getName, 
				        (existingValue, newValue) -> existingValue // Choose to keep the existing value
				    ));

			// Set the year for each movie
			list.forEach(movie -> movie.setYear(yearMap.get(movie.getMovieId())));

			
			List<Genre> genreList = genresRepo.getTheMultipleGenresByMultipleIds(movieId.toString());
			Map<Integer, String> genreMap = genreList.stream()
			    .collect(Collectors.groupingBy(
			        Genre::getGenreId, // Group by movie ID
			        Collectors.mapping(Genre::getName, Collectors.joining(", ")) // Join genre names with a comma
			    ));

			// Set the genre for each movie
			list.forEach(movie -> movie.setGenre(genreMap.get(movie.getMovieId())));
			return list;
			
		}


	@Override
	public List<MovieDto> searchMoivesByTitle(String query, Integer page) {
		Integer									defualMessageLimit	=	DefaultConstants.DEFAULT_LIMIT_FOR_MOVIES;
		Integer									offset				=	(page==1)?0:(page-1)*defualMessageLimit;
		List<MovieDto>	list =	movieRepo.searchTheMovies(query,defualMessageLimit, offset);
		if(list.size()==0)return list;

		// Collect movie IDs in a comma-separated string
		StringBuilder movieId = new StringBuilder();
		list.forEach(s -> movieId.append(s.getMovieId()).append(","));

		// Remove the trailing comma
		if (movieId.length() > 0) {
		    movieId.setLength(movieId.length() - 1);
		}

		System.out.println(movieId.toString()+" movies id");
		// Fetch the years based on movie IDs
	
		
		return getTheYearAndGenres(list,movieId);
	}


	@Override
	public Integer getTheTotalNumberOfSearhedMovies(String query) {
		Integer 	totalPage			=	0;
		
		totalPage	=	movieRepo.getTheTotalNumberOfSearchedMovies(query);
		totalPage 	=(int)Math.ceil((double)totalPage/DefaultConstants.DEFAULT_LIMIT_FOR_MOVIES);

		return totalPage;
	}


	@Override
	public SingleMovieDto getTheSingleMovieDtoByUrl(String url) throws Exception {
		List<Links> 		links		= new ArrayList<>();
		List<Collections>	collection	=new ArrayList<>();
		List<Languages>  	langauges	= new ArrayList<>();
		List<Year>		 	year		= new ArrayList<>();
		List<Genre>      	genres		= new ArrayList<>();
		
		SingleMovieDto	singleMovie		= new SingleMovieDto();
		
		if(url==null)	throw new Exception(" Please Enter a valid Exception");
		
		singleMovie		=	movieRepo.getTheSingleMovieDataByUrl(url);
		
		if(singleMovie==null || singleMovie.getMovieId()==0)return new SingleMovieDto();
		
		links			= linkRepo.getTheAllLinks(singleMovie.getMovieId());
		collection		=	collectionsRepo.getTheCollections(singleMovie.getMovieId());
		langauges		=	languagesRepo.getAlTheLanguageForMovieUpdateById(singleMovie.getMovieId());
		year			=	yearRepo.getTheYearForMovieUpdateById(singleMovie.getMovieId());
		genres			=	genresRepo.getTheGenreForMovieUpdateById(singleMovie.getMovieId());
		
		singleMovie.setLinks(links);
		singleMovie.setCollections(collection);
		singleMovie.setLanguages(langauges);
		singleMovie.setYear(year);
		singleMovie.setGenres(genres);
		
		
		return singleMovie;
	}


	@Override
	public List<SingleMovieDto> getAllTheMoviesSlug() {
		return movieRepo.getAllTheMovies();
	}
	
	
	

}
