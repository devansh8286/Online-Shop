package com.project.Frontend.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.project.Backend.Model.Product;

public class ProductValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Product.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {

		Product product=(Product) target;
		
		//where file is selected or not
		if(product.getFile() == null ||
		product.getFile().getOriginalFilename().equals("")){
			errors.rejectValue("file", null,"Please select the image file to upload");
	return;
		}
		if(! (
				product.getFile().getContentType().equals("image/jpeg") ||
				product.getFile().getContentType().equals("image/png") ||
				product.getFile().getContentType().equals("image/gif")
				
				))
		{
		errors.rejectValue("file", null,"please use only image file for upload");	
		}

		return;
	}

}
