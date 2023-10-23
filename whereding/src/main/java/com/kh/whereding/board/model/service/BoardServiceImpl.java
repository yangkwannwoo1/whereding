package com.kh.whereding.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.FullyQualifiedAnnotationBeanNameGenerator;
import org.springframework.stereotype.Service;

import com.kh.whereding.board.model.dao.BoardDao;
import com.kh.whereding.board.model.vo.Notice;
import com.kh.whereding.board.model.vo.Qna;
import com.kh.whereding.common.model.vo.PageInfo;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao bDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * 공지사항의 리스트카운트 구하는 서비스
	 */
	@Override
	public int selectNoticeListCount() {
		int listCount = bDao.selectNoticeListCount(sqlSession);
		return listCount;
	}
	
	/**
	 * qna의 리스트카운트 구하는 서비스
	 */
	@Override
	public int selectQnaListCount() {
		int listCount = bDao.selectQnaListCount(sqlSession);
		return listCount;
	}

	/**
	 * 공지사항 목록 불러오는 서비스 
	 */
	@Override
	public ArrayList<Notice> selectNoticeList(PageInfo pi) {
		ArrayList<Notice> list =  bDao.selectNoticeList(sqlSession, pi);
		return list;
	}
	
	/**
	 * qna 목록 불러오는 서비스
	 */
	@Override
	public ArrayList<Qna> selectQnaList(PageInfo pi) {
		ArrayList<Qna> list = bDao.selectQnaList(sqlSession, pi);
		return list;
	}
	
	/**
	 * 공지사항 상세보기 서비스
	 */
	@Override
	public Notice selectNotice(int boardNo) {
		Notice n = bDao.selectNotice(sqlSession, boardNo);
		return n;
	}
	
	/**
	 * qna 상세보기 서비스
	 */
	@Override
	public Qna selectQna(int boardNo) {
		Qna q = bDao.selectQna(sqlSession, boardNo);
		return q;
	}
	
	/**
	 * 공지사항 등록 서비스
	 */
	@Override
	public int insertNotice(Notice n) {
		int result = bDao.insertNotice(sqlSession, n);
		return result;
	}

	/**
	 * qna 등록 서비스
	 */
	@Override
	public int insertQna(Qna q) {
		int result = bDao.insertQna(sqlSession, q);
		return result;
	}

	/**
	 * 공지사항 새로운 내용으로 업데이트
	 */
	@Override
	public int updateNoticeBoard(Notice n) {
		int result = bDao.updateNoticeBoard(sqlSession, n);
		return result;
	}

	/**
	 * qna 업데이트
	 */
	@Override
	public int updateQnaBoard(Qna q) {
		int result = bDao.updateQnaBoard(sqlSession, q);
		return result;
	}

	@Override
	public int deleteNotice(int boardNo) {
		int result = bDao.deleteNotice(sqlSession,boardNo);
		return 0;
	}

	@Override
	public int deleteQna(int boardNo) {
		int result = bDao.qnaNotice(sqlSession,boardNo);
		return 0;
	}

	


	

}
