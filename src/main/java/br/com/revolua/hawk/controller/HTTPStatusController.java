package br.com.revolua.hawk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HTTPStatusController {

	@RequestMapping(value = "/errors/404.html")
	public String handle404() {
		return "pageNotFound";
	}
	
	@RequestMapping(value="/errors/403.html")
	public String handle403() {
		return "accessDenied";
	}

}
