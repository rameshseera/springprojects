package com.seerasoft.techevaluator.service;

import java.util.List;

import com.seerasoft.techevaluator.model.UserProfile;


public interface UserProfileService {

	UserProfile findById(int id);

	UserProfile findByType(String type);
	
	List<UserProfile> findAll();
	
}
