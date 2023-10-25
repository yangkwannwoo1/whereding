package com.kh.whereding.gift.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.gift.model.dao.GiftDao;
import com.kh.whereding.gift.model.vo.Basket;
import com.kh.whereding.gift.model.vo.Gift;

@Service
public class GiftServiceImpl implements GiftService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private GiftDao gDao;

	@Override
	public ArrayList<Gift> selectGiftList(PageInfo pi) {
		return gDao.selectGiftList(sqlSession, pi);
	} 
	
	@Override
	public ArrayList<Basket> selectBasketList(String userNo) {
		return gDao.selectBasketList(sqlSession, userNo);
	}
	
	
}
