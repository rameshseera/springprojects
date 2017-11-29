package com.seerasoft.techevaluator.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.seerasoft.techevaluator.dao.UserRoleDao;
import com.seerasoft.techevaluator.model.UserRole;


@Service("userProfileService")
@Transactional
public class UserProfileServiceImpl implements UserProfileService{
	
	@Autowired
	UserRoleDao dao;
	
	public UserRole findById(int id) {
		return dao.findById(id);
	}

	public UserRole findByType(String type){
		return dao.findByType(type);
	}

	public List<UserRole> findAll() {
		return dao.findAll();
	}
}
