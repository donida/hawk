package br.com.revolua.hawk.controller;

import java.util.Locale;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import br.com.revolua.hawk.controller.exception.BeanValidationException;
import br.com.revolua.hawk.controller.vo.MessageInfo;

@ControllerAdvice
public class ExceptionHandlerController {
	
	private final Logger logger = Logger.getLogger(ExceptionHandlerController.class);
	
	@Autowired
	private MessageSource messageSource;

	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(BeanValidationException.class)
	public @ResponseBody MessageInfo handleBeanValidationException(BeanValidationException ex, Locale locale) {
		try {
			return MessageInfo.getErrorInfo(ex, messageSource, locale);
		} catch (Exception e) {
			logger.error("BeanValidationException to MessageInfo converter error", e);
			return MessageInfo.getDefaultErrorMassege(messageSource, locale);
		}
	}

	@ResponseStatus(value = HttpStatus.UNAUTHORIZED)
	@ExceptionHandler(AccessDeniedException.class)
	public String handleAccessDeniedException(AccessDeniedException ex, Locale locale) {
		return "login";
	}
	
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(Exception.class)
	public @ResponseBody MessageInfo handleRuntimeException(Exception ex, Locale locale) {
		logger.error("Unexpected error", ex);
		return MessageInfo.getDefaultErrorMassege(messageSource, locale);
	}

}
