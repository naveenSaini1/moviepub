package com.example.easymoviedownloads.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.example.easymoviedownloads.model.Genre;

/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */
public class GenresRowMapper {
	
	public static class GetTheGenrs  implements ResultSetExtractor<List<Genre>>{

		@Override
		public List<Genre> extractData(ResultSet rs) throws SQLException, DataAccessException
		{
			List<Genre> response			= new ArrayList<>();
			while(rs.next()) {
				Genre genre= new Genre();
				genre.setGenreId(rs.getInt("genreid"));
				genre.setName(rs.getString("name"));
				response.add(genre);
			}
			return response;
		}
		
	}
	public static class GetTheMultipleGenresByMultipleIds  implements ResultSetExtractor<List<Genre>>{

		@Override
		public List<Genre> extractData(ResultSet rs) throws SQLException, DataAccessException
		{
			List<Genre> response			= new ArrayList<>();
			while(rs.next()) {
				Genre genre= new Genre();
				genre.setGenreId(rs.getInt("movieid"));
				genre.setName(rs.getString("name"));
				response.add(genre);
			}
			return response;
		}
		
	}

}
