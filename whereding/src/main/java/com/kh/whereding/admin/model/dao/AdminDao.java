package com.kh.whereding.admin.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.board.model.vo.Notice;
import com.kh.whereding.board.model.vo.Qna;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.admin.model.vo.VisitCountVO;
import com.kh.whereding.gift.model.vo.Gift;
import com.kh.whereding.member.model.vo.Member;

@Repository
public class AdminDao {

	public int selectListCount(SqlSessionTemplate sqlSession) {

		return sqlSession.selectOne("memberMapper.selectListCount");
	}

	public ArrayList<Member> selectList(PageInfo pi, SqlSessionTemplate sqlSession) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

		int limit = pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, limit);

		return (ArrayList) sqlSession.selectList("memberMapper.selectList", null, rowBounds);
	}

	public ArrayList<Member> selectMemberList(SqlSessionTemplate sqlSession) {

		return (ArrayList) sqlSession.selectList("memberMapper.selectMemberList");
	}
	
	public int adminQnaCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("boardMapper.adminQnaCount");
	}
	
	public ArrayList<Qna> adminQnaList(PageInfo pi,SqlSessionTemplate sqlSession){
		
		return (ArrayList)sqlSession.selectList("boardMapper.adminQnaList");
		
	}
	
	public int adminNoticeCount(SqlSessionTemplate sqlSession) {

		return sqlSession.selectOne("boardMapper.adminNoticeCount");
	}

	public ArrayList<Notice> adminnoticeList(PageInfo pi, SqlSessionTemplate sqlSession) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

		int limit = pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, limit);

		return (ArrayList) sqlSession.selectList("boardMapper.adminnoticeList", null, rowBounds);
	}
	
	public ArrayList<Gift> adminGiftList(PageInfo pi, SqlSessionTemplate sqlSession) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

		int limit = pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, limit);

		return (ArrayList) sqlSession.selectList("giftMapper.adminGiftList", null, rowBounds);
	}
	
	public int adminGiftCount(SqlSessionTemplate sqlSession) {

		return sqlSession.selectOne("giftMapper.adminGiftCount");
	}
	
	public int selectOneCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("memberMapper.selectOneCount");
	}
	
	public int selectGiftCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("giftMapper.selectGiftCount");
	}
	
	public int selectvisitCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("memberMapper.selectvisitCount");
	}
	
	public int insertVisitCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.insert("visitCountMapper.insertVisitCount");
    }

    public int updateVisitCount(SqlSessionTemplate sqlSession) {
    	
    	return sqlSession.update("visitCountMapper.updateVisitCount");
    }

    public int selectVisitCount(SqlSessionTemplate sqlSession) {
    	
    	return sqlSession.selectOne("visitMapper.selectvisitCount");
    }
    
    public int updateMember(Member m, SqlSessionTemplate sqlSession) {
		
		return sqlSession.update("memberMapper.updateMember", m);
	}
	
	public int deleteMember(String userId,SqlSessionTemplate sqlSession) {
		
		return sqlSession.update("memberMapper.deleteMember", userId);
	}
	
	public Member adminMember(SqlSessionTemplate sqlSession,Member m) {
			
		return sqlSession.selectOne("memberMapper.adminMember", m);
	}
	
	public Member detailMember(int id, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("memberMapper.detailMember", id);
	}



}
