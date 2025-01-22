package com.example.easymoviedownloads.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.example.easymoviedownloads.model.Collections;

/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */
public class CollectionRowMapper {
	
	public static class GetTheCollections  implements ResultSetExtractor<List<Collections>>{

		@Override
		public List<Collections> extractData(ResultSet rs) throws SQLException, DataAccessException {
			List<Collections> response			= new ArrayList<>();
			while(rs.next()) {
				Collections collection= new Collections();
				collection.setCollectionsId(rs.getInt("collectionId"));
				collection.setName(rs.getString("name"));
				response.add(collection);
			}
			return response;
		}
		
	}
	


}
