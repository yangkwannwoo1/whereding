package com.kh.whereding.basket.model.service;

import java.util.ArrayList;

import com.kh.whereding.gift.model.vo.Basket;

public interface BasketService {
	
	ArrayList<Basket> selectBasketlist(String userNo);

}
