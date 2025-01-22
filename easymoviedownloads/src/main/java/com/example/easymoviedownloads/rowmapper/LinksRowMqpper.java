package com.example.easymoviedownloads.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.example.easymoviedownloads.model.Links;

/**
 * Author: Naveen Saini
 * Date: 15-Jan-2025	
 */
public class LinksRowMqpper {
	
	
	public static class GetTheAllLinksByMovieId implements ResultSetExtractor<List<Links>>{

		@Override
		public List<Links> extractData(ResultSet rs) throws SQLException, DataAccessException {
			List<Links>		list	= new ArrayList<>();
			while(rs.next()) {
				Links 	link	= new Links();
				link.setMovieId(rs.getInt("movieid"));
				link.setName(rs.getString("name"));
				link.setUrl(rs.getString("url"));
				link.setLinkId(rs.getInt("linkid"));
				list.add(link);
				
				
			}
		
			return list;
		}
	}

}
