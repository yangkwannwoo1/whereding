package com.kh.whereding.gift.model.service;

import java.util.ArrayList;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.gift.model.vo.Basket;
import com.kh.whereding.gift.model.vo.Gift;

public interface GiftService {
	
	abstract ArrayList<Gift> selectGiftList(PageInfo pi);
	
	ArrayList<Basket> selectBasketList(String userNo);

}
