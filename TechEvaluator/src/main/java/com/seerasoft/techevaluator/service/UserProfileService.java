package com.seerasoft.techevaluator.service;

import java.util.List;

import com.seerasoft.techevaluator.model.UserRole;


public interface UserProfileService {

	UserRole findById(int id);

	UserRole findByType(String type);
	
	List<UserRole> findAll();
	
}
