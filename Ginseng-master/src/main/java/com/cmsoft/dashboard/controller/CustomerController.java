package com.cmsoft.dashboard.controller;

import java.io.Console;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.login.LoginContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cmsoft.dashboard.model.BaseResponse;
import com.cmsoft.dashboard.model.Food;
import com.cmsoft.dashboard.model.Role;
import com.cmsoft.dashboard.model.User;
import com.cmsoft.dashboard.service.FoodService;
import com.cmsoft.dashboard.service.RoleService;
import com.cmsoft.dashboard.service.UserService;
import com.cmsoft.dashboard.utils.EncrytedPasswordUtils;
import com.cmsoft.helper.ResponseStatusEnum;




@Controller
@RequestMapping("/customers")
@Transactional
public class CustomerController extends BaseController{
	
	@Autowired
	RoleService roleService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	FoodService foodService;

	@RequestMapping(value = "")
    public String adminPage(Model model) {
	     List<Food> foods=foodService.findAll();
	        
	        model.addAttribute("foods", foods);
		
		return "customers";
    }
	
//	@RequestMapping(value = { "/session/assignee-wareHouseSession" }, method = RequestMethod.POST, consumes = {MediaType.APPLICATION_JSON_VALUE}, produces = {MediaType.APPLICATION_JSON_UTF8_VALUE })
//	@ResponseBody
//	public ResponseEntity<BaseResponse> assigneeMaterial(
//			@RequestBody WarehouseRequest table_data, 
//			ModelMap model) {
//	
//	
	
	
	
}

