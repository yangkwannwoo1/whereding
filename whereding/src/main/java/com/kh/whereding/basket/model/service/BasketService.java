package com.kh.whereding.basket.model.service;

import java.util.ArrayList;

import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.coupon.model.vo.Coupon;
import com.kh.whereding.gift.model.vo.Gift;

public interface BasketService {
	
	ArrayList<Basket> selectBasketList(String userNo);

	int deleteBasket(Basket b);
	
	ArrayList<Coupon> selectCouponList(String userNo);

	
	
	// 결제 할 제품 정보 조회
	Gift selectbasketOne(String giftNo);
	
}
