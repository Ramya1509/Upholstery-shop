package com.niit.AchooBackend.service;

import java.util.List;

import com.niit.AchooBackend.model.Category;




public interface CategoryDAO {

	   public List<Category> getAllCategory();
	   public  Category getCategory(int cid);
	   public void insertCategory(Category category);
	   public void updateCategory(Category category);
	   public void deleteCategory(int id);
	   public void deleteallCategory(Category category);

}
