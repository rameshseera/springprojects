package com.seerasoft.techevaluator.dao;

import java.util.List;

import com.seerasoft.techevaluator.model.UserRole;


public interface UserRoleDao {

	List<UserRole> findAll();
	
	UserRole findByType(String type);
	
	UserRole findById(int id);
}
