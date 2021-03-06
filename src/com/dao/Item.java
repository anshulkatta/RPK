package com.dao;

// Generated 14 Jul, 2016 10:18:35 PM by Hibernate Tools 3.4.0.CR1

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

/**
 * Item generated by hbm2java
 */
@Entity
@Table(name = "item", catalog = "rpk")
public class Item implements java.io.Serializable {

	@GeneratedValue(strategy=GenerationType.AUTO)
	private int itemId;
	private String itemName;
	private String itemDesc;
	private int itemPrice;
	private int itemWeight;
	private int itemPicid;
	private int categoryId;
	
	private MultipartFile files[];
	private List<String> imageFileList;
	
	@Transient
	public List<String> getImageFileList() {
		return imageFileList;
	}

	public void setImageFileList(List<String> imageFileList) {
		this.imageFileList = imageFileList;
	}

	@Transient 
	public MultipartFile[] getFiles() {
		return files;
	}

	public void setFiles(MultipartFile[] files) {
		this.files = files;
	}

	public Item() {
	}

	public Item(int itemId, String itemName, String itemDesc, int itemPrice,
			int itemWeight, int itemPicid, int categoryId) {
		this.itemId = itemId;
		this.itemName = itemName;
		this.itemDesc = itemDesc;
		this.itemPrice = itemPrice;
		this.itemWeight = itemWeight;
		this.itemPicid = itemPicid;
		this.categoryId = categoryId;
	}

	@Id
	@Column(name = "item_id", unique = true, nullable = false)
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getItemId() {
		return this.itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	@Column(name = "item_name", nullable = false, length = 50)
	public String getItemName() {
		return this.itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	@Column(name = "item_desc", nullable = false, length = 50)
	public String getItemDesc() {
		return this.itemDesc;
	}

	public void setItemDesc(String itemDesc) {
		this.itemDesc = itemDesc;
	}

	@Column(name = "item_price", nullable = false)
	public int getItemPrice() {
		return this.itemPrice;
	}

	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}

	@Column(name = "item_weight", nullable = false)
	public int getItemWeight() {
		return this.itemWeight;
	}

	public void setItemWeight(int itemWeight) {
		this.itemWeight = itemWeight;
	}

	@Column(name = "item_picid", nullable = false)
	public int getItemPicid() {
		return this.itemPicid;
	}

	public void setItemPicid(int itemPicid) {
		this.itemPicid = itemPicid;
	}

	@Column(name = "category_id", nullable = false)
	public int getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	
	
	@Override
	public String toString() {
		return getItemName() +"\n" +getItemDesc() +"\n"
				+getCategoryId()+getItemPrice() +"\n" + getItemWeight();
	}

}
