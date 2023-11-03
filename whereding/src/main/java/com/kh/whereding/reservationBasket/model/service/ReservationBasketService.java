package com.kh.whereding.reservationBasket.model.service;

import java.util.ArrayList;

import com.kh.whereding.reservationBasket.model.vo.ReservationBasket;

public interface ReservationBasketService {
	
	ArrayList<ReservationBasket> selectBasketList(String userNo);

	
	
}
