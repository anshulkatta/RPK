package com.rpk;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dao.Item;
import com.dao.ItemDAO;


@Component
public class ItemRetriever {
	
	@Autowired
	ItemDAO itemdao;
	
	public List<Item> getItem()
	{
		return itemdao.findAll();
	}

}
