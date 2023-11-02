package com.kopo.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.kopo.domain.NoticeBoard;
import com.kopo.domain.Reservation;

public interface Service {

	 interface ReservationService {
		 
		 List<Reservation>getAllList();
		 
		 void setNewReservation(Reservation reservation);
		 
		 List<Reservation> getOneList(int id);
	 
		 public int DuplicateFind(Reservation reservation);
	 
		 public void deleteOneReservation(int id);
	 
		 public void updateReservation(Reservation reservation);
	 
	 }

	 interface NoticeBoardService{
		 
		 public String saveUploadedFile(MultipartFile file) throws IOException ;
	 
		 public JsonObject SummerNoteImageFile(MultipartFile file,HttpServletRequest req);
	 
		 public void setNewNoticeBoard(NoticeBoard noticeboard);
	 
		 public List<NoticeBoard> getNoticeAll();
		 
		 public void setNoticeViewCnt(int id);
		 
		 public List<NoticeBoard> getNoticeOne(int id);
	 }
	 
}
