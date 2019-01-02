package com.cmsoft.dashboard.dao;

import java.util.List;

import com.cmsoft.dashboard.model.Food;


public interface FoodDao  {
	List<Food> findAll();
	void save(Food food);
}
