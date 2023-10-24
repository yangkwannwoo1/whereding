package com.kh.whereding.basket.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.basket.model.dao.BasketDao;
import com.kh.whereding.gift.model.vo.Basket;

@Service
public class BasketServiceImpl implements BasketService{

	@Autowired
	private BasketDao baDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Basket> selectBasketlist(String userNo) {
		return baDao.selectBoardList(sqlSession, userNo);
	}
	
	

}
