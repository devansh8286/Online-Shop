package com.project.Backend.DAO;

import java.util.List;

import com.project.Backend.Model.Category;

public interface CategoryDAO {
	List<Category> CList();
	Category get(int id);
}
