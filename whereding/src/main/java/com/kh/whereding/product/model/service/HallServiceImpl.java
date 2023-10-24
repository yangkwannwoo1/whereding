package com.kh.whereding.product.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.product.model.dao.HallDao;
import com.kh.whereding.product.model.vo.Hall;

@Service
public class HallServiceImpl implements HallService {
	
	@Autowired
	private HallDao hDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int selectListCount() {
		
		return hDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<Hall> selectList(PageInfo pi) {
		
		return hDao.selectList(sqlSession, pi);
	}

	@Override
	public int insertHall(Hall h) {
		
		return hDao.insertHall(h, sqlSession);
	}

}
