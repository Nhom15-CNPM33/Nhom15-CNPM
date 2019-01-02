package com.cmsoft.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cmsoft.dashboard.dao.WarehouseDao;
import com.cmsoft.dashboard.dao.MaterialDao;
import com.cmsoft.dashboard.model.Warehouse;



@Service
public class WarehouseServiceImpl implements WarehouseService {
	@Autowired
	WarehouseDao dao;
	
	public List<Warehouse> findAll(){
		return  dao.findAll();
	}
	
	public void save(Warehouse warehouse) {
		dao.save(warehouse);
	}
	
	public Warehouse findWarehouseById(int id) {
		return dao.findWarehouseById(id);
	}
}
