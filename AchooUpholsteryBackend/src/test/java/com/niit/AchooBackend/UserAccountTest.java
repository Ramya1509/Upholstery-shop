package com.niit.AchooBackend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.AchooBackend.model.Card;
import com.niit.AchooBackend.model.Cart;
import com.niit.AchooBackend.model.Category;
import com.niit.AchooBackend.model.Product;
import com.niit.AchooBackend.model.Role;
import com.niit.AchooBackend.model.ShippingAddress;
import com.niit.AchooBackend.model.Supplier;
import com.niit.AchooBackend.model.UserAccount;
import com.niit.AchooBackend.service.CardDAO;
import com.niit.AchooBackend.service.CartDAO;
import com.niit.AchooBackend.service.CategoryDAO;
import com.niit.AchooBackend.service.ProductDAO;
import com.niit.AchooBackend.service.RoleDAO;
import com.niit.AchooBackend.service.ShippingAddressDAO;
import com.niit.AchooBackend.service.SupplierDAO;
import com.niit.AchooBackend.service.UserAccountDAO;

public class UserAccountTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AnnotationConfigApplicationContext context =new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();
		System.out.println("system.....");
		 
		UserAccountDAO useraccountDAO=(UserAccountDAO) context.getBean("UserAccountDAO");
		UserAccount userAccount = (UserAccount) context.getBean("userAccount");
		
		userAccount.setUser_name("ramya");
		
		userAccount.setGender("female");
		userAccount.setEmail_id("ramyakumari1509@gmail.com");
		userAccount.setPassword("aravind");
		userAccount.setMn(7708);
		userAccount.setAddress("amman nagar");
	
   useraccountDAO.insertUserAccount(userAccount);
	
	

	ProductDAO productDAO=(ProductDAO) context.getBean("ProductDAO");
	Product product= (Product) context.getBean("product");
	
	product.setPn("Sofa");
	product.setDescription("Frontload,Topload");
	product.setQuantity(6);
	//product.setC( 1);
	product.setPrice(9000);
	
	//product.setSid( 1);
	product.setLiters(5);
	product.setWeight(35);

  productDAO.insertProduct(product);
 
 
  CategoryDAO categoryDAO=(CategoryDAO) context.getBean("CategoryDAO");
	Category category= (Category) context.getBean("category");
  
	
	category .setCn("Large Appliances");
	 category.setCd("Airconditioners,WashingMachine,Refrigirators");
	 
	  categoryDAO.insertCategory(category);
	  
	  
	  
SupplierDAO supplierDAO=(SupplierDAO) context.getBean("SupplierDAO");
Supplier supplier= (Supplier) context.getBean("supplier");


supplier.setSn("Sowmi");
supplier.setEmail_id("sowmi@gmail.com");
supplier.setMn(9894);
supplier.setSa("ram nagar,coimbatore");

supplierDAO.insertSupplier(supplier);
	  
	
CartDAO cartDAO=(CartDAO) context.getBean("CartDAO");
Cart cart= (Cart) context.getBean("cart");

cart.setPn("sofa");
cart.setId(1);
cart.setQuantity(5);
cart.setPrice(400);
cart.setUser_name("aravind");

cartDAO.insertCart(cart);

ShippingAddressDAO shippingaddressDAO=(ShippingAddressDAO) context.getBean("ShippingAddressDAO");
ShippingAddress shippingAddress= (ShippingAddress) context.getBean("shippingAddress");


shippingAddress.setId(1);
shippingAddress.setUser_Id(1);
shippingAddress.setMobile_Number(5);
shippingAddress.setAddress("ram nagar");
shippingAddress.setPrice(500);

shippingaddressDAO.insertShippingAddress(shippingAddress);


RoleDAO roleDAO=(RoleDAO) context.getBean("RoleDAO");
Role role= (Role) context.getBean("role");

     role.setUser_Id(1);
     role.setUser_name("ramya");
     role.setRole("admin");
     role.setEnabled(true);
     role.setPassword("raj");
     
     userAccount.setRole(role);
     role.setUseraccount(userAccount);
    // roleDAO.insertRole(role);
     
     
     
     CardDAO cardDAO=(CardDAO) context.getBean("CardDAO");
     Card card= (Card) context.getBean("card");
     
     
     card.setCardHolder_Name("ammu");
     card.setCard_Number(1);
     card.setCvv_number(567);
     card.setCardType("credit card");

      cardDAO.insertCard(card);
}

}
