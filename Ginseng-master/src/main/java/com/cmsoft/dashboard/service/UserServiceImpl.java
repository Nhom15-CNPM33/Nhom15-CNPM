package com.cmsoft.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cmsoft.dashboard.dao.UserDao;
import com.cmsoft.dashboard.model.User;



@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao userDao;
	
	public List<User> findAll(){
		return  userDao.findAll();
	}
	
	public User findOneByUsername(String username) {
		return userDao.findOneByUsername(username);
	}
	
	public void save(User user) {
		userDao.save(user);
	}
}
