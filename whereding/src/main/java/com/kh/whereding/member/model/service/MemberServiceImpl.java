package com.kh.whereding.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.gift.model.vo.GiftHistory;
import com.kh.whereding.gift.model.vo.GiftReview;
import com.kh.whereding.gift.model.vo.GiftReviewImg;
import com.kh.whereding.member.model.dao.MemberDao;
import com.kh.whereding.member.model.vo.Consulting;
import com.kh.whereding.member.model.vo.ConsultingReviewImg;
import com.kh.whereding.member.model.vo.Member;
import com.kh.whereding.member.model.vo.Review;
import com.kh.whereding.product.model.vo.Dress;
import com.kh.whereding.product.model.vo.Hall;
import com.kh.whereding.product.model.vo.Makeup;
import com.kh.whereding.product.model.vo.Studio;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao mDao;
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public Member loginMember(Member m) {
		return mDao.loginMember(sqlSession, m);	
	}

	@Override
	public int createMember(Member m) {
		return mDao.createMember(sqlSession, m);
	}

	@Override
	public int selectUserId(String userId) {
		return mDao.selectUserId(sqlSession, userId);
	}

	/**
	 * 회원 정보 변경
	 */
	@Override
	public int updateMemberInfo(Member m) {
		int result = mDao.updateMemberInfo(sqlSession,m);
		return result;
	}

	/**
	 * 회원 번호 변경
	 */
	@Override
	public int updateMemberPwd(Member m) {
		int result = mDao.updateMemberPwd(sqlSession,m);
		return result;
	}

	/**
	 * 회원 비밀번호 일치여부
	 */
	@Override
	public int checkMemberPwd(Member m) {
		int result = mDao.checkMemberPwd(sqlSession,m);
		return result;
	}

	@Override
	public int deleteMember(Member m) {
		System.out.println("서비스");
		int result = mDao.deleteMember(sqlSession,m);
		return result;
	}

	@Override
	public ArrayList<GiftHistory> giftHistoryList(Member m) {
		ArrayList<GiftHistory> gh = mDao.giftHistoryList(sqlSession,m);
		return gh;
	}

	@Override
	public int giftReview(GiftReview gr) {
		int result = mDao.giftReview(sqlSession, gr);
		return result;
	}

	@Override
	public int giftReviewImg(GiftReviewImg gri) {
		int result = mDao.giftReviewImg(sqlSession, gri);
		return result;
	}

	@Override
	public ArrayList<Consulting> consultingList(Member m) {
		ArrayList<Consulting> cs = mDao.consultingList(sqlSession,m);
		return cs;
	}

	@Override
	public Hall consultingHall(String productNo) {
		return mDao.consultingHall(sqlSession, productNo);
	}

	@Override
	public Studio consultingStudio(String productNo) {
		return mDao.consultingStudio(sqlSession, productNo);
	}

	@Override
	public Dress consultingDress(String productNo) {
		return mDao.consultingDress(sqlSession, productNo);
	}

	@Override
	public Makeup consultingMakeup(String productNo) {
		return mDao.consultingMakeup(sqlSession, productNo);
	}

	@Override
	public int consultingReview(Review rv) {
		int result = mDao.consultingReview(sqlSession, rv);
		return result;
	}

	@Override
	public int consultingReviewImg(ConsultingReviewImg rvi) {
		int result = mDao.consultingReviewImg(sqlSession, rvi);
		return result;
	}

	@Override
	public int ReviewCount(Member m) {
		int result = mDao.ReviewCount(sqlSession, m);
		return result;
	}

	@Override
	public int createSocialMember(Member member) {
		return mDao.createSocialMember(sqlSession, member);
	}

	
	
	

	
	
}
