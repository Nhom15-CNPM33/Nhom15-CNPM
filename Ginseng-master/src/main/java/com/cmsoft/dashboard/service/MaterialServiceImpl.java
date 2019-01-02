package com.cmsoft.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cmsoft.dashboard.dao.MaterialDao;
import com.cmsoft.dashboard.model.Material;


@Transactional
@Service("materialService")
public class MaterialServiceImpl implements MaterialService{
	
	@Autowired
	MaterialDao materialDao;
	
	public List<Material> findAll() {
		return materialDao.findAll();
	}
	
	public Material  findOneById(int id) {
		return materialDao.findOneById(id);
	}
	
	public void save(Material material) {
		materialDao.save(material);
	}
	
}
