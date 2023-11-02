package com.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopo.domain.Reservation;
import com.kopo.repository.Repository;
import com.kopo.service.Service.ReservationService;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired(required = false)
	private Repository.ReservationRepository reservationRepository;
	

	@Override
	public List<Reservation> getAllList() {
		
		return reservationRepository.getAllList();
	}

	@Override
	public void setNewReservation(Reservation reservation) {
		reservationRepository.setNewReservation(reservation);
	
	}
	@Override
	public List<Reservation> getOneList(int id) {
		
		return reservationRepository.getOneList(id);
	}

	@Override
	public int DuplicateFind(Reservation reservation) {
		
		return reservationRepository.DuplicateFind(reservation);
	}

	@Override
	public void deleteOneReservation(int id) {
		
		reservationRepository.deleteOneReservation(id);
	}

	@Override
	public void updateReservation(Reservation reservation) {
		 reservationRepository.updateReservation(reservation);
		
	}
		
	}
