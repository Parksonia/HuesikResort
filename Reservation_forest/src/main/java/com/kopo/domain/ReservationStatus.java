package com.kopo.domain;

public class ReservationStatus {
	

	private int id;
	private String conf_checkindate;
	private String conf_checkoutdate;
	private String room1;
	private String room2;
	private String room3;
		
	
	
	public ReservationStatus() {
		super();
		
	}

	public ReservationStatus(String room1, String room2, String room3) {
		super();
		this.room1 = room1;
		this.room2 = room2;
		this.room3 = room3;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getConf_checkindate() {
		return conf_checkindate;
	}

	public void setConf_checkindate(String conf_checkindate) {
		this.conf_checkindate = conf_checkindate;
	}

	public String getConf_checkoutdate() {
		return conf_checkoutdate;
	}

	public void setConf_checkoutdate(String conf_checkoutdate) {
		this.conf_checkoutdate = conf_checkoutdate;
	}

	public String getRoom1() {
		return room1;
	}
	public void setRoom1(String room1) {
		this.room1 = room1;
	}
	public String getRoom2() {
		return room2;
	}
	public void setRoom2(String room2) {
		this.room2 = room2;
	}
	public String getRoom3() {
		return room3;
	}
	public void setRoom3(String room3) {
		this.room3 = room3;
	}
	
	}	

