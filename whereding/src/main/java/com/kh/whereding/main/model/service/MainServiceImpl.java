package com.kh.whereding.main.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.gift.model.vo.Basket;
import com.kh.whereding.main.model.dao.MainDao;
import com.kh.whereding.main.model.vo.SearchDress;
import com.kh.whereding.main.model.vo.SearchHall;
import com.kh.whereding.main.model.vo.SearchMakeup;
import com.kh.whereding.main.model.vo.SearchStudio;
import com.kh.whereding.product.model.vo.Dress;
import com.kh.whereding.product.model.vo.Hall;
import com.kh.whereding.product.model.vo.Makeup;
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
	public ArrayList<Hall> selectHallList(SearchHall sh) {
		return mnDao.selectHallList(sqlSession, sh);
	}

	@Override
	public ArrayList<Studio> selectStudioList(SearchStudio ss) {
		return mnDao.selectStudioList(sqlSession, ss);
	}

	@Override
	public ArrayList<Dress> selectDressList(SearchDress sd) {
		return mnDao.selectDressList(sqlSession, sd);
	}

	@Override
	public ArrayList<Makeup> selectMakeupList(SearchMakeup sm) {
		return mnDao.selectMakeupList(sqlSession, sm);
	}

	@Override
	public ArrayList<Studio> selectSearchList(HashMap<String, Object> map) {
		return mnDao.selectSearchList(sqlSession, map);

	}

	@Override
	public ArrayList<Studio> searchStudioList(HashMap<String, Object> map) {
		return mnDao.searchStudioList(sqlSession, map);
	}

	@Override
	public ArrayList<Dress> searchDressList(HashMap<String, Object> map) {
		return mnDao.searchDressList(sqlSession, map);
	}

	@Override
	public ArrayList<Makeup> searchMakeupList(HashMap<String, Object> map) {
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

	@Override
	public ArrayList<Studio> selectStudioList() {
		return null;
	}

	@Override
	public void addVisit() {
		
		mnDao.addVisit(sqlSession);
		
	}



	
}
