package com.cmsoft.dashboard.service;

import java.util.List;

import com.cmsoft.dashboard.model.Warehouse;

public interface WarehouseService {
	List<Warehouse> findAll();
	void save(Warehouse warehouse);
	Warehouse findWarehouseById(int id);
}
