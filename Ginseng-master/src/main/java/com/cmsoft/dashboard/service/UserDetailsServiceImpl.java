package com.cmsoft.dashboard.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cmsoft.dashboard.model.User;
import com.cmsoft.dashboard.utils.EncrytedPasswordUtils;



@Service
public class UserDetailsServiceImpl implements UserDetailsService {
 
    @Autowired
    private UserService userService;

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
    	User user = userService.findOneByUsername(userName);

        String roleName = user.getRole().getName();
        
        List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
        grantList.add(new SimpleGrantedAuthority(roleName));
       
        System.out.println(grantList);
        return new org.springframework.security.core.userdetails.User(user.getUserName(),user.getPassword(), true, true, true, true, grantList);
    }
 
}