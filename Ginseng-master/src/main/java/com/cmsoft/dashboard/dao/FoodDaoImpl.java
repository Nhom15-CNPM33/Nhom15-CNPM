package com.cmsoft.dashboard.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cmsoft.dashboard.model.Food;
import com.cmsoft.dashboard.model.Role;


@Transactional
@Repository
public class FoodDaoImpl  extends AbstractDao<Integer, Food>  implements FoodDao {
	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Food> findAll(){
		@SuppressWarnings("deprecation")
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Food.class);
		return criteria.list();
	}
	
	
	
	@Override
	public void save(Food food) {	
		sessionFactory.getCurrentSession().saveOrUpdate(food);
	}
}
