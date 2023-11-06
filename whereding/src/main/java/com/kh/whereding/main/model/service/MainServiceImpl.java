package com.kh.whereding.main.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.main.model.dao.MainDao;
import com.kh.whereding.product.model.vo.Hall;
import com.kh.whereding.product.model.vo.ProductCollection;
import com.kh.whereding.product.model.vo.Reservation;
import com.kh.whereding.product.model.vo.Studio;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDao mnDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<HashTag> selectTagList(String category) {
		return mnDao.selectTagList(sqlSession, category);
	}
	
	@Override
	public ArrayList<Hall> selectHallList(HashMap<String, Object> map) {
		return mnDao.selectHallList(sqlSession, map);
	}

//	@Override
//	public ArrayList<Studio> selectStudioList(SearchStudio ss) {
//		return mnDao.selectStudioList(sqlSession, ss);
//	}
//
//	@Override
//	public ArrayList<Dress> selectDressList(SearchDress sd) {
//		return mnDao.selectDressList(sqlSession, sd);
//	}
//
//	@Override
//	public ArrayList<Makeup> selectMakeupList(SearchMakeup sm) {
//		return mnDao.selectMakeupList(sqlSession, sm);
//	}

	@Override
	public ArrayList<Studio> selectSearchList(HashMap<String, Object> map) {
		return mnDao.selectSearchList(sqlSession, map);

	}

	@Override
	public ArrayList<ProductCollection> searchStudioList(HashMap<String, Object> map) {
		return mnDao.searchStudioList(sqlSession, map);
	}

	@Override
	public ArrayList<ProductCollection> searchDressList(HashMap<String, Object> map) {
		return mnDao.searchDressList(sqlSession, map);
	}

	@Override
	public ArrayList<ProductCollection> searchMakeupList(HashMap<String, Object> map) {
		return mnDao.searchMakeupList(sqlSession, map);
	}

	@Override
	public ArrayList<Basket> selectBasketList(String userNo) {
		return mnDao.selectBasketList(sqlSession, userNo);
	}

	@Override
	public ArrayList<Reservation> selectRsvList(String userNo) {
		return mnDao.selectRsvList(sqlSession, userNo);
	}

//	@Override
//	public ArrayList<Hall> searchHallList(SearchHall sh) {
//		return mnDao.searchHallList(sqlSession, sh);
//	}
//
//	@Override
//	public ArrayList<Studio> ajaxSearchStudioList(SearchStudio ss) {
//		return mnDao.ajaxSearchStudioList(sqlSession, ss);
//	}
//
//	@Override
//	public ArrayList<Dress> ajaxSearchDressList(SearchDress sd) {
//		return mnDao.ajaxSearchDressList(sqlSession, sd);
//	}
//
//	@Override
//	public ArrayList<Makeup> ajaxSearchMakeupList(SearchMakeup sm) {
//		return mnDao.ajaxSearchMakeupList(sqlSession, sm);
//	}

	
	

	
//	@Override
//	public void addVisit() {
//		
//		mnDao.addVisit(sqlSession);
//		
//	}

}