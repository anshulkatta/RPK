package com.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.dao.Category;

@Component
public class Util {

	public Map<Integer, String> getCatergoryMap(List<Category> caterList) {
		Map<Integer, String> mapOfCategory = new HashMap<Integer, String>();
		for (Category category : caterList) {
			mapOfCategory.put(category.getCategoryId(),
					category.getCategoryName());
		}
		return mapOfCategory;
	}

}
