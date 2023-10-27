package com.kh.whereding.common.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.common.model.dao.CommonDao;
import com.kh.whereding.common.model.vo.Great;

@Service
public class CommonServiceImpl implements CommonService{

	@Autowired
	private CommonDao cDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int checkLike(Great g) {
		return cDao.checkLike(sqlSession,g);
	}

	@Override
	public int insertLike(Great g) {
		return cDao.insertLike(sqlSession,g);
	}

	@Override
	public int deleteLike(Great g) {
		return cDao.deleteLike(sqlSession,g);
	}
	
	
}
