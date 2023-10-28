package com.kh.whereding.gift.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.gift.model.dao.GiftDao;
import com.kh.whereding.gift.model.vo.Gift;
import com.kh.whereding.gift.model.vo.GiftCategory;

@Service
public class GiftServiceImpl implements GiftService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private GiftDao gDao;

	@Override
	public ArrayList<Gift> selectGiftList(PageInfo pi,int categoryNo) {
		return gDao.selectGiftList(sqlSession, pi,categoryNo);
	}

	@Override
	public int selectListCount() {
		return gDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<GiftCategory> selectCategoryList() {
		return gDao.selectCategory(sqlSession);
	}

	@Override
	public ArrayList<Gift> categorySearch(int categoryNo) {
		return gDao.categorySearch(sqlSession,categoryNo);
	}

	@Override
	public int insertGift(Gift gift) {
		return gDao.insertGift(sqlSession, gift);
	} 
	
	@Override
	public Gift selectGiftDetail(String giftNo) {
		return gDao.selectGiftDetail(sqlSession, giftNo);
	}
	
	
}
