package com.kh.whereding.member.model.service;

import java.util.ArrayList;

import com.kh.whereding.gift.model.vo.GiftHistory;
import com.kh.whereding.gift.model.vo.GiftReview;
import com.kh.whereding.gift.model.vo.GiftReviewImg;
import com.kh.whereding.member.model.vo.Consulting;
import com.kh.whereding.member.model.vo.ConsultingReviewImg;
import com.kh.whereding.member.model.vo.Member;
import com.kh.whereding.member.model.vo.Review;
import com.kh.whereding.product.model.vo.Dress;
import com.kh.whereding.product.model.vo.Hall;
import com.kh.whereding.product.model.vo.Makeup;
import com.kh.whereding.product.model.vo.Studio;

public interface MemberService {
	
	//소셜 회원가입 서비스
	abstract int createSocialMember(Member member);
	
	// 로그인 서비스
	Member loginMember(Member m);
	
	// 회원가입 서비스
	int createMember(Member m);
	
	// 아이디 검사 서비스
	int selectUserId(String userId);
	
	// 마이페이지 정보변경 서비스
	int updateMemberInfo(Member m);
	
	// 비밀번호 변경 서비스
	int checkMemberPwd(Member m);
	int updateMemberPwd(Member m);
	
	// 회원탈퇴
	int deleteMember(Member m);
	
	// 답례품 구매내역 서비스
	ArrayList<GiftHistory> giftHistoryList(Member m);
	// 상담내역 서비스
	ArrayList<Consulting> consultingList(Member m);
	
	// 리뷰 작성
	int giftReview(GiftReview gr);
	int giftReviewImg(GiftReviewImg gri);
	
	int consultingReview(Review rv);
	int consultingReviewImg(ConsultingReviewImg rvi);
	
	// hall 상품 담아오는
	Hall consultingHall(String productNo);
	// Studio 상품 담아오는
	Studio consultingStudio(String productNo);
	// Dress 상품 담아오는
	Dress consultingDress(String productNo);
	// Makeup 상품 담아오는
	Makeup consultingMakeup(String productNo);
	
	
	
}
