package com.kh.whereding.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.board.model.vo.CollaboRation;
import com.kh.whereding.board.model.vo.Notice;
import com.kh.whereding.board.model.vo.Qna;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.gift.model.vo.Gift;
import com.kh.whereding.member.model.vo.Member;
import com.kh.whereding.member.model.vo.Review;

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
	
	public int deleteMember(String userNo,SqlSessionTemplate sqlSession) {
		
		return sqlSession.update("adminMemberMapper.deleteMember", userNo);
	}
	
	public Member adminMember(SqlSessionTemplate sqlSession,Member m) {
			
		return sqlSession.selectOne("adminMemberMapper.adminMember", m);
	}
	
	public Member detailMember(int id, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("adminMemberMapper.detailMember", id);
	}
	
	public Member selectMember(String userNo, SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMemberMapper.selectMember", userNo);
	}

	public int updatePassword(HashMap<String, String> map, SqlSessionTemplate sqlSession) {
		return sqlSession.update("adminMemberMapper.updatePassword",map);
	}

	public int selectCollaboCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminCollaboMapper.selectCollaboCount");
	}

	public ArrayList<CollaboRation> selectCollaboList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

		int limit = pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("adminCollaboMapper.selectCollaboList", null, rowBounds);
	}

	public CollaboRation selectCollDetail(SqlSessionTemplate sqlSession, int cpNo) {
		return sqlSession.selectOne("adminCollaboMapper.selectCollDetail", cpNo);
	}

	public int collaboAccept(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.update("adminCollaboMapper.collaboAccept", userNo);
	}

	public int collaboDenied(SqlSessionTemplate sqlSession, int cpNo) {
		return sqlSession.update("adminCollaboMapper.collaboDenied", cpNo);
	}

	public ArrayList<Review> selectHallReview(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("adminProductMapper.selectHallReview");
	}

	public ArrayList<Review> selectStudioReview(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("adminProductMapper.selectStudioReview");
	}

	public ArrayList<Review> selectDressReview(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("adminProductMapper.selectDressReview");
	}

	public ArrayList<Review> selectMakeupReview(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("adminProductMapper.selectMakeupReview");
	}

	public int deleteReview(SqlSessionTemplate sqlSession, int reviewNo) {
		return sqlSession.delete("adminProductMapper.deleteReview", reviewNo);
	}
	



}
