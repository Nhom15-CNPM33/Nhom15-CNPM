package com.cmsoft.dashboard.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cmsoft.dashboard.model.BaseResponse;
import com.cmsoft.dashboard.model.Food;
import com.cmsoft.dashboard.model.Role;
import com.cmsoft.dashboard.service.FoodService;
import com.cmsoft.dashboard.service.RoleService;
import com.cmsoft.dashboard.service.UserService;
import com.cmsoft.dashboard.utils.EncrytedPasswordUtils;
import com.cmsoft.helper.ResponseStatusEnum;






@Controller
@RequestMapping("/admin/foods")
@Transactional
public class AdminFoodController {
	
	@Autowired
	ServletContext context;
	
	
	@Autowired
	RoleService roleService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	FoodService foodService;

	
	
	
	
	
	@RequestMapping(value = "")
    public String userManagement(Model model) {
        List<Food> foods=foodService.findAll();
        
        model.addAttribute("foods", foods);
        return "foods";
    }
	
	
	

	@RequestMapping(value = "/add-food", method = RequestMethod.GET)
	public ModelAndView createFood(ModelMap modelMap) {		
		ModelAndView model = new ModelAndView();
		Food b = new Food();
		modelMap.addAttribute("food", b);
		model.setViewName("add_food_form");

		return model;
    }
	
	@RequestMapping(value = "/action-add-food")
    public String addFood(@RequestParam("file") MultipartFile file,String name, int unit_price) {
		String savePath = "/static/food/";
		String webappRoot = context.getRealPath(savePath);
		System.out.println("webapp root - " + webappRoot);
		File FOLDER = new File(webappRoot);
		FOLDER.mkdirs();
		
		byte[] bytes;
		try {
			bytes = file.getBytes();
			Path path = Paths.get(webappRoot + file.getOriginalFilename());
			System.out.println("webapp root - " + file.getOriginalFilename());
			Files.write(path, bytes);
		} catch (IOException e) {
			e.printStackTrace();
		}
		Food foodNew = new Food();
		foodNew.setName(name);
		foodNew.setStatus(1);
		foodNew.setUnit_price(unit_price);
		foodNew.setImage(savePath + file.getOriginalFilename());
		foodService.save(foodNew);
        return "redirect:/admin";
    }
	
	
}

