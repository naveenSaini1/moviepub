package com.example.easymoviedownloads.repositaryimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.easymoviedownloads.constants.SqlConstants;
import com.example.easymoviedownloads.dto.MovieDto;
import com.example.easymoviedownloads.dto.MovieUpdateDto;
import com.example.easymoviedownloads.dto.SingleMovieDto;
import com.example.easymoviedownloads.repositary.MovieRepo;
import com.example.easymoviedownloads.rowmapper.CommonMethodsRowMapper;
import com.example.easymoviedownloads.rowmapper.LanguagesRowMapper;
import com.example.easymoviedownloads.rowmapper.MovieRowMapper;

/**
 * Author: Naveen Saini
 * Date: 11-Jan-2025	
 */
@Repository
public class MovieRepoImpl implements MovieRepo{
	@Autowired
	private JdbcTemplate   jdbcTemplate;
	
	@Autowired
	private SqlConstants	sqlConstants;

	@Override
	public Integer uploadMove(String name,String keywords,String downloadname ,String slug, String imageUrl, String smallDescription, String duration,
			String releaseDate, String bigdescription, String cast) {
		Object[]			data			=	{name,keywords,downloadname,slug,imageUrl,smallDescription,duration,releaseDate,bigdescription,cast};
		Integer				conversationId	=	0;
		conversationId	=	jdbcTemplate.queryForObject(sqlConstants.INSERT_INTO_MOVIES,new MovieRowMapper.insertMovie() ,data);
		return conversationId;
	}

	@Override
	public List<MovieUpdateDto> getAllTheMovieUpdateDtos(Integer limit, Integer offset) {
		Object[] 		data	=	{limit,offset};
		
		return jdbcTemplate.query(sqlConstants.GET_THE_MOVIES_WITH_UPDATE_DTO,new MovieRowMapper.movieWithUpdateDto(),data);
	}

	@Override
	public SingleMovieDto getTheSingleMovieDataByMovieId(Integer movieId) {
		return jdbcTemplate.query(sqlConstants.GET_THE_SINGLE_MOVIES_BY_MOVIEID, new MovieRowMapper.GetSingleMovieDto(),movieId);
	}

	@Override
	public void updateTheMovie(SingleMovieDto singleMovieDto) {
		
		jdbcTemplate.update(sqlConstants.UPDATE_THE_MVOIE_BY_MOVIE_ID,singleMovieDto.getMovieTitle(),singleMovieDto.getKeywords(),singleMovieDto.getDownloadName(),singleMovieDto.getSlug(),singleMovieDto.getImageUrl(),singleMovieDto.getSmallDescription(),
				singleMovieDto.getDuration(),singleMovieDto.getReleaseDate(),singleMovieDto.getBigDescription(),singleMovieDto.getCasts(),singleMovieDto.getMovieId());
		
	}

	@Override
	public List<MovieDto> getTheBannerMovies() {
		return jdbcTemplate.query(sqlConstants.SELECT_BANNER_MOVIES, new MovieRowMapper.GetTheBannerMovies());
	}

	@Override
	public List<MovieDto> getTheLatestMovies(Integer limit, Integer offset) {
		return jdbcTemplate.query(sqlConstants.SELECT_LATEST_MOVIES, new MovieRowMapper.GetTheMoviesDto(),limit,offset);
	}

	@Override
	public Integer getTheTotalNumber() {
		return jdbcTemplate.query(sqlConstants.GET_THE_TOTAL_NUMBER_OF_MOVIES, new CommonMethodsRowMapper.GetTheTotalCountOfMovies());
	}

	@Override
	public List<MovieDto> getTheMoviesByMovieIds(String movieIds) {
		System.out.println(String.format(sqlConstants.GET_THE_MVOIES_BY_MOVIEIDS,movieIds)+" reaction");
		return jdbcTemplate.query(String.format(sqlConstants.GET_THE_MVOIES_BY_MOVIEIDS,movieIds), new MovieRowMapper.GetTheMoviesByCollection());
	}
	

	@Override
	public List<MovieDto> searchTheMovies(String query, Integer limit, Integer offset) {
		return jdbcTemplate.query(sqlConstants.SEARCH_MOVIES_BY_TITLE, new MovieRowMapper.GetTheMoviesDto(),query,query,limit,offset);
	}

	@Override
	public Integer getTheTotalNumberOfSearchedMovies(String query) {
		return jdbcTemplate.query(sqlConstants.GET_THE_TOTAL_NUMBER_OF_SEARCH_MOVIES, new CommonMethodsRowMapper.GetTheTotalCountOfMovies(),query);

	}

	@Override
	public SingleMovieDto getTheSingleMovieDataByUrl(String url) {
		return jdbcTemplate.query(sqlConstants.GET_THE_SINGLE_MOVIES_BY_URL,new MovieRowMapper.GetSingleMovieDto(),url);

	}

	@Override
	public List<SingleMovieDto> getAllTheMovies() {
		return jdbcTemplate.query(sqlConstants.GET_THE_ALL_MOVIES,new MovieRowMapper.GetAllTheMovies());
	}
	
	
	

}
