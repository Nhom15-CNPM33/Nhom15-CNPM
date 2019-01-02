package com.cmsoft.dashboard.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cmsoft.dashboard.model.Role;
import com.cmsoft.dashboard.model.User;


@Transactional
@Repository
public class UserDaoImpl  extends AbstractDao<Integer, User>  implements UserDao {
	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<User> findAll(){
		@SuppressWarnings("deprecation")
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(User.class);
		return criteria.list();
	}
	
	@SuppressWarnings("unchecked")
	public User findOneByUsername(String username) {
		return (User) sessionFactory.getCurrentSession().createQuery("from users where username='"+username+"'")
				.getResultList().stream().findFirst().orElse(null);
	}
	
	
	@Override
	public void save(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}
}
