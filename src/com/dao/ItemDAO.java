package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.util.dao.HibernateUtil;

@Component
public class ItemDAO {

	@Autowired
	private HibernateUtil hutil;
	
	@Transactional
	public List<Item> findAll()
	{
		Session s=hutil.getSessionFactory().getCurrentSession();
		Query q=s.createQuery("from Item");
		return  q.list();
		
	}
	
	@Transactional
	public List<Item> findItem(int itemId)
	{
		Session s=hutil.getSessionFactory().getCurrentSession();
		Query q=s.createQuery("from Item where itemId = :itemId");
		q.setParameter("itemId", itemId);
		return  q.list();
		
	}
	
	@Transactional
	public Integer insertItem(Item item){
		Session s= hutil.getSessionFactory().getCurrentSession();
		Integer id = (Integer)s.save(item);
		return id;
	}
	
	@Transactional
	public Integer deleteItem(int itemId) {
		Session s= hutil.getSessionFactory().getCurrentSession();
		Query q = s.createQuery("delete from Item where itemId = :itemId");
		q.setParameter("itemId", itemId);
		return q.executeUpdate();
	}
	
	@Transactional
	public Integer updateItem(Item item){
		Session s= hutil.getSessionFactory().getCurrentSession();
		s.update(item);
		return item.getItemId();
	}
}
