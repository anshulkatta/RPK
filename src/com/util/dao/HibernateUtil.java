package com.util.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component
public class HibernateUtil {
	
	private  HibernateUtil() {}
	
	@Autowired
	@Qualifier("sessionfactory")
	private SessionFactory sf;
	
	public Session getSession()
	{
		return sf.openSession();
	}

}
