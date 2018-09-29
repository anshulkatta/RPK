package com.rpk;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.dao.Category;
import com.dao.CategoryDAO;
import com.html.HTMLUtil;
import com.util.Util;

@Component
public class CategoryRetreiver {
	
	@Autowired
	private CategoryDAO catdao;
	
	@Autowired
	private Util util;
	
	public  List<Category> getCategory()
	{
		return catdao.findAll();
	}
	
	public Map<Integer,String> getCategoryMap() {
		return util.getCatergoryMap(getCategory());
	}
	
	@Transactional
	public String insertCategory(Category category) {
		try {
			catdao.insertCategory(category);
			return HTMLUtil.SUCCESS;
		}catch(Exception e){
			e.printStackTrace();
			return HTMLUtil.FAIL;
		}
	}

}
