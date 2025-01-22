package com.example.easymoviedownloads.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.example.easymoviedownloads.model.Year;

/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */
public class YearRowMapper {
	
	public static class GetTheYears  implements ResultSetExtractor<List<Year>>{

		@Override
		public List<Year> extractData(ResultSet rs) throws SQLException, DataAccessException {
			List<Year> response			= new ArrayList<>();
			while(rs.next()) {
				Year year= new Year();
				year.setYearId(rs.getInt("yearid"));
				year.setName(rs.getString("name"));
				response.add(year);
			}
			return response;
		}
		
	}
	
	public static class GetTheMultipleYearsByMultipleMoviesId  implements ResultSetExtractor<List<Year>>{

		@Override
		public List<Year> extractData(ResultSet rs) throws SQLException, DataAccessException {
			List<Year> response			= new ArrayList<>();
			while(rs.next()) {
				Year year= new Year();
				year.setYearId(rs.getInt("movieid"));
				year.setName(rs.getString("name"));
				response.add(year);
			}
			return response;
		}
		
	}

}
