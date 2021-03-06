package com.rpk;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.dao.Item;
import com.dao.ItemDAO;
import com.html.HTMLUtil;
import com.util.ImageFileUtil;
import com.util.SaveImageUtil;


@Component
public class ItemRetriever {
	
	@Autowired
	private ItemDAO itemdao;
	
	@Autowired
	private SaveImageUtil saveImageUtil;
	@Autowired
	private ImageFileUtil imageFileUtil;
	
	public List<Item> getItem()
	{
		 List<Item> itemList = itemdao.findAll();
		 itemList = imageFileUtil.updateItemImages(itemList);
		 return itemList;
	}
	
	public List<Item> getItem(int itemId)
	{
		 List<Item> itemList = itemdao.findItem(itemId);
		 itemList = imageFileUtil.updateItemImages(itemList);
		 return itemList;
	}
	
	@Transactional
	public String insertItem(Item item) {
		try {
			int id = itemdao.insertItem(item);
			saveImageUtil.multipartToFile(item.getFiles(), id);
			return HTMLUtil.SUCCESS;
		}catch(Exception e){
			e.printStackTrace();
			return HTMLUtil.FAIL;
		}
	}
	@Transactional
	public String deleteItem(int itemId) {
		try{
			int id = itemdao.deleteItem(itemId);
			return HTMLUtil.SUCCESS;
		}catch(Exception e) {
			e.printStackTrace();
			return HTMLUtil.FAIL;
		}
	}
	
	@Transactional
	public String updateItem(Item item) {
		try {
			itemdao.updateItem(item);			
			return HTMLUtil.SUCCESS;
		}catch(Exception e){
			e.printStackTrace();
			return HTMLUtil.FAIL;
		}
	}
	

}
