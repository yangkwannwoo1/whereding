package com.kh.whereding.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.member.model.vo.Member;

@Repository
public class MemberDao {
	
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	public int createMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.createMember", m);
	}
	public int selectUserId(SqlSessionTemplate sqlSession, String userId) {
		return sqlSession.selectOne("memberMapper.selectUserId", userId);
	}

	public int updateMemberInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMemberInfo", m);
	}

	public int updateMemberPwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMemberPwd", m);
	}

	public int checkMemberPwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.checkMemberPwd", m);
	}

	public int deleteMember(SqlSessionTemplate sqlSession, Member m) {
		System.out.println("디에오");
		return sqlSession.update("memberMapper.deleteMember", m);
	}
}
