package com.cmsoft.dashboard.dao;

import java.util.List;

import com.cmsoft.dashboard.model.Warehouse;


public interface WarehouseDao  {
	List<Warehouse> findAll();
	void save(Warehouse warehouse);
	Warehouse findWarehouseById(int id);
}
