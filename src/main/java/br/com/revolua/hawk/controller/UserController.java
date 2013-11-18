package br.com.revolua.hawk.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.revolua.hawk.domain.User;
import br.com.revolua.hawk.service.UserService;

@Controller
public class UserController {

	private UserService userService;

	public UserController() {
		super();
	}

	@Autowired
	public UserController(UserService userService) {
		this.userService = userService;
	}

	@Secured(value="ROLE_USER")
	@RequestMapping("/application/user/list")
	public ModelAndView list() {
		Iterable<User> users = userService.findAll();
		ModelAndView view = new ModelAndView("/user/list");
		view.addObject("users", users);
		return view;
	}

	@Secured(value="ROLE_ADMIN")
	@RequestMapping("/application/user/edit")
	public ModelAndView edit(@Valid User user, BindingResult result) {
		if (result.hasFieldErrors("id"))
			return new ModelAndView("home");
		User _user = userService.findOne(user.getId());
		ModelAndView view = new ModelAndView("/user/edit");
		view.addObject("user", _user);
		return view;
	}

	@Secured(value="ROLE_ADMIN")
	@RequestMapping("/application/user/new")
	public String newUser() {
		return "/user/new";
	}

	@Secured(value="ROLE_ADMIN")
	@RequestMapping("/application/user/create")
	public ModelAndView create(@Valid User user, BindingResult result) {
		if (result.hasErrors())
			return new ModelAndView("/user/new");
		user.setEnabled(true);
		userService.create(user);
		ModelAndView view = new ModelAndView("/user/new");
		view.addObject("user", user);
		return view;
	}

	@Secured(value="ROLE_ADMIN")
	@RequestMapping("/application/user/update")
	public ModelAndView update(@Valid User user, BindingResult result) {
		if (result.hasErrors())
			return new ModelAndView("/user/edit");
		userService.update(user);
		ModelAndView view = new ModelAndView("/user/edit");
		view.addObject("user", user);
		return view;
	}

	@Secured(value="ROLE_ADMIN")
	@RequestMapping("/application/user/delete")
	public ModelAndView delete(@Valid User user, BindingResult result) {
		if (result.hasFieldErrors("id"))
			return new ModelAndView("/user/edit");
		userService.delete(user);
		ModelAndView view = new ModelAndView("/user/edit");
		view.addObject("user", user);
		return view;
	}

}
