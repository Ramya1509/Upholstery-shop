package com.niit.AchooBackend.service;

import java.util.List;

import com.niit.AchooBackend.model.Role;



public interface RoleDAO {
	
	 public List<Role> getAllRole();
	   public  Role getRole(String user_name);
	   public void insertRole(Role role);
	   public void updateRole(Role role);
	   public void deleteRole(int id);
	   public void deleteallRole(Role role);


}
