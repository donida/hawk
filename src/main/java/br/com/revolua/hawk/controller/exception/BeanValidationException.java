package br.com.revolua.hawk.controller.exception;

import org.springframework.validation.BindingResult;

public class BeanValidationException extends Exception {

	private static final long serialVersionUID = 6854294129068675889L;
	
	private BindingResult result;

	public BeanValidationException(String message, Throwable couse, BindingResult result) {
		super(message, couse);
		this.result = result;
	}

	public BeanValidationException(Throwable couse, BindingResult result) {
		super(couse);
		this.result = result;
	}
	
	public BeanValidationException(String message, BindingResult result) {
		super(message);
		this.result = result;
	}
	
	public BeanValidationException(BindingResult result) {
		super();
		this.result = result;
	}

	public BindingResult getResult() {
		return result;
	}

	public void setResult(BindingResult result) {
		this.result = result;
	}
	
}
