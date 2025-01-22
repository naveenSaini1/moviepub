package com.example.easymoviedownloads.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.easymoviedownloads.config.jwt.JwtUtils;
import com.example.easymoviedownloads.model.JwtResponse;
import com.example.easymoviedownloads.model.LoginRequest;
import com.example.easymoviedownloads.model.SignupRequest;
import com.example.easymoviedownloads.model.User;
import com.example.easymoviedownloads.repositary.UserRepo;
import com.example.easymoviedownloads.serviceimpl.MyUserDetailImpl;

@RestController
@RequestMapping("/api/auth")
public class AuthController {
  @Autowired
  AuthenticationManager authenticationManager;

  @Autowired
  UserRepo userRepository;


  @Autowired
  PasswordEncoder encoder;

  @Autowired
  JwtUtils jwtUtils;
  
  @Autowired
  private UserRepo repo;

  @PostMapping("/signin")
  public ResponseEntity<?> authenticateUser(@RequestBody LoginRequest loginRequest) {
	  System.out.println("========= login  ==============="+loginRequest);

    Authentication authentication = authenticationManager.authenticate(
        new UsernamePasswordAuthenticationToken(loginRequest.getUsername(), loginRequest.getPassword()));

    SecurityContextHolder.getContext().setAuthentication(authentication);
    String jwt = jwtUtils.generateJwtToken(authentication);
    
    MyUserDetailImpl userDetails = (MyUserDetailImpl) authentication.getPrincipal();    
    List<String> roles = userDetails.getAuthorities().stream()
        .map(item -> item.getAuthority())
        .collect(Collectors.toList());

    return ResponseEntity.ok(new JwtResponse(jwt, userDetails.getUsername(),roles.get(0)));
  }

  @PostMapping("/signup")
  public ResponseEntity<?> registerUser(@RequestBody SignupRequest signUpRequest) {
  System.out.println("========= register  ===============");
    User user=new User();
    user.setName(signUpRequest.getUsername());
    user.setEmail(signUpRequest.getEmail());
    user.setPassword( encoder.encode(signUpRequest.getPassword()));
    user.setBio("hello this is me because id ont care");
	user.setAge(18);
	user.setRole("ROLE_ADMIN");
	user.setU_id(1);
	repo.insertTheUser(user);
    return ResponseEntity.ok(new String("User registered successfully!"));
  }
  
  
}