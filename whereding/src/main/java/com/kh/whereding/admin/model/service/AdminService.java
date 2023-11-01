package com.kh.whereding.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.whereding.board.model.vo.CollaboRation;
import com.kh.whereding.board.model.vo.Notice;
import com.kh.whereding.board.model.vo.Qna;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.gift.model.vo.Gift;
import com.kh.whereding.member.model.vo.Member;

public interface AdminService {
	
	// member
	int selectListCount();
	
	Member selectMember(String userNo);
	
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

    int selectVisitCount();
    
    //로그인 서비스(select)
 	Member adminMember(Member m);
 	
 	// 상세
 	Member detailMember(int id);
    
    //정보수정 서비스(update)
 	int updateMember(Member m);
 	
 	// 회원탈퇴 서비스(update)
 	int deleteMember(String userId);
	
 	// 비밀번호 변경
 	int updatePassword(HashMap<String, String> map);
 	//collabo count
 	int collaboListCount();
 	
 	//collabo List
 	ArrayList<CollaboRation> selectCollaboList(PageInfo pi);
 	
 	//collabo detail
 	CollaboRation selectCollDetail(int cpNo);
 	
 	//collabo accept
 	int collaboAccept(int userNo);
 	
 	//collabo denied
 	int collaboDenied(int cpNo);
}
