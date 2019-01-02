package com.cmsoft.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cmsoft.dashboard.dao.FoodDao;
import com.cmsoft.dashboard.dao.UserDao;
import com.cmsoft.dashboard.model.Food;



@Service
public class FoodServiceImpl implements FoodService {
	@Autowired
	FoodDao dao;
	
	public List<Food> findAll(){
		return  dao.findAll();
	}
	
	public void save(Food food) {
		dao.save(food);
	}
}
