package com.example.easymoviedownloads.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import com.example.easymoviedownloads.dto.MovieDto;
import com.example.easymoviedownloads.dto.MovieUpdateDto;
import com.example.easymoviedownloads.dto.SingleMovieDto;

/**
 * Author: Naveen Saini
 * Date: 11-Jan-2025	
 */
public class MovieRowMapper {
	
	public static class insertMovie implements RowMapper<Integer> {

		@Override
		public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {
			
			return rs.getInt("movieid");
		}
		
	}
	
	public static class movieWithUpdateDto implements ResultSetExtractor<List<MovieUpdateDto>> {

		@Override
		public List<MovieUpdateDto> extractData(ResultSet rs) throws SQLException, DataAccessException {
			List<MovieUpdateDto>  response = new ArrayList<>();
			while(rs.next()) {
				MovieUpdateDto dto=new MovieUpdateDto();
				dto.setMovieId(rs.getInt("movieid"));
				dto.setMovieTitle(rs.getString("title"));
				dto.setDownloadCounts(rs.getInt("downloadcount"));
				response.add(dto);
			}
			return response;
		}
		
	
				
	}
	
	public static class GetSingleMovieDto implements ResultSetExtractor<SingleMovieDto>{

		@Override
		public SingleMovieDto extractData(ResultSet rs) throws SQLException, DataAccessException {
			return new MovieRowMapper().getTheMapperForSingleMovieDto(rs);
		}
		
	}
	public static class GetTheBannerMovies implements ResultSetExtractor<List<MovieDto>>{

		@Override
		public List<MovieDto> extractData(ResultSet rs) throws SQLException, DataAccessException {
			List<MovieDto> list	=new ArrayList<>();
			while(rs.next()) {
				MovieDto		movieDto	=	new MovieDto();
					movieDto.setMovieId(rs.getInt("movieid"));
					movieDto.setTitle(rs.getString("title"));
					movieDto.setSlug(rs.getString("slug"));
					movieDto.setImageurl(rs.getString("imageurl"));
					movieDto.setDownloadName(rs.getString("downloadname"));
					list.add(movieDto);
			
			}
			return list;
		}
		
	}
	
	public static class GetTheMoviesDto implements ResultSetExtractor<List<MovieDto>>{

		@Override
		public List<MovieDto> extractData(ResultSet rs) throws SQLException, DataAccessException {
			List<MovieDto> list	=new ArrayList<>();
			while(rs.next()) {
				MovieDto		movieDto	=	new MovieDto();
					movieDto.setMovieId(rs.getInt("movieid"));
					movieDto.setTitle(rs.getString("title"));
					movieDto.setSlug(rs.getString("slug"));
					movieDto.setImageurl(rs.getString("imageurl"));
					movieDto.setDownloadName(rs.getString("downloadname"));
					list.add(movieDto);
			
			}
			return list;
		}
		
	}
	
	public static class GetAllTheMovies	implements ResultSetExtractor<List<SingleMovieDto>>{

		@Override
		public List<SingleMovieDto> extractData(ResultSet rs) throws SQLException, DataAccessException {
			List<SingleMovieDto>	list = new ArrayList<>();
			while(rs.next()) {
			    SingleMovieDto dto = new SingleMovieDto();
			    dto.setSlug(rs.getString("slug"));
			   
			    list.add(dto);

			}
			return list;
		}
		
	}
	public static class GetTheMoviesByCollection implements ResultSetExtractor<List<MovieDto>>{

		@Override
		public List<MovieDto> extractData(ResultSet rs) throws SQLException, DataAccessException {
			List<MovieDto> list	=new ArrayList<>();
			while(rs.next()) {
				MovieDto		movieDto	=	new MovieDto();
					movieDto.setMovieId(rs.getInt("movieid"));
					movieDto.setTitle(rs.getString("title"));
					movieDto.setSlug(rs.getString("slug"));
					movieDto.setImageurl(rs.getString("imageurl"));
					movieDto.setDownloadName(rs.getString("downloadname"));
					list.add(movieDto);
			
			}
			return list;
		}
		
	}


	
	public SingleMovieDto getTheMapperForSingleMovieDto(ResultSet rs) throws SQLException {
	    SingleMovieDto dto = new SingleMovieDto();
	  while(rs.next()) {
		dto.setMovieId(rs.getInt("movieid"));
	    dto.setMovieTitle(rs.getString("title"));
	    dto.setKeywords(rs.getString("keywords"));
	    dto.setDownloadName(rs.getString("downloadname"));
	    dto.setSlug(rs.getString("slug"));
	    dto.setImageUrl(rs.getString("imageurl"));
	    dto.setSmallDescription(rs.getString("smalldescription"));
	    dto.setDuration(rs.getString("duration"));
	    dto.setReleaseDate(rs.getString("releasedate"));
	    dto.setBigDescription(rs.getString("bigdescription"));
	    dto.setDownloadCounts(rs.getInt("downloadcount"));
	    dto.setCasts(rs.getString("casts"));
	    dto.setCreationDate(rs.getTimestamp("creationdate"));
	  }
	    return dto;
	    
	}
	
	
	

	

}
