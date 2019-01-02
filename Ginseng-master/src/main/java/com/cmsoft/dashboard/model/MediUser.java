package com.cmsoft.dashboard.model;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.cmsoft.dashboard.service.UserService;





public class MediUser extends User {

	UserService userService;
   
//   private static final long serialVersionUID = -3531439484732724601L;

   
  

   private final List<String> authorityList;

   public MediUser(String username, String password,  Collection authorities){

           super(username, password, true,true,true,true,authorities);

           this.authorityList = this.getAuthorities().stream().map(x -> x.toString()).collect(Collectors.toList());
           
           
           
           
          
   }

//   public static long getSerialversionuid() {
//      return serialVersionUID;
//   }

//   public UserRoleEnum getRole() {
//		switch(this.roleId) {
//		case 1:
//			return UserRoleEnum.ADMIN;
//		case 2:
//			return UserRoleEnum.USER;
//		case 3:
//			return UserRoleEnum.SUPER_ADMIN;
//	
//		default:
//			return UserRoleEnum.UNKNOW;
//		}
//	}
   
   

	/**
	 * @return the restaurantId
	 */
	
//   public String getRoleName() {
//		return roleName;
//	}
//   
//   public int getRoleId() {
//		return this.roleId;
//	}
//   
	

	/**
	 * @return the restaurantName
	 */

//	public List<String> getAuthorityList() {
//		return authorityList;
//	}
}