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

		return sqlSession.selectOne("adminMapper.selectListCount");//
	}

	public ArrayList<Member> selectList(PageInfo pi, SqlSessionTemplate sqlSession) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

		int limit = pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, limit);

		return (ArrayList) sqlSession.selectList("adminMapper.selectList", null, rowBounds);//
	}

	public ArrayList<Member> selectMemberList(SqlSessionTemplate sqlSession) {

		return (ArrayList) sqlSession.selectList("adminMapper.selectMemberList");//
	}
	
	public int adminQnaCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("adminMapper.adminQnaCount");//
	}
	
	public ArrayList<Qna> adminQnaList(PageInfo pi,SqlSessionTemplate sqlSession){
		
		return (ArrayList)sqlSession.selectList("adminMapper.adminQnaList");//
		
	}
	
	public int adminNoticeCount(SqlSessionTemplate sqlSession) {

		return sqlSession.selectOne("adminMapper.adminNoticeCount");//
	}

	public ArrayList<Notice> adminnoticeList(PageInfo pi, SqlSessionTemplate sqlSession) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

		int limit = pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, limit);

		return (ArrayList) sqlSession.selectList("adminMapper.adminnoticeList", null, rowBounds);//
	}
	
	public ArrayList<Gift> adminGiftList(PageInfo pi, SqlSessionTemplate sqlSession) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

		int limit = pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, limit);

		return (ArrayList) sqlSession.selectList("adminMapper.adminGiftList", null, rowBounds); //
	}
	
	public int adminGiftCount(SqlSessionTemplate sqlSession) {

		return sqlSession.selectOne("adminMapper.adminGiftCount");//
	}
	
	public int selectOneCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("adminMapper.selectOneCount"); //
	}
	
	public int selectGiftCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("adminMapper.selectGiftCount"); // 
	}
	
	public int insertVisitCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.insert("adminMapper.insertVisitCount"); //없다
    }

    public int updateVisitCount(SqlSessionTemplate sqlSession) {
    	
    	return sqlSession.update("adminMapper.updateVisitCount"); //없다
    }

    public int selectVisitCount(SqlSessionTemplate sqlSession) {
    	
    	return sqlSession.selectOne("adminMapper.selectvisitCount"); //
    }
    
    public int updateMember(Member m, SqlSessionTemplate sqlSession) {
		
		return sqlSession.update("adminMapper.updateMember", m);// 없다
	}
	
	public int deleteMember(String userId,SqlSessionTemplate sqlSession) {
		
		return sqlSession.update("adminMapper.deleteMember", userId); //
	}
	
	public Member adminMember(SqlSessionTemplate sqlSession,Member m) {
			
		return sqlSession.selectOne("adminMapper.adminMember", m);//
	}
	
	public Member detailMember(int id, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("adminMapper.detailMember", id);//
	}



}
