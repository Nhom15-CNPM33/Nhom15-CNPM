package com.cmsoft.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cmsoft.dashboard.dao.RoleDao;
import com.cmsoft.dashboard.model.Role;


@Transactional
@Service("roleService")
public class RoleServiceImpl implements RoleService{
	
	@Autowired
	RoleDao roleDao;
	
	public List<Role> findAll() {
		return roleDao.findAll();
	}
	
	public Role  findOneById(int id) {
		return roleDao.findOneById(id);
	}
	
	public void save(Role role) {
		roleDao.save(role);
	}

}
