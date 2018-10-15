package com.rpk;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.dao.Feedback;
import com.dao.FeedbackDao;
import com.html.HTMLUtil;

@Component
public class FeedbackService {

	@Autowired
	private FeedbackDao feedbackDao;

	@Transactional
	public String insertFeedback(Feedback feedback) {
		try {
			feedbackDao.insertFeedback(feedback);
		} catch (Exception e) {
			return HTMLUtil.FAIL;
		}
		return HTMLUtil.SUCCESS;
	}

}
