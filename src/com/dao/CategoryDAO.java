package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.util.dao.HibernateUtil;

@Component("categoryDao")
public class CategoryDAO {
	
	@Autowired
	private HibernateUtil hutil;
	
	@Transactional
	public List<Category> findAll()
	{
		Session s=hutil.getSessionFactory().getCurrentSession();
		Query q=s.createQuery("from Category");
		return  q.list();
		
	}
	@Transactional
	public void insertCategory(Category category) {
		Session s = hutil.getSessionFactory().getCurrentSession();
		s.save(category);
	}
	
	

}
