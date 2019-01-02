package com.cmsoft.dashboard.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cmsoft.dashboard.model.Role;
import com.cmsoft.dashboard.service.RoleService;

@Controller
@RequestMapping("/")
@Transactional
public class LoginController {
	@Autowired
	RoleService roleService;
	
	//@RequestMapping(value = "", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE })
	//@JsonIgnore
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public ModelAndView hello( ModelAndView model,@RequestParam(value = "error", required = false) String error) {
	if (error != null) {
			model.addObject("error", "Username or password is incorrect !");
		}
		model.setViewName("login");
		return model;
	}

	@RequestMapping(value = "/403")
	public String AccessDeniedException() {
		return "403";
	}
	
	@RequestMapping(value = "/logout")
	public String logout() {
		return "logout";
	}
	
}
