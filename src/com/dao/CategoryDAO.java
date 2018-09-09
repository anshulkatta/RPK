package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.util.dao.HibernateUtil;

@Component("categoryDao")
public class CategoryDAO {
	
	@Autowired
	private HibernateUtil hutil;
	
	public List<Category> findAll()
	{
		Session s=hutil.getSession();
		Query q=s.createQuery("from Category");
		return  q.list();
		
	}
	
	public void insertCategory(Category category) {
		Session s = hutil.getSessionFactory().getCurrentSession();
		s.save(category);
	}
	
	

}
