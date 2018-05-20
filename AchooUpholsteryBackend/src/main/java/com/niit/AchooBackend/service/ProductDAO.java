package com.niit.AchooBackend.service;

import java.util.List;

import com.niit.AchooBackend.model.Product;



public interface ProductDAO {
	 public List<Product> getAllProduct();
	   public  Product getProduct(int product_id);
	   public void insertProduct(Product product);
	   public void updateProduct(Product product);
	   public void deleteProduct(int id);
	   public void deleteallProduct(Product product);

}
