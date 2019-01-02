package com.cmsoft.dashboard.service;

import java.util.List;

import com.cmsoft.dashboard.model.Material;


public interface MaterialService {
	public List<Material> findAll();
	public Material findOneById(int id);
	public void save(Material material);
}
