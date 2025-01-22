package com.example.easymoviedownloads.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.example.easymoviedownloads.model.MovieRequest;

/**
 * Author: Naveen Saini
 * Date: 21-Jan-2025	
 */
public class MovieRequestRowMapper {
	
	public static class GetTheMessages implements ResultSetExtractor<List<MovieRequest>>{

		@Override
		public List<MovieRequest> extractData(ResultSet rs) throws SQLException, DataAccessException {
			List<MovieRequest> list=new ArrayList<>();
			while(rs.next()) {
				MovieRequest	dto=new MovieRequest();
				dto.setMovieRequstId(rs.getInt("movieRequstId"));
				dto.setMessage(rs.getString("message"));
				dto.setEmail(rs.getString("email"));
				list.add(dto);
			}
			return list;
		}
		
	}

}
