package com.kopo.domain;

import org.springframework.web.multipart.MultipartFile;

public class NoticeBoard {

	/* Admin공지용 게시판
	 * CREATE TABLE NOTICEBOARD ( ID NUMBER NOT NULL , ADMINNAME VARCHAR2(100 BYTE)
	 * DEFAULT 'HUESIK' , TITLE VARCHAR2(200 BYTE) , CONTENTS VARCHAR2(2000 BYTE) ,
	 * INPUTDATE DATE , IMGPATH VARCHAR2(200 BYTE) , VIEWCNT NUMBER , CONSTRAINT
	 * NOTICEBOARD_PK PRIMARY KEY ( ID )
	 */
	private int id;  // notice_seq 생성
	private String adminname; //default 'HUESIK'
	private String title;
	private String contents;
	private String inputdate;  //SYSDATE
	private MultipartFile imgfile; 	 
	private String filepath;  // fileupload 추가 시 
	private int viewcount; //조회수 

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getInputdate() {
		return inputdate;
	}
	public void setInputdate(String inputdate) {
		this.inputdate = inputdate.substring(0, 10); // 시간 제거 
	}
	
	public MultipartFile getImgfile() {
		return imgfile;
	}
	public void setImgfile(MultipartFile imgfile) {
		this.imgfile = imgfile;
	}

	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	public int getViewcount() {
		return viewcount;
	}
	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}

	
}
