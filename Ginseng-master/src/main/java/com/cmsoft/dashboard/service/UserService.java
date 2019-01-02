package com.cmsoft.dashboard.service;

import java.util.List;

import com.cmsoft.dashboard.model.User;

public interface UserService {
	List<User> findAll();
	User findOneByUsername(String username);
	void save(User user);
}
