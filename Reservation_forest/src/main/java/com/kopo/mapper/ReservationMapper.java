package com.kopo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.kopo.domain.Reservation;


public interface ReservationMapper {

	//create
	@Insert("insert into reservation(id,name,checkin_date,checkout_date,room_type,ADDR,TEL,payer,comments,input_date,resv_code) values(rvid_seq.NEXTVAL,#{Reservation.name},TO_DATE(#{Reservation.checkin_date},'YYYY-MM-DD'),TO_DATE(#{Reservation.checkout_date},'YYYY-MM-DD'),#{Reservation.room_type},#{Reservation.addr},#{Reservation.tel},#{Reservation.payer},#{Reservation.comments},TO_CHAR(SYSDATE,'YYYY-MM-DD'), TO_CHAR(SYSDATE,'YYYY-MM-DD') || '-'|| #{Reservation.room_type} ||'-'|| rvid_seq.CURRVAL)")
	public void insertNewBook(@Param("Reservation")Reservation reservation);
	
	//read
	@Select("select * from reservation")
	public List<Reservation> getAll();
	
	// 중복체크하기 위함 
	@Select("select count(*) from reservation where (TO_DATE('${Reservation.checkin_date}','YYYY-MM-DD') between checkin_date and (checkout_date-1) or TO_DATE('${Reservation.checkout_date}','YYYY-MM-DD') between checkin_date+1 and checkout_date) and room_type=${Reservation.room_type}")
	public int DuplicateFind(@Param("Reservation")Reservation reservation);


	//update
	@Update("update reservation set name='${Reservation.name}', checkin_date=TO_DATE('${Reservation.checkin_date}','YYYY-MM-DD'), checkout_date=TO_DATE('${Reservation.checkout_date}','YYYY-MM-DD'), room_type=${Reservation.room_type}, ADDR='${Reservation.addr}', TEL='${Reservation.tel}', payer='${Reservation.payer}', comments='${Reservation.comments}', input_date=TO_CHAR(SYSDATE,'YYYY-MM-DD'), resv_code=(TO_CHAR(SYSDATE,'YYYY-MM-DD')||'-'||${Reservation.room_type}||'-'||${Reservation.id}) where id =${Reservation.id}")
	public void updateReservation(@Param("Reservation")Reservation reservation);
	
	//delete
	@Delete("delete from reservation where id = ${Id}")
	public void deleteOneReservation(@Param("Id")int id);


	
}
