package com.project.Backend.Catrgory;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.project.Backend.DAO.CategoryDAO;
import com.project.Backend.Model.Category;

public class CategoryTest {
	public static AnnotationConfigApplicationContext context;

	public static CategoryDAO categoryDAO;

	private Category category;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.project.Backend");
		context.refresh();
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");

	}
	
	
	@Test
	public void addCategory() {
		category=new Category();
		category.setId(2);
		category.setName("LAPTOP");
		category.setDescription("This is Laptop");
		category.setImageUrl("1.png");
		assertEquals("Sucessfully added in category",true,categoryDAO.add(category));
		
	}

}
