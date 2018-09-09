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

}
