package br.com.revolua.hawk.controller;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	
	@RequestMapping(value="/application/home", method=RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView view = new ModelAndView("home");
		return view;
	}

	@RequestMapping(value="/", method=RequestMethod.GET)
	public String rootContext() throws JsonGenerationException, JsonMappingException, IOException {
		return "index";
	}

}
