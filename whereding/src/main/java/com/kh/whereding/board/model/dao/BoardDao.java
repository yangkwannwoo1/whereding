package com.kh.whereding.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.board.model.vo.Notice;
import com.kh.whereding.board.model.vo.Qna;
import com.kh.whereding.common.model.vo.PageInfo;

@Repository
public class BoardDao {

	/** 공지사항의 listCount
	 * @param sqlSession
	 * @param board
	 * @return
	 */
	public int selectNoticeListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.selectNoticeListCount");
	}
	
	public int selectQnaListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.selectQnaListCount");
	}
	/** 공지사항 목록
	 * @param sqlSession
	 * @param pi
	 * @return
	 */
	public ArrayList<Notice> selectNoticeList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectNoticeList", null, rowBounds);
	
	}
	
	/** qna 목록
	 * @param sqlSession
	 * @param pi
	 * @return
	 */
	public ArrayList<Qna> selectQnaList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectQnaList", null, rowBounds);
	}
	
	
	/** 공지사항 상세보기
	 * @param sqlSession
	 * @param boardNo
	 * @return
	 */
	public Notice selectNotice(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.selectNotice", boardNo);
	}
	
	/** qna 상세페이지 
	 * @param sqlSession
	 * @param boardNo
	 * @return
	 */
	public Qna selectQna(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.selectQna", boardNo);
	}
	
	/** 공지사항 등록
	 * @param sqlSession
	 * @param n
	 * @return
	 */
	public int insertNotice(SqlSessionTemplate sqlSession, Notice n) {
		return sqlSession.insert("boardMapper.insertNotice", n);
	}

	/** qna 등록
	 * @param sqlSession
	 * @param q
	 * @return
	 */
	public int insertQna(SqlSessionTemplate sqlSession, Qna q) {
		return sqlSession.insert("boardMapper.insertQna", q);
	}

	public int updateNoticeBoard(SqlSessionTemplate sqlSession, Notice n) {
		return sqlSession.update("boardMapper.updateNoticeBoard", n);
	}

	public int updateQnaBoard(SqlSessionTemplate sqlSession, Qna q) {
		return sqlSession.update("boardMapper.updateQnaBoard", q);
	}

	public int deleteNotice(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.delete("boardMapper.deleteNotice", boardNo);
	}

	public int qnaNotice(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.delete("boardMapper.qnaNotice", boardNo);
	}

	public int updateQnaAnswer(SqlSessionTemplate sqlSession, Qna q) {
		return sqlSession.update("boardMapper.updateQnaAnswer", q);
	}

	

	

	

	

}
