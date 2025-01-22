package com.example.easymoviedownloads.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class User {
	
	private Integer u_id;
	private String name;
	private String email;
	private String bio;
	private Integer age;
	private String password;
	private String role;
	private String okay;
	

}
