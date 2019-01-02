package com.cmsoft.dashboard.dao;

import java.util.List;

import com.cmsoft.dashboard.model.User;



public interface UserDao  {
	List<User> findAll();
	User findOneByUsername(String username);
	void save(User user);
}
