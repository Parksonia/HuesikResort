package com.kopo.security;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class JoinUserDetailsService implements UserDetailsService{

	@Autowired
	private JoinUserAuthDAO userauthdao;

	//password encoder
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	
		//해당 유저의 정보가 없다면 예외 발생시켜줌
		JoinUserDetails user = userauthdao.getUserById(username);
        
		if(user==null) {
            throw new UsernameNotFoundException(username);

		}
	
		return user;
        
	}
	
		public void setNewUser(JoinUserDetails registration) {
			
			String endcodePassword = bcryptPasswordEncoder.encode(registration.getPassword());
			
			registration.setPassword(endcodePassword);
			
			userauthdao.setNewUser(registration);	
		}

	
}
