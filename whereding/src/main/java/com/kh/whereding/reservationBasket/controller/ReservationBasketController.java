package com.kh.whereding.reservationBasket.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
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
	
    @RequestMapping("consulting.md")
    public String loginModal() {
    	System.out.println("오냐");
        return "reservationBasket/rsvModal";
    }
	
	@ResponseBody
	@RequestMapping(value="selectConsulting.rs", produces = "application/json; charset=utf-8")
	public String selectConsultingList(String userNo) {
		ArrayList<ReservationBasket> list = rService.selectBasketList(userNo);
		for(ReservationBasket r : list) {
			System.out.println(r);
		}
		return new Gson().toJson(list);
	}
}
