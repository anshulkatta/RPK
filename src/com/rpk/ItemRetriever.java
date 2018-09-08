package com.rpk;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.dao.Item;
import com.dao.ItemDAO;
import com.html.HTMLUtil;


@Component
public class ItemRetriever {
	
	@Autowired
	ItemDAO itemdao;
	
	public List<Item> getItem()
	{
		return itemdao.findAll();
	}
	
	@Transactional
	public String insertItem(Item item) {
		try {
			itemdao.insertItem(item);
			return HTMLUtil.SUCCESS;
		}catch(Exception e){
			e.printStackTrace();
			return HTMLUtil.FAIL;
		}
	}

}
