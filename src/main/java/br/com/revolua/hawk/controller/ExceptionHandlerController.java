package br.com.revolua.hawk.controller;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import br.com.revolua.hawk.controller.exception.BeanValidationException;

public class ExceptionHandlerController {

	  @ResponseStatus(value=HttpStatus.OK)
	  @ExceptionHandler(BeanValidationException.class)
	  public ModelAndView handleBeanValidationException(BeanValidationException ex) {
		  ModelAndView error = new ModelAndView("error");
		  error.addObject("result", ex.getResult());
		  return error;
	  }
	
}
