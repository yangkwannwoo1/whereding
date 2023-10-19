package com.kh.whereding.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.board.model.dao.BoardDao;
import com.kh.whereding.board.model.vo.Notice;
import com.kh.whereding.common.model.vo.PageInfo;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao bDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int selectListCount() {
		int listCount = bDao.selectListCount(sqlSession);
		return listCount;
	}

	@Override
	public ArrayList<Notice> selectList(PageInfo pi) {
		ArrayList<Notice> list =  bDao.selectList(sqlSession, pi);
		return list;
	}

}
