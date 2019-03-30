package com.project.Backend.DAO;

import java.util.List;

import com.project.Backend.Model.Category;

public interface CategoryDAO {
	
	boolean add(Category category);
	
	List<Category> CList();
	Category get(int id);
}
