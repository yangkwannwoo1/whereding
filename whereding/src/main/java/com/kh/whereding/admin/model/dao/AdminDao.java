package com.kh.whereding.admin.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.board.model.vo.Notice;
import com.kh.whereding.board.model.vo.Qna;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.gift.model.vo.Gift;
import com.kh.whereding.member.model.vo.Member;

@Repository
public class AdminDao {

	public int selectListCount(SqlSessionTemplate sqlSession) {

		return sqlSession.selectOne("adminMemberMapper.selectListCount");
	}

	public ArrayList<Member> selectList(PageInfo pi, SqlSessionTemplate sqlSession) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

		int limit = pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, limit);

		return (ArrayList) sqlSession.selectList("adminMemberMapper.selectList", null, rowBounds);
	}

	public ArrayList<Member> selectMemberList(SqlSessionTemplate sqlSession) {

		return (ArrayList) sqlSession.selectList("adminMemberMapper.selectMemberList");
	}
	
	public int adminQnaCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("adminBoardMapper.adminQnaCount");
	}
	
	public ArrayList<Qna> adminQnaList(PageInfo pi,SqlSessionTemplate sqlSession){
		
		return (ArrayList)sqlSession.selectList("adminBoardMapper.adminQnaList");
		
	}
	
	public int adminNoticeCount(SqlSessionTemplate sqlSession) {

		return sqlSession.selectOne("adminBoardMapper.adminNoticeCount");
	}

	public ArrayList<Notice> adminnoticeList(PageInfo pi, SqlSessionTemplate sqlSession) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

		int limit = pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, limit);

		return (ArrayList) sqlSession.selectList("adminBoardMapper.adminnoticeList", null, rowBounds);
	}
	
	public ArrayList<Gift> adminGiftList(PageInfo pi, SqlSessionTemplate sqlSession) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

		int limit = pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, limit);

		return (ArrayList) sqlSession.selectList("adminGiftMapper.adminGiftList", null, rowBounds);
	}
	
	public int adminGiftCount(SqlSessionTemplate sqlSession) {

		return sqlSession.selectOne("adminGiftMapper.adminGiftCount");
	}
	
	public int selectOneCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("adminMemberMapper.selectOneCount");
	}
	
	public int selectGiftCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("adminGiftMapper.selectGiftCount");
	}
	
	public int selectvisitCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("adminMemberMapper.selectvisitCount");
	}
	
	public int insertVisitCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.insert("adminVisitMapper.insertVisitCount");
    }

    public int updateVisitCount(SqlSessionTemplate sqlSession) {
    	
    	return sqlSession.update("adminVisitMapper.updateVisitCount");
    }

    public int selectVisitCount(SqlSessionTemplate sqlSession) {
    	
    	return sqlSession.selectOne("adminVisitMapper.selectvisitCount");
    }
    
    public int updateMember(Member m, SqlSessionTemplate sqlSession) {
		
		return sqlSession.update("adminMemberMapper.updateMember", m);//
	}
	
	public int deleteMember(String userId,SqlSessionTemplate sqlSession) {
		
		return sqlSession.update("adminMemberMapper.deleteMember", userId);
	}
	
	public Member adminMember(SqlSessionTemplate sqlSession,Member m) {
			
		return sqlSession.selectOne("adminMemberMapper.adminMember", m);
	}
	
	public Member detailMember(int id, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("adminMemberMapper.detailMember", id);
	}



}
