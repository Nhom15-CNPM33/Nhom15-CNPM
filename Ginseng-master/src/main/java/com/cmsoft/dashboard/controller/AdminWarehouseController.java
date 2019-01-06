package com.cmsoft.dashboard.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Date;
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
import com.cmsoft.dashboard.model.Warehouse;
import com.cmsoft.dashboard.model.Material;
import com.cmsoft.dashboard.service.WarehouseService;
import com.cmsoft.dashboard.service.MaterialService;
import com.cmsoft.dashboard.service.UserService;
import com.cmsoft.dashboard.utils.EncrytedPasswordUtils;
import com.cmsoft.helper.ResponseStatusEnum;




@Controller
@RequestMapping("/admin/warehouse")
@Transactional
public class AdminWarehouseController extends BaseController {
	
	@Autowired
	ServletContext context;
	
	
	@Autowired
	MaterialService materialService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	WarehouseService warehouseService;

	
	
	
	
	
	@RequestMapping(value = "")
    public String userManagement(Model model) {
        List<Warehouse> warehouses=warehouseService.findAll();
        List<Material> materials= materialService.findAll();
        model.addAttribute("warehouse", warehouses);
        model.addAttribute("materials", materials);
        return "warehouse";
    }
	
	

	@RequestMapping(value = "/import-export-warehouse", method = RequestMethod.GET)
	public ModelAndView createWarehouse(ModelMap modelMap) {		
		ModelAndView model = new ModelAndView();
		Warehouse b = new Warehouse();
		modelMap.addAttribute("warehouse", b);
	        List<Material> materials= materialService.findAll();
	        modelMap.addAttribute("materials", materials);
		
		model.setViewName("import_warehouse_form");

		return model;
    }

//	@RequestMapping(value = "/action", params = "import")
//	public String importWarehouse() {
//		return "redirect:/admin/warehouse/action-import-warehouse";
//	}
//	
//	@RequestMapping(value = "/action", params = "export")
//	public String exportWarehouse() {
//		return "redirect:/admin/warehouse/action-export-warehouse";
//	}
	
	@RequestMapping(value = "/action-import-warehouse", method = RequestMethod.POST)
	public ResponseEntity<BaseResponse> importWarehouse(float amount, int material_id) {

		BaseResponse response = new BaseResponse();
		response.setStatus(ResponseStatusEnum.SUCCESS);
		response.setMessage(ResponseStatusEnum.SUCCESS);
		response.setData(null);

		Warehouse newWarehouse = new Warehouse();
		newWarehouse.setMaterial(materialService.findOneById(material_id));
		newWarehouse.setAmount(amount);
		newWarehouse.setStatus(1); // 1 = import
		newWarehouse.setEmployee(getUser());
		newWarehouse.setCreatedAt(new Date());
		warehouseService.save(newWarehouse);
		return new ResponseEntity<BaseResponse>(response, HttpStatus.OK);
    }
	
	@RequestMapping(value = "/action-export-warehouse", method = RequestMethod.POST)
	public ResponseEntity<BaseResponse> exportWarehouse(float amount, int material_id) {
		BaseResponse response = new BaseResponse();
		response.setStatus(ResponseStatusEnum.SUCCESS);
		response.setMessage(ResponseStatusEnum.SUCCESS);
		response.setData(null);
		Warehouse newWarehouse = new Warehouse();
		newWarehouse.setMaterial(materialService.findOneById(material_id));
		newWarehouse.setAmount(amount);
		newWarehouse.setStatus(0); // 0 = export
		newWarehouse.setEmployee(getUser());
		newWarehouse.setCreatedAt(new Date());
		warehouseService.save(newWarehouse);
		return new ResponseEntity<BaseResponse>(response, HttpStatus.OK);
    }
	
	
}

