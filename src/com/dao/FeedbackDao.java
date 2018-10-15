package com.dao;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.util.dao.HibernateUtil;

@Component
public class FeedbackDao {

	@Autowired
	private HibernateUtil hutil;

	@Transactional
	public void insertFeedback(Feedback feedback) {
		Session s = hutil.getSessionFactory().getCurrentSession();
		s.save(feedback);
	}
}
