package com.kh.whereding.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.JsonNode;
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

	public Map<String, Object> naverEnroll(String code, String state) {
		String accessToken ="";
		
		HttpHeaders headers = new HttpHeaders();
	    headers.add("Content-type", "application/x-www-form-urlencoded");
	    MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		RestTemplate restTemplate = new RestTemplate();
		
		params.add("code", code);
		params.add("client_id", "by2SkrFNRCAcBUVgh7MX");
		params.add("client_secret","KfU00G8oSC");
		params.add("grant_type", "authorization_code");
		params.add("redirect_uri", "http://localhost:8009/whereding/naverEnroll.do");
		params.add("state", state);
		HttpEntity<MultiValueMap<String, String>> httpEntity = new HttpEntity<MultiValueMap<String, String>>(params, headers);
		
		
		 ResponseEntity<JsonNode> responseEntity = restTemplate.exchange(
			        "https://nid.naver.com/oauth2.0/token", HttpMethod.POST, httpEntity, JsonNode.class);
		 System.out.println(responseEntity+"리스폰스asdasdasd");
		
		  JsonNode responseBody = responseEntity.getBody();
	      accessToken = responseBody.get("access_token").asText();
		
	      headers = new HttpHeaders();
	      headers.set("Authorization", "Bearer " + accessToken);
	      HttpEntity entity = new HttpEntity(headers);
	      
	      ResponseEntity<JsonNode> userInfoResponseEntity = restTemplate.exchange(
	          "https://openapi.naver.com/v1/nid/me", HttpMethod.GET, entity, JsonNode.class);
	      
	      JsonNode userInfo = userInfoResponseEntity.getBody();
	      System.out.println(userInfo+"리스폰스asdasdasd");
	      Map<String, Object> responseMap = new HashMap();
	      responseMap.put("accessToken", accessToken);
	      responseMap.put("userInfo", userInfo);

	      return responseMap;
		
	}

	public int createNaverMember(Member m) {
		return mDao.createNaverMember(sqlSession, m);
	}

	public int countCheck(String userId) {
		return mDao.countCheck(sqlSession, userId);
	}
	
	public Member selectNaverUser(String userId) {
		return mDao.selectNaverUser(sqlSession, userId);
	}

	
	
	

	
	
}
