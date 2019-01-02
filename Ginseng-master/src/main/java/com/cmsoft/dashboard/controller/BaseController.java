package com.cmsoft.dashboard.controller;

import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.cmsoft.dashboard.model.MediUser;
import com.cmsoft.dashboard.model.UserRoleEnum;
import com.cmsoft.dashboard.service.UserService;



@Controller
public class BaseController {
	protected final String defaultPage = "DEFAULT";
	private int pageNumber = 50;
	private int ROLE_ID = 0;
	
	@Autowired
	UserService userService;
//	
//	@Autowired
//	private InternalResourceViewResolver viewResolver;
	
	
	public User currentUser() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User currentUser = (User)auth.getPrincipal();
		return currentUser;
		
		
//		return (MediUser)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	}
	
	
	public String getUsername() {
		return this.currentUser().getUsername();
	}
	
	public int getRoleId() {
		com.cmsoft.dashboard.model.User user = userService.findOneByUsername(getUsername());
		return user.getRole().getId();
	}
	
	public int getUserId() {
		com.cmsoft.dashboard.model.User user = userService.findOneByUsername(getUsername());
		return user.getId();
	}

	
	public com.cmsoft.dashboard.model.User getCurrentUser() {
		com.cmsoft.dashboard.model.User user = userService.findOneByUsername(getUsername());
		return user;
	}
	
	
	public int getPageNumber() {
		return pageNumber;
	}
	
}