package com.kopo.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kopo.mapper.RegistrationMapper;

@Repository
public class JoinUserAuthDAO {


	@Autowired
	private RegistrationMapper registrationmapper;

	
	public void setNewUser(JoinUserDetails registration) {
		
		registrationmapper.insertNewUser(registration);
		
	}
	public JoinUserDetails getUserById(String username) {
		return registrationmapper.selectUserByUserId(username);
	}
}
