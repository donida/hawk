package br.com.revolua.hawk.controller;

import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.revolua.hawk.controller.exception.BeanValidationException;
import br.com.revolua.hawk.controller.vo.FormContent;
import br.com.revolua.hawk.controller.vo.ListPageData;
import br.com.revolua.hawk.controller.vo.FormHeader;
import br.com.revolua.hawk.domain.User;
import br.com.revolua.hawk.service.UserService;

@Controller
public class UserController {

	private UserService userService;
	private MessageSource messageSource;

	public UserController() {
		super();
	}

	@Autowired
	public UserController(UserService userService, MessageSource messageSource) {
		this.userService = userService;
		this.messageSource = messageSource;
	}

	@Secured(value = "ROLE_USER")
	@RequestMapping("/application/user/list")
	public @ResponseBody ListPageData<User> list(@RequestBody User user, Locale locale) {
		ListPageData<User> pageData = new ListPageData<User>();
		FormHeader pageHeader = new FormHeader();
		pageHeader.setTitle(messageSource.getMessage("user.list.title", null, locale));
		pageHeader.setDescription(messageSource.getMessage("user.list.description", null, locale));
		pageData.setFormHeader(pageHeader);
		FormContent<User> formContent = new FormContent<User>();
		formContent.setDomain(user);
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		List<User> searchResult = userService.findUsers(user, username);
		formContent.setSearchResult(searchResult);
		pageData.setFormContent(formContent);
		return pageData;
	}

	@Secured(value = "ROLE_ADMIN")
	@RequestMapping("/application/user/edit")
	public ModelAndView edit(@Valid User user, BindingResult result) {
		if (result.hasFieldErrors("id"))
			return new ModelAndView("home");
		User _user = userService.findOne(user.getId());
		ModelAndView view = new ModelAndView("/user/edit");
		view.addObject("user", _user);
		return view;
	}

	@Secured(value = "ROLE_ADMIN")
	@RequestMapping("/application/user/new")
	public String newUser() {
		return "/user/new";
	}

	@Secured(value = "ROLE_ADMIN")
	@RequestMapping(value = "/application/user/create")
	public @ResponseBody User create(@Valid @RequestBody User user, BindingResult result) 
			throws BeanValidationException {
		if (result.hasErrors())
			throw new BeanValidationException(result);
		user.setEnabled(true);
		userService.create(user);
		return user;
	}

	@Secured(value = "ROLE_ADMIN")
	@RequestMapping("/application/user/update")
	public ModelAndView update(@Valid User user, BindingResult result) {
		if (result.hasErrors())
			return new ModelAndView("/user/edit");
		userService.update(user);
		ModelAndView view = new ModelAndView("/user/edit");
		view.addObject("user", user);
		return view;
	}

	@Secured(value = "ROLE_ADMIN")
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
