package com.cmsoft.dashboard.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cmsoft.dashboard.model.Warehouse;
import com.cmsoft.dashboard.model.Material;


@Transactional
@Repository
public class WarehouseDaoImpl  extends AbstractDao<Integer, Warehouse>  implements WarehouseDao {
	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Warehouse> findAll(){
		@SuppressWarnings("deprecation")
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Warehouse.class);
		return criteria.list();
	}
		
	@Override
	public void save(Warehouse warehouse) {
		sessionFactory.getCurrentSession().saveOrUpdate(warehouse);
	}

	public Warehouse findWarehouseById(int id) {
		return (Warehouse) sessionFactory.getCurrentSession().get(Warehouse.class, id);
	}
	
	
	
}
