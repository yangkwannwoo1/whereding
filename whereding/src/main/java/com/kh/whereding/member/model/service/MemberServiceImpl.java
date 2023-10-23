package com.kh.whereding.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.member.model.dao.MemberDao;
import com.kh.whereding.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao mDao;
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public Member loginMember(Member m) {
		return mDao.loginMember(sqlSession, m);	
	}

	@Override
	public int createMember(Member m) {
		return mDao.createMember(sqlSession, m);
	}

	@Override
	public int selectUserId(String userId) {
		return mDao.selectUserId(sqlSession, userId);
	}

	
}
