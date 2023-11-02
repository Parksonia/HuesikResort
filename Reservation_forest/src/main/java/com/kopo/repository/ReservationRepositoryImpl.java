package com.kopo.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kopo.domain.Reservation;
import com.kopo.mapper.ReservationMapper;
import com.kopo.repository.Repository.ReservationRepository;

@Repository
public class ReservationRepositoryImpl implements ReservationRepository{

	@Autowired(required = false)
	private ReservationMapper reservationmapper;
	private List<Reservation> listOfReservation = new ArrayList<Reservation>();
	
	@Override
	public List<Reservation> getAllList() {

		listOfReservation= reservationmapper.getAll();
		return listOfReservation;
	}
	
	
	@Override
	public void setNewReservation(Reservation reservation) {
		reservationmapper.insertNewBook(reservation);
		
	}

	@Override
	public List<Reservation> getOneList(int id) {
		
			List<Reservation> oneResvInfo = new ArrayList<Reservation>();  //초기화
	
			for(int i=0; i< listOfReservation.size(); i++) {   // 전체 리스트(mapper 쿼리문 통해 전체 조회된)중 파라미터와 동일한 값만 리스트에 넣기
				Reservation reservation = listOfReservation.get(i);
				
				if(reservation.getId() == id) {
					oneResvInfo.add(reservation);				
					break;
				}
				if(oneResvInfo == null) {
					throw new IllegalArgumentException("해당예약을 찾을 수 없습니다 ");
				}

			}
		return oneResvInfo;
	}
	

	
	@Override
	public int DuplicateFind(Reservation reservation) {
		// 중복 예약값이 있으면 숫자 반환 
		int result = 0 ;
		return reservationmapper.DuplicateFind(reservation);
	}

	@Override
	public void deleteOneReservation(int id) {
	
		reservationmapper.deleteOneReservation(id);
	}

	@Override
	public void updateReservation(Reservation reservation) {
		reservationmapper.updateReservation(reservation);
	}
	
	
}

