package com.kh.whereding.basket.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.whereding.basket.model.service.BasketService;
import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.coupon.model.vo.Coupon;

@Controller
public class BasketController {

	@Autowired
	private BasketService bService;
	
	@RequestMapping(value="detail.ba")
	public String detailBasket() {
		return "basket/basketView";
	}
	
	@ResponseBody
	@RequestMapping(value = "blist.ba", produces = "application/json; charset=utf-8")
	public String ajaxBasketList(String userNo) {
		System.out.println(userNo);
		ArrayList<Basket> list = bService.selectBasketList(userNo);
		
		for(Basket b : list) {
			System.out.println(b);
		}
				
		return new Gson().toJson(list);
	}
	
	@ResponseBody
	@RequestMapping(value="delete.ba")
	public String deleteBasket(String[] delRef, String userNo) {
		
		Basket b = new Basket();
		b.setUserNo(userNo);
		
		for(int i = 0; i < delRef.length; i++) {
			b.setDelRef(delRef);
		}
		
		int result = bService.deleteBasket(b);
		return result > 0 ? "NNNNY" : "NNNNN";
		
	}
	
	@ResponseBody
	@RequestMapping(value = "cplist.ba", produces = "application/json; charset=utf-8")
	public String ajaxCouponList(String userNo) {
		System.out.println(userNo);
		ArrayList<Coupon> list = bService.selectCouponList(userNo);
		
		for(Coupon c : list) {
			System.out.println(c);
		}
				
		return new Gson().toJson(list);
	}
}
