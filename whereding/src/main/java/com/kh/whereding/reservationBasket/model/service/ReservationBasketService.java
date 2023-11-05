package com.kh.whereding.reservationBasket.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.whereding.member.model.vo.Consulting;
import com.kh.whereding.reservationBasket.model.vo.ReservationBasket;

public interface ReservationBasketService {
	
	ArrayList<ReservationBasket> selectBasketList(String userNo);

	ArrayList<Consulting> selectTimeInfo(HashMap<String, String> map);
	
	ArrayList<Consulting> selectReservationList(HashMap<String, String> map);
	
	int selectReservation(Consulting c);
	
	int insertReservation(Consulting c);

	int deleteReservation(Consulting c);

}
