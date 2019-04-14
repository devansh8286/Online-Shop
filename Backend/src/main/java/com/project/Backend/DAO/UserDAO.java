package com.project.Backend.DAO;

import java.util.List;

import com.project.Backend.Model.Address;
import com.project.Backend.Model.Cart;
import com.project.Backend.Model.User;

public interface UserDAO {

	boolean addUser(User user);

	boolean addAddresss(Address address);

	Address getBillingAddress(User user);
	
	List<Address> listShiipingAddress(User user);
	
	boolean updateCart(Cart cart);
	
	User getByEmail(String email);
}
