package com.kopo.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kopo.domain.Reservation;
import com.kopo.domain.ReservationStatus;
import com.kopo.service.Service;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired(required = false)
	private Service.ReservationService reservationService;
	
	@GetMapping("/all")
	public String requestBookingList(Model model) {
		
		List<Reservation> allList = reservationService.getAllList();

		List<ReservationStatus> confList = new ArrayList<ReservationStatus>();

		LocalDate today = LocalDate.now(); 
		//LocalDate start = today.withYear(2022); 
		
		Date today_date = java.sql.Date.valueOf (today); 
		
		for (int i = 0; i < 60; i++) { // 두달 치 날짜 담아두기 

			ReservationStatus rvs = new ReservationStatus("0", "0", "0");

			rvs.setConf_checkindate(today.plusDays(i).toString());
			rvs.setConf_checkoutdate(today.plusDays(i).toString());

			confList.add(rvs);
		}

		for (Reservation k : allList) {

			try {
		
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				
				// 체크인 아웃의 시간차이를 구하기 위해 Date포맷으로 변경
				Date checkindate = formatter.parse(k.getCheckin_date()); 
				Date checkoutdate = formatter.parse(k.getCheckout_date());
				
				int dif_day = (int) ((checkindate.getTime() - today_date.getTime()) / (24 * 60 * 60 * 1000L) % 365); // 오늘날짜 기준으로 체크인 날짜의 차이를 구함
				
				if (dif_day < 0) { // 지난 예약의 경우 -인 인덱스를 0으로 초기화 해줌
					dif_day = 0;
				}
				
				ReservationStatus rvs = confList.get(dif_day);
				
				int c_day = ((int) ((checkoutdate.getTime() - today_date.getTime()) / (24 * 60 * 60 * 1000L) % 365))- 1; // 오늘날짜를 기준으로 체크아웃날짜의 차이를 구함 
				
				if (c_day < 0) {
					continue;
				
				}else if(c_day >= 60) {
					c_day = 59;
				}
				//System.out.println("c_day  : " + c_day);
				
				for (int i = dif_day; i <= c_day; i++) {  // 체크인(체크인 날짜 지난 경우 오늘이 시작값이 됨 )~체크아웃 사이의 날짜까지 모두 처리해주기 위한 반복문 
					
					ReservationStatus rvs1 = confList.get(i);
					
					if (i == dif_day) { // 체크인 날짜 (0번 인덱스의 경우)
						if (k.getRoom_type() == 1) {
							
							rvs1.setRoom1(k.getName());
							rvs1.setId(k.getId());
							rvs1.setConf_checkoutdate(k.getCheckout_date());
						} else if (k.getRoom_type() == 2) {
							rvs1.setRoom2(k.getName());
							rvs1.setId(k.getId());
							rvs1.setConf_checkoutdate(k.getCheckout_date());
						} else if (k.getRoom_type() == 3) {
							rvs1.setRoom3(k.getName());
							rvs1.setId(k.getId());
							rvs1.setConf_checkoutdate(k.getCheckout_date());
						}
					} else {  // 사잇값일 경우 달력에 표시가 안되야 함으로 pass로 저장하여 조건문을 피할 수 있게함 
						if (k.getRoom_type() == 1) {
							rvs1.setRoom1("pass");
							rvs1.setId(k.getId());
							rvs1.setConf_checkoutdate(k.getCheckout_date());
						} else if (k.getRoom_type() == 2) {
							rvs1.setRoom2("pass");
							rvs1.setId(k.getId());
							rvs1.setConf_checkoutdate(k.getCheckout_date());
						} else if (k.getRoom_type() == 3) {
							rvs1.setRoom3("pass");
							rvs1.setId(k.getId());
							rvs1.setConf_checkoutdate(k.getCheckout_date());
						}
					}
					
					confList.set(i, rvs1);
				}
			

			} catch (Exception e) {

			}
		}

		// model.addAttribute("BookingInfo",allList);
		model.addAttribute("BookingList", confList);

		return "bookingstatus";
	
	}
	@GetMapping("/new")
	public String requestAddNewBook(@ModelAttribute("NewBooking") Reservation reservation, Model model) {
		List<Reservation> allList = reservationService.getAllList();

		return "booking";
	}

	@PostMapping("/new")
	public String insertNewBook(@ModelAttribute("NewBooking") Reservation reservation,RedirectAttributes re) {
		
		int duplicateCheck = reservationService.DuplicateFind(reservation);
		
		if(duplicateCheck > 0 ) {
			re.addFlashAttribute("duplicateFind", "success");
			return "redirect:/admin/new";
		
		}else {
			
			reservationService.setNewReservation(reservation);
			return "redirect:/admin/all";
		}
	
	}
   	
	@GetMapping("/one")
	public String requestOneReservation(@RequestParam("id") int id,@ModelAttribute("UpdateBooking")Reservation reservation, Model model) {

		List<Reservation> oneReservation = reservationService.getOneList(id); // domain save
		
		
		model.addAttribute("detailsOfOne", oneReservation);

		return "detailsBooking";
	}
	//update
	@PostMapping("/one")
	public String insertUpdateBooking(@ModelAttribute("UpdateBooking")Reservation reservation,@RequestParam("id") int id, RedirectAttributes re) {
		int duplicateCheck = reservationService.DuplicateFind(reservation);
		reservation.setId(id);
		if(duplicateCheck > 0 ) {
			re.addFlashAttribute("duplicateFind", "success");
			return "redirect:/admin/one?id="+id;
		
		}else {
			
			reservationService.updateReservation(reservation); // must change update	
			return "redirect:/admin/all";
		}
	}
	
	@GetMapping("/delete")
	public String requestDeleteReservation(@RequestParam("id") int id) {
		
		reservationService.deleteOneReservation(id);		
		return "redirect:/admin/all";
		
	}
}
