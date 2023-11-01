package com.kh.whereding.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.admin.model.dao.AdminDao;
import com.kh.whereding.board.model.vo.Notice;
import com.kh.whereding.board.model.vo.Qna;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.gift.model.vo.Gift;
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

	@Override
	public int adminQnaCount() {
		
		return aDao.adminQnaCount(sqlSession);
	}

	@Override
	public ArrayList<Qna> adminQnaList(PageInfo pi) {
		
		return aDao.adminQnaList(pi, sqlSession);
	}

	@Override
	public int adminNoticeCount() {
		
		return aDao.adminNoticeCount(sqlSession);
	}

	@Override
	public ArrayList<Notice> adminnoticeList(PageInfo pi) {
		
		return aDao.adminnoticeList(pi, sqlSession);
	}

	@Override
	public ArrayList<Gift> adminGiftList(PageInfo pi) {
		
		return aDao.adminGiftList(pi, sqlSession);
	}

	@Override
	public int adminGiftCount() {
		
		return aDao.adminGiftCount(sqlSession);
	}

	@Override
	public int selectOneCount() {
		
		return aDao.selectOneCount(sqlSession);
	}

	@Override
	public int selectGiftCount() {

		return aDao.selectGiftCount(sqlSession);
	}

	@Override
	public int insertVisitCount() {
		return aDao.selectvisitCount(sqlSession);
	}

	@Override
	public int updateVisitCount() {
		return aDao.selectvisitCount(sqlSession);
	}

	@Override
	public int selectVisitCount() {
		return aDao.selectVisitCount(sqlSession);
	}

	@Override
	public int updateMember(Member m) {
		
		return aDao.updateMember(m, sqlSession);
	}

	@Override
	public int deleteMember(String userNo) {
		
		return aDao.deleteMember(userNo, sqlSession);
	}

	@Override
	public Member adminMember(Member m) {
		
		Member adminMember = aDao.adminMember(sqlSession, m);
		
		return adminMember;
	}

	@Override
	public Member detailMember(int id) {

		return aDao.detailMember(id, sqlSession);
	
	}

	@Override
	public Member selectMember(String userNo) {
		return aDao.selectMember(userNo, sqlSession);
	}

	@Override
	public int updatePassword(HashMap<String, String> map) {
		return aDao.updatePassword(map, sqlSession);
	}

}
