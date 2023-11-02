package com.kopo.repository;

import java.util.List;

import com.kopo.domain.NoticeBoard;
import com.kopo.domain.Reservation;

public interface Repository   {

	interface ReservationRepository {
		
		List<Reservation>getAllList(); // 전체 예약 리스트 
		
		void setNewReservation(Reservation reservation);  // 예약 입력 
		
		List<Reservation> getOneList(int id);
	
		public int DuplicateFind(Reservation reservation); // 중복 예약 값 찾기 
	
		public void updateReservation(Reservation reservation); //update
		
		public void deleteOneReservation(int id); // 예약삭제
	
	}

	interface NoticeRepository {
		
		public void setNewNoticeBoard(NoticeBoard noticeboard);
		
		public List<NoticeBoard>getNoticeAll(); //검색기능을 추가한 전체 리스트 
	
		public void setNoticeViewCnt(int id);
		
		public List<NoticeBoard>getNoticeOne(int id);
	}
	
}
