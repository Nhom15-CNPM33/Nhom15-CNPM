package com.cmsoft.dashboard.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

//import com.cmsoft.dashboard.model.Category;
//import com.cmsoft.dashboard.model.Company;
//import com.cmsoft.dashboard.model.OrderDetail;
//import com.cmsoft.dashboard.model.Product;
//import com.cmsoft.dashboard.model.ProductManage;
import com.cmsoft.dashboard.model.Role;
//import com.cmsoft.dashboard.service.CategoryService;
//import com.cmsoft.dashboard.service.CompanyService;
//import com.cmsoft.dashboard.service.OrderDetailService;
//import com.cmsoft.dashboard.service.OrderService;
//import com.cmsoft.dashboard.service.ProductManageSevice;
//import com.cmsoft.dashboard.service.ProductService;
import com.cmsoft.dashboard.service.RoleService;
import com.cmsoft.dashboard.service.UserService;

@Controller
@RequestMapping("/api")
@Transactional
public class ApiController {
	@Autowired
	RoleService roleService;
	
//	@Autowired
//	CompanyService companyService;
//	
//	@Autowired
//	ProductService productService;
//	
//	@Autowired
//	ProductManageSevice productManageService;
//	
//	@Autowired
//	CategoryService categoryService;
//	
//	@Autowired
//	OrderService orderService;
	
//	@Autowired
//	UserService userService;
//	
//	@Autowired
//	OrderDetailService orderDetailService;
//	
//	
//	@RequestMapping(value = "", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE })
//	@ResponseBody
//	public Order api() {
//		
//		List<OrderDetail> products =orderDetailService.findAll();
//		return products.get(0).getOrder();
//	}

	
}
