package com.example.easymoviedownloads.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 * Author: Naveen Saini
 * Date: 19-Jan-2025	
 */
public class CommonMethodsRowMapper {
	
	public static class GetTheMoviesIds  implements ResultSetExtractor<List<Integer>>{

		@Override
		public List<Integer> extractData(ResultSet rs) throws SQLException, DataAccessException {
			List<Integer> response			= new ArrayList<>();
			while(rs.next()) {
				Integer movieId=0;
				movieId = rs.getInt("movieid");
				
				response.add(movieId);
			}
			return response;
		}
		
	}
	
	public static class GetTheTotalCountOfMovies implements ResultSetExtractor<Integer>{

		@Override
		public Integer extractData(ResultSet rs) throws SQLException, DataAccessException {
			Integer totalNumber	=0;
			while(rs.next()) {
				totalNumber =rs.getInt("total");
				
			}
			return totalNumber;
		}
		
	}

}
