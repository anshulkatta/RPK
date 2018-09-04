package com.rpk;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dao.Category;
import com.dao.CategoryDAO;

@Component
public class CategoryRetreiver {
	
	@Autowired
	private CategoryDAO catdao;
	
	public  List<Category> getCategory()
	{
		return catdao.findAll();
	}

}
