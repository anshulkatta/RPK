package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.util.dao.HibernateUtil;

@Component
public class ItemDAO {

	@Autowired
	private HibernateUtil hutil;
	
	public List<Item> findAll()
	{
		Session s=hutil.getSession();
		Query q=s.createQuery("from Item");
		return  q.list();
		
	}
	
	public void insertItem(Item item){
		Session s= hutil.getSessionFactory().getCurrentSession();
		s.persist(item);
	}
}
