package com.kh.whereding.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.admin.model.dao.AdminDao;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.member.model.vo.Member;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao aDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int selectListCount() {
		
		return aDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<Member> selectList(PageInfo pi) {
		
		return aDao.selectList(pi, sqlSession);
	}

	@Override
	public ArrayList<Member> selectMemberList() {
		
		return aDao.selectMemberList(sqlSession);
	}

}
