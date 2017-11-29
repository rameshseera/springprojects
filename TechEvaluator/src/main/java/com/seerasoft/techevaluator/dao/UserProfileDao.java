package com.seerasoft.techevaluator.dao;

import java.util.List;

import com.seerasoft.techevaluator.model.UserProfile;


public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
