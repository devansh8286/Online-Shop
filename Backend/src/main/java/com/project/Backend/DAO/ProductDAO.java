package com.project.Backend.DAO;

import java.util.List;

import com.project.Backend.Model.Product;

public interface ProductDAO {

	Product get(int productId);

	List<Product> list();

	boolean add(Product product);

	boolean update(Product product);

	boolean delete(Product product);
	
	
	List<Product> listActiveProduct();
	List<Product> listActiveProductsByCategoy(int categoryId);
	List<Product> getLatestActiveProduct(int count);
}
