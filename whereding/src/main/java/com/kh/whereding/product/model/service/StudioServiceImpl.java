package com.kh.whereding.product.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.product.model.dao.StudioDao;
import com.kh.whereding.product.model.vo.Studio;

@Service
public class StudioServiceImpl implements StudioService{

	@Autowired
	private StudioDao sDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int selectListCount() {
		return sDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<Studio> selectStudioList(PageInfo pi) {
		return sDao.selectStudioList(sqlSession, pi);
	}

}
