package com.kopo.security;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class JoinUserDetails implements UserDetails,Serializable {

	/*
	 * CREATE TABLE USERS ( USER_ID VARCHAR2(50 BYTE) NOT NULL , PASSWORD
	 * VARCHAR2(100 BYTE) NOT NULL , USER_NAME VARCHAR2(50 BYTE) NOT NULL , MOBILE
	 * VARCHAR2(50 BYTE) , EMAIL VARCHAR2(100 BYTE) , ENABLED NUMBER DEFAULT 1 ,
	 * AUTH VARCHAR2(50 BYTE) DEFAULT 'ROLE_USER' NOT NULL , CONSTRAINT USERS_PK
	 * PRIMARY KEY ( USER_ID )
	 */
	private String username; //id
	private String password;
	private String check_pw;
	private String user_name; //이름
	private String mobile;
	private int enabled;
	private String auth;  //default 'ROLE_USER'

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
			
		ArrayList<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
	
			authorities.add(new SimpleGrantedAuthority(auth)); //'ROLE_USER' or 'ROLE_ADMIN' 
		
		return authorities;
	}

	@Override
	public String getPassword() {
		
		return password;
	}

	@Override
	public String getUsername() {
		
		return username;
	}

	@Override
	public boolean isAccountNonExpired() {
		
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		
		return true;
	}

	@Override
	public boolean isEnabled() {
	
		return true;
	}


	public void setUsername(String username) {
		this.username = username;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCheck_pw() {
		return check_pw;
	}

	public void setCheck_pw(String check_pw) {
		this.check_pw = check_pw;
	}
}
