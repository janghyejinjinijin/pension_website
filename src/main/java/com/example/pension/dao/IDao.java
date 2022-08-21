package com.example.pension.dao;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import com.example.pension.dto.BoardDto;
import com.example.pension.dto.QboardDto;
import com.example.pension.dto.reservationDto;
//import com.example.pension.dto.reservationDao;


public interface IDao {

	
	//boardDao 리뷰게시판
	public ArrayList<BoardDto> review_listDao();
	public void r_inputDao(String ruser, String rname, String rcontent, String rscore);
	
	
	//QboardDao qna게시판
	public ArrayList<QboardDto> qna_listDao();
	public void q_inputDao(String qname, String qtitle, String qcontent, String qphone);
	public QboardDto viewDao(String qnum);
	public void deleteDao(String qnum);
	
	//reserve_table
	public void reservationInputDao(String name, String room_name, LocalDate startDate, LocalDate endDate, Integer rguest,String  bbq_yn,String campfire_yn );
	
	
	//calendar_reservation_table
	public ArrayList<reservationDto> reservationDao();
	
}
