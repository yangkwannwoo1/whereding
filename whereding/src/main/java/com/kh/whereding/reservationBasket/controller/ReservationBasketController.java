package com.kh.whereding.reservationBasket.controller;

import java.text.ParseException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.whereding.member.model.vo.Consulting;
import com.kh.whereding.reservationBasket.model.service.ReservationBasketService;
import com.kh.whereding.reservationBasket.model.vo.ReservationBasket;

@Controller
public class ReservationBasketController {

	@Autowired
	private ReservationBasketService rService;
	
	@RequestMapping(value="consulting.rs")
	public String detailBasket() {
		return "reservationBasket/reservationBasket";
	}

	@ResponseBody
	@RequestMapping(value="selectBasketList.rs", produces = "application/json; charset=utf-8")
	public String selectBasketList(String userNo) {
		ArrayList<ReservationBasket> list = rService.selectBasketList(userNo);
		for(ReservationBasket r : list) {
		}
		return new Gson().toJson(list);
	}
	
	@ResponseBody
	@RequestMapping(value="selectTimeInfo.rs", produces = "application/json; charset=utf-8")
	public String selectTimeInfo(String companyNo) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("cno", companyNo);
		
		if(companyNo.substring(0,1).equals("H")) {
			map.put("category", "hall");
		}else if(companyNo.substring(0,1).equals("S")) {
			map.put("category", "studio");
		}else if(companyNo.substring(0,1).equals("D")) {
			map.put("category", "dress");
		}else {
			map.put("category", "makeup");
		}
		
		// 먼저 조회한다.
		ArrayList<Consulting> list = rService.selectTimeInfo(map);
		for(Consulting c : list) {
			System.out.println(c);
		}
		return new Gson().toJson(list);
	}
	
	@ResponseBody
	@RequestMapping(value="reservationList.rs", produces = "application/json; charset=utf-8")
	public String selectReservationList(int csYear, int csMonth, int csDay, String code) {
		LocalDate date = LocalDate.of(csYear, csMonth, csDay);
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		
		String csDate = date.format(formatter);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("date", csDate);
		map.put("code", code);

		ArrayList<Consulting> list = rService.selectReservationList(map);
		return new Gson().toJson(list);
	}
	
	@ResponseBody
	@RequestMapping(value="insert.rs")
	public String insertReservation(Consulting c) {
		// Consulting(csNo=0, productNo=H1, userNo=1, csContent=안녕하세요, csDate=2023/11/16,
		// startTime=12:30, endTime=null, consultingTime=null, unitTime=null, openTime=null, closeTime=null)
		// Consulting(csNo=0, productNo=H1, userNo=1, csContent=안녕하세요, csDate=2023/11/16,
		// startTime=12:30, endTime=null, consultingTime=null, unitTime=30, openTime=null, closeTime=null)
		String startTime = c.getStartTime(); // "10:30"
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm"); // 형식 생성
		LocalTime time = LocalTime.parse(startTime,formatter); // Date 형식으로 변환 10:30
		LocalTime endTime = time.plusMinutes(Integer.parseInt(c.getUnitTime()));
		c.setEndTime(endTime+"");

		System.out.println(c);
		int result1 = rService.selectReservation(c); 

		if(result1 > 0) { // 예약이 존재할 경우
			return "NNNNN";
		}else {	// 해당시간에 예약이 존재하지 않을 경우 
			System.out.println("예약 존재 안함 ");
			int result2 = rService.insertReservation(c);
			int result3 = rService.deleteReservation(c);
			
			return result2 * result3 > 0 ? "NNNNS" : "NNNNF";
		}
	}
	
}
