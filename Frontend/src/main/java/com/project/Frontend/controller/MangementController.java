package com.project.Frontend.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.Backend.DAO.CategoryDAO;
import com.project.Backend.DAO.ProductDAO;
import com.project.Backend.Model.Category;
import com.project.Backend.Model.Product;
import com.project.Frontend.Util.FileUplodeUtility;

@Controller
@RequestMapping("/manage")
public class MangementController {

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private ProductDAO productDAO;

	private static final Logger logger = LoggerFactory.getLogger(MangementController.class);

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public ModelAndView showManageProducts(@RequestParam(name = "operation", required = false) String operation) {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClickManageProducts", true);
		mv.addObject("title", "Manage Products");
		Product nproduct = new Product();
		// set few of The Fields
		nproduct.setSupplierId(1);
		nproduct.setActive(true);
		mv.addObject("product", nproduct);

		if (operation != null) {

			if (operation.equals("product")) {
				mv.addObject("messege", "Product Display Sucessfully");
			}

		}

		return mv;
	}

	// handling product submission
	@RequestMapping(value = "/products", method = RequestMethod.POST)
	// bindingresult is come before Model
	public String handelProductSubmission(@Valid @ModelAttribute("product") Product mproduct, BindingResult result,
			Model model,HttpServletRequest request) {

		// check if there are any error
		if (result.hasErrors()) {

			model.addAttribute("title", "Manage Products");
			model.addAttribute("userClickManageProducts", true);
			model.addAttribute("message","validation Faild!!!!");	
			
			//we can't use redirect because the cannot display error
			return "page";
		}

		logger.info(mproduct.toString());

		// create new product Record
		productDAO.add(mproduct);


		if(!mproduct.getFile().getOriginalFilename().equals("")) {
			FileUplodeUtility.UploadFile(request,mproduct.getFile(),mproduct.getCode());
		}
		
		
		
		
		
		return "redirect:/manage/products?operation=product";
	}

	// returning categories for all the request mapping
	@ModelAttribute("categories")
	public List<Category> getcategories() {
		return categoryDAO.CList();

	}

}
