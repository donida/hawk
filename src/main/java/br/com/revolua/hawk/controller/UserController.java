package br.com.revolua.hawk.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.revolua.hawk.dao.UserRepository;
import br.com.revolua.hawk.domain.User;

@Controller
public class UserController {
	
	private UserRepository userRepository;
	
	@Autowired
	public UserController(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@RequestMapping("login")
	public ModelAndView login(@Valid User user, BindingResult result) {
		if (result.hasErrors())
			return new ModelAndView("index");
		Iterable<User> allUsers = userRepository.findAll();
		ModelAndView view = new ModelAndView("home");
		view.addObject(user);
		return view;
	}

}
