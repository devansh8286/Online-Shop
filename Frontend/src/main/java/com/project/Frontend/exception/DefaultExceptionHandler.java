package com.project.Frontend.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class DefaultExceptionHandler {

	
	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handlerNoHandlerFoundException() {
		ModelAndView mv= new ModelAndView("error");
		mv.addObject("errorTitle","The page is not Exist!!!");
		mv.addObject("errorDescription","The Page Looking for Not available  :)");
		mv.addObject("title","404 page not found");
		return mv;
	}
}
