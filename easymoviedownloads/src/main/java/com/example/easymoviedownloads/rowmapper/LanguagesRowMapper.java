package com.example.easymoviedownloads.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.scripting.config.LangNamespaceUtils;

import com.example.easymoviedownloads.model.Collections;
import com.example.easymoviedownloads.model.Languages;

/**
 * Author: Naveen Saini
 * Date: 08-Jan-2025	
 */
public class LanguagesRowMapper {
	
	public static class GetTheLanguages  implements ResultSetExtractor<List<Languages>>{

		@Override
		public List<Languages> extractData(ResultSet rs) throws SQLException, DataAccessException {
			List<Languages> response			= new ArrayList<>();
			while(rs.next()) {
				Languages language= new Languages();
				language.setLanguagesId(rs.getInt("languageid"));
				language.setName(rs.getString("name"));
				response.add(language);
			}
			return response;
		}
		
	}

}
