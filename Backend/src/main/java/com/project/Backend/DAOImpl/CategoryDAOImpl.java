package com.project.Backend.DAOImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.project.Backend.DAO.CategoryDAO;
import com.project.Backend.Model.Category;


@Repository("categoryDAO")

public class CategoryDAOImpl implements CategoryDAO {

	public static List<Category> categories=new ArrayList<>();
	static {
		Category category=new Category();
		category.setId(1);
		category.setName("LAPTOP");
		category.setDescription("This is Laptop");
		category.setImageUrl("1.png");
		category.setActive(true);
		categories.add(category);
		
		

		 category=new Category();
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("This is Mobile");
		category.setImageUrl("2.png");
		category.setActive(true);
		categories.add(category);
		
		
	}
	
	
	
	public List<Category> CList() {
		// TODO Auto-generated method stub
		return categories;
	}



	@Override
	public Category get(int id) {
		
		//enchan forloop
		for(Category category: categories) {
			if(category.getId()==id) return category;
		}
		return null;
		
	}

}
