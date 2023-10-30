package com.kh.whereding.basket.model.service;

import java.util.ArrayList;

import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.coupon.model.vo.Coupon;

public interface BasketService {
	
	ArrayList<Basket> selectBasketList(String userNo);

	int deleteBasket(Basket b);
	
	ArrayList<Coupon> selectCouponList(String userNo);
}
