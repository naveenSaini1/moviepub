package com.example.easymoviedownloads.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.easymoviedownloads.constants.DefaultConstants;
import com.example.easymoviedownloads.model.Genre;
import com.example.easymoviedownloads.repositary.GenresRepo;
import com.example.easymoviedownloads.service.GenresService;

/**
 * Author: Naveen Saini
 * Date: 10-Jan-2025	
 */
@Service
public class GenreServiceImpl  implements GenresService{
	@Autowired
	private GenresRepo genresRepo;

	@Override
	public void insertGenre(Genre genre) throws Exception {
		Integer		responseId		=	0;
		if(genre==null || genre.getName()==null || genre.getName().equals(""))
			throw new Exception("please Enter valid name");
		
		responseId	=	genresRepo.createGenre(genre);
		if(responseId==0)
			throw new Exception("Genre did not created");
		
	}

	@Override
	public List<Genre> getAllTheGenresByLimit(Integer page) {
		Integer									defualMessageLimit	=	DefaultConstants.DEFAULT_LIMIT_FOR_CATEG;
		Integer									offset				=	(page==1)?0:(page-1)*defualMessageLimit;
		
		return genresRepo.getAllTheGenresByList(defualMessageLimit, offset);
	}

	@Override
	public void updateGenre(Integer genreId, String genreNewName) throws Exception {
		if(genreId==null || genreId==0 || genreNewName==null || genreNewName.equals(""))
			throw new Exception("please Enter valid name");
		
		Genre genre=new Genre();
		genre.setGenreId(genreId);
		genre.setName(genreNewName);
		if(genresRepo.updateTheGenre(genre)==0)
			throw new Exception("the update did not made it so please try again");
			
		
	}

	@Override
	public void deleteGenr(Integer genreId) throws Exception {
		if(genreId==0)
			throw new Exception("please Enter valid name");
		
		if(genresRepo.deleteTheGenre(genreId)==0)
			throw new Exception("the genre Did not happend");
		
		
	}

	@Override
	public Integer getTheTotalMoviesCountOfGenreMovie(String genreName) {
		Integer 	totalPage			=	0;
		
		totalPage	=	genresRepo.getTheTotalMoviesOfGenresMovie(genreName);
		totalPage 	=(int)Math.ceil((double)totalPage/DefaultConstants.DEFAULT_LIMIT_FOR_MOVIES);
		return totalPage;
	}
	

}
