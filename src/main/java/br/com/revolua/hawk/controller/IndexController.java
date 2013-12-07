package br.com.revolua.hawk.controller;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	
	@Secured(value = "ROLE_USER")
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String rootContext() throws JsonGenerationException, JsonMappingException, IOException {
		return "home";
	}

	@Secured(value = "ROLE_USER")
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String homeContext() throws JsonGenerationException, JsonMappingException, IOException {
		return "home";
	}
	
}
