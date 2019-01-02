package com.cmsoft.dashboard.dao;

import java.util.List;

import com.cmsoft.dashboard.model.Material;

public interface MaterialDao {
	List<Material> findAll(); 
	Material findOneById(int id);
	
	void save(Material material);
}
