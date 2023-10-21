package com.kh.whereding.main.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.main.model.dao.MainDao;
import com.kh.whereding.main.model.vo.SearchHall;
import com.kh.whereding.product.model.vo.Hall;

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

	
}
