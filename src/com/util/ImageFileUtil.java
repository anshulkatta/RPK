package com.util;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.dao.Item;

@Component
public class ImageFileUtil {
	
	@Value("${directorypath}") 
	private String dir;
	
	public List<Item> updateItemImages(List<Item> itemList) {
		if(itemList != null && !itemList.isEmpty()) {
			for(Item item : itemList) {
				item.setImageFileList(this.readImageFile(item.getItemId()));
			}
		}
		return itemList;
	}

	public List<String> readImageFile(int id) {
		List<String> fileList = new ArrayList<String>();
		try {
			File folder = new File(dir + File.separator + id);
			if(folder.exists()) {
				File[] listOfFiles = folder.listFiles();
				if(listOfFiles != null && listOfFiles.length > 0) {
					for(File f : listOfFiles) {
						if(f.exists() && f.isFile()) {
							fileList.add(f.getName());
						}
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			//TODO : add defualt image file name
		}
		return fileList;
	}

}
