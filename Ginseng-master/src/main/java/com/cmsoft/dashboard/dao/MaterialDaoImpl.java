package com.cmsoft.dashboard.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cmsoft.dashboard.model.Material;



@Transactional
@Repository("materialDao")
public class MaterialDaoImpl extends AbstractDao<Integer, Material> implements MaterialDao {

	
	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<Material>  findAll() {
		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Material.class);
		return criteria.list();
	}
	
	public Material findOneById(int id) {
		return (Material) sessionFactory.getCurrentSession().get(Material.class, id);
	}
	
	@Override
	public void save(Material material) {
		sessionFactory.getCurrentSession().saveOrUpdate(material);
	}
}
