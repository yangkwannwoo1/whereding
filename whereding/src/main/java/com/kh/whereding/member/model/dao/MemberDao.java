package com.kh.whereding.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

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

@Repository
public class MemberDao {
	
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	public int createMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.createMember", m);
	}
	public int selectUserId(SqlSessionTemplate sqlSession, String userId) {
		return sqlSession.selectOne("memberMapper.selectUserId", userId);
	}

	public int updateMemberInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMemberInfo", m);
	}

	public int updateMemberPwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMemberPwd", m);
	}

	public int checkMemberPwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.checkMemberPwd", m);
	}

	public int deleteMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.deleteMember", m);
	}
	public ArrayList<GiftHistory> giftHistoryList(SqlSessionTemplate sqlSession, Member m) {
		ArrayList<GiftHistory> gh = (ArrayList)sqlSession.selectList("giftMapper.giftHistoryList", m);
		return gh;
	}
	public int giftReview(SqlSessionTemplate sqlSession, GiftReview gr) {
		return sqlSession.insert("giftMapper.giftReview", gr);
	}
	public int giftReviewImg(SqlSessionTemplate sqlSession, GiftReviewImg gri) {
		return sqlSession.insert("giftMapper.giftReviewImg", gri);
	}
	public ArrayList<Consulting> consultingList(SqlSessionTemplate sqlSession, Member m) {
		ArrayList<Consulting> cs = (ArrayList)sqlSession.selectList("memberMapper.consultingList", m);
		return cs;
	}
	
	
	public Hall consultingHall(SqlSessionTemplate sqlSession, String productNo) {
		return sqlSession.selectOne("memberMapper.consultingHall", productNo);
	}
	public Studio consultingStudio(SqlSessionTemplate sqlSession, String productNo) {
		return sqlSession.selectOne("memberMapper.consultingStudio", productNo);
	}
	public Dress consultingDress(SqlSessionTemplate sqlSession, String productNo) {
		return sqlSession.selectOne("memberMapper.consultingDress", productNo);
	}
	public Makeup consultingMakeup(SqlSessionTemplate sqlSession, String productNo) {
		return sqlSession.selectOne("memberMapper.consultingMakeup", productNo);
	}
	
	
	public int consultingReview(SqlSessionTemplate sqlSession, Review rv) {
		return sqlSession.insert("memberMapper.consultingReview", rv);
	}
	public int consultingReviewImg(SqlSessionTemplate sqlSession, ConsultingReviewImg rvi) {
		return sqlSession.insert("memberMapper.consultingReviewImg", rvi);
	}
	
	public int ReviewCount(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.ReviewCount", m);
	}
	
	
}
