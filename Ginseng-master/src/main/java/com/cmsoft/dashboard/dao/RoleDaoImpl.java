package com.cmsoft.dashboard.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cmsoft.dashboard.model.Role;



@Transactional
@Repository("roleDao")
public class RoleDaoImpl extends AbstractDao<Integer, Role> implements RoleDao {

	
	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<Role>  findAll() {
		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Role.class);
		return criteria.list();
	}
	
	public Role findOneById(int id) {
		return (Role) sessionFactory.getCurrentSession().get(Role.class, id);
	}
	
	@Override
	public void save(Role role) {
		sessionFactory.getCurrentSession().saveOrUpdate(role);
	}
}
