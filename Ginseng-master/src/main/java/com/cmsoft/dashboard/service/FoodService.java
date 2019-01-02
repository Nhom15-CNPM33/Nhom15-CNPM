package com.cmsoft.dashboard.service;

import java.util.List;

import com.cmsoft.dashboard.model.Food;

public interface FoodService {
	List<Food> findAll();
	void save(Food food);
}
