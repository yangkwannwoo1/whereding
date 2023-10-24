package com.kh.whereding.basket.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.whereding.basket.model.service.BasketServiceImpl;
import com.kh.whereding.basket.model.vo.Basket;

@Controller
public class BasketController {
	
	@Autowired
	private BasketServiceImpl baService;
	
	@RequestMapping(value="basket.ba", produces = "application/json; charset=utf-8")
	public String selectBaseketList(String userNo) {
		ArrayList<Basket> list = baService.selectBasketList(userNo);
	}
	

}
