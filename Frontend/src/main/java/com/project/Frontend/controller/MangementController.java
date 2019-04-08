package com.project.Frontend.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.Backend.DAO.CategoryDAO;
import com.project.Backend.DAO.ProductDAO;
import com.project.Backend.Model.Category;
import com.project.Backend.Model.Product;



@Controller
@RequestMapping("/manage")
public class MangementController {

	@Autowired
	private CategoryDAO categoryDAO;

	private ProductDAO productDAO;
	
	private static final Logger logger=LoggerFactory.getLogger(MangementController.class);
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public ModelAndView showManageProducts(@RequestParam(name="operation",required=false) String operation) {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClickManageProducts", true);
		mv.addObject("title", "Manage Products");
		Product nproduct = new Product();
		// set few of The Fields
		nproduct.setSupplierId(1);
		nproduct.setActive(true);
		mv.addObject("product", nproduct);
		
		
		if(operation!=null) {
			
			if(operation.equals("product")) {
				mv.addObject("messege","Product Display Sucessfully");
			}
				
			
		}
		
		return mv;
	}
	
	
	//handling product submission
	@RequestMapping(value ="/products", method = RequestMethod.POST)
	public String handelProductSubmission(@ModelAttribute("product")Product mproduct) {
		
		logger.info(mproduct.toString());
		
		//create new product Record
		productDAO.add(mproduct);
		
		return"redirect:/manage/products?operation=product";
	}

	
	
	//returning categories for all the request mapping 
	@ModelAttribute("categories")
	public List<Category> getcategories(){
		return categoryDAO.CList();
		
	}
	
	
	
}
