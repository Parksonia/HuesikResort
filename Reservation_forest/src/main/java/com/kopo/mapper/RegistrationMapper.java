package com.kopo.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.kopo.security.JoinUserDetails;

public interface RegistrationMapper {

	//create
		@Insert("insert into users(username,password,user_name,mobile) values ('${Registration.username}','${Registration.password}','${Registration.user_name}','${Registration.mobile}')")
		public void insertNewUser(@Param("Registration")JoinUserDetails registration);
		
	
	//read
		@Select("select * from users where username='${Username}'")
		public JoinUserDetails selectUserByUserId(@Param("Username")String username);
}
