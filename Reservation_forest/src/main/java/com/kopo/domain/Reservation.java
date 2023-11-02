package com.kopo.domain;

import java.util.Date;

public class Reservation {

	private int id;//pk
	private String name;  
	private String checkin_date;//pk
	private String checkout_date;//pk
	private Date resv_date_sdf;
	private int room_type;  //pk
	private String addr;
	private String tel;
	private String payer;
	private String comments;
	private Date input_date;
	//private int processing;
	private String resv_code;  //pk
	
	
	
	
	public String getResv_code() {
		return resv_code;
	}
	public void setResv_code(String resv_code) {
		this.resv_code = resv_code;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getCheckin_date() {
		return checkin_date;
	}
	public void setCheckin_date(String checkin_date) {
		this.checkin_date = checkin_date.substring(0, 10);
	}
	public String getCheckout_date() {
		return checkout_date;
	}
	public void setCheckout_date(String checkout_date) {
		this.checkout_date = checkout_date.substring(0, 10);
	}
	public Date getResv_date_sdf() {
		return resv_date_sdf;
	}
	public void setResv_date_sdf(Date resv_date_sdf) {
		this.resv_date_sdf = resv_date_sdf;
	}
	public int getRoom_type() {
		return room_type;
	}
	public void setRoom_type(int room_type) {
		this.room_type = room_type;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPayer() {
		return payer;
	}
	public void setPayer(String payer) {
		this.payer = payer;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public Date getInput_date() {
		return input_date;
	}
	public void setInput_date(Date input_date) {
		this.input_date = input_date;
	}
	/*
	 * public int getProcessing() { return processing; } public void
	 * setProcessing(int processing) { this.processing = processing; }
	 */
	
}
