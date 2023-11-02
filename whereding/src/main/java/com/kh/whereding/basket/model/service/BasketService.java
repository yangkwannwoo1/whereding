package com.kh.whereding.basket.model.service;

import java.io.IOException;
import java.util.ArrayList;

import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.coupon.model.vo.Coupon;
import com.kh.whereding.gift.model.vo.Gift;
import com.kh.whereding.gift.model.vo.GiftHistory;

public interface BasketService {
	
	ArrayList<Basket> selectBasketList(String userNo);

	int deleteBasket(Basket b);
	
	ArrayList<Coupon> selectCouponList(String userNo);

	
	
	// 결제 할 제품 정보 조회
	Gift selectbasketOne(String giftNo);

	int deleteOrderBasket(Gift gt);

	int insertGiftHistiry(Gift gt);

	int refund(String access_token, String ImpUid) throws IOException;

	GiftHistory selectGift(GiftHistory g);

	int deleteGiftHisroty(GiftHistory gh);

	int updateGiftCount(GiftHistory gh);

	int downDateGiftCount(Gift gt);
	
}
