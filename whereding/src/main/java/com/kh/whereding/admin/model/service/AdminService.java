package com.kh.whereding.admin.model.service;

import java.util.ArrayList;

import com.kh.whereding.board.model.vo.Notice;
import com.kh.whereding.board.model.vo.Qna;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.common.model.vo.VisitCountVO;
import com.kh.whereding.gift.model.vo.Gift;
import com.kh.whereding.member.model.vo.Member;

public interface AdminService {
	
	// member
	int selectListCount();
	
	ArrayList<Member> selectList(PageInfo pi);
	
	ArrayList<Member> selectMemberList();
	
	// qna
	int adminQnaCount();
	
	ArrayList<Qna> adminQnaList(PageInfo pi);
	
	// notice
	int adminNoticeCount();
	
	ArrayList<Notice> adminnoticeList(PageInfo pi);
	
	// gift
	int adminGiftCount();
	
	ArrayList<Gift> adminGiftList(PageInfo pi);
	
	// member count
	int selectOneCount();
	
	// gift count
	int selectGiftCount();
	
	// visit count
	int insertVisitCount();

    int updateVisitCount();

    static ArrayList<VisitCountVO> selectVisitCount() {
		return null;
	}
	
	
}
