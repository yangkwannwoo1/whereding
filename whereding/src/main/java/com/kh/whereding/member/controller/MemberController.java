package com.kh.whereding.member.controller;

import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.JsonNode;
import com.google.gson.Gson;
import com.kh.whereding.gift.model.vo.GiftHistory;
import com.kh.whereding.gift.model.vo.GiftReview;
import com.kh.whereding.gift.model.vo.GiftReviewImg;
import com.kh.whereding.member.model.service.MemberServiceImpl;
import com.kh.whereding.member.model.vo.Consulting;
import com.kh.whereding.member.model.vo.ConsultingReviewImg;
import com.kh.whereding.member.model.vo.Member;
import com.kh.whereding.member.model.vo.Review;
import com.kh.whereding.product.model.vo.Dress;
import com.kh.whereding.product.model.vo.Hall;
import com.kh.whereding.product.model.vo.Makeup;
import com.kh.whereding.product.model.vo.Studio;

/**
 * @author user1
 *
 */
@Controller
public class MemberController {
	@Autowired
	private static JavaMailSender mailSender;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private MemberServiceImpl mService;
	
	//회원 로그인
	@RequestMapping("login.me")
	public String loginMember(Member m, HttpSession session){
		Member loginMember = mService.loginMember(m);
		
		if(loginMember != null && bcryptPasswordEncoder.matches(m.getUserPwd(), loginMember.getUserPwd())) {
			session.setAttribute("alertMsg", "로그인 되었습니다.");
			session.setAttribute("loginMember", loginMember);
		}else {
			session.setAttribute("alertMsg", "로그인 실패하였습니다.");
		}
		System.out.println(loginMember);
		return "redirect:/";
	}
	
	//카카오 로그인
	@RequestMapping("kakaoLogin.me")
	public String kakaoLogin(String kakaoInput, HttpSession session) {
		Member m = new Member();
		m.setUserId(kakaoInput);
		
		Member loginMember = mService.loginMember(m);
		if(loginMember != null) {
			session.setAttribute("alertMsg", "로그인 되었습니다.");
			session.setAttribute("loginMember", loginMember);
		}else {
			session.setAttribute("alertMsg", "로그인 실패하였습니다.");
		}
		return "redirect:/";
	}
	
	//네이버 로그인
	@RequestMapping("naverLogin.me")
	public void naverLogin(String kakao) {
		
	}
	
	@ResponseBody
	@RequestMapping("createState.me")
	public String createState(HttpSession session){
		SecureRandom random = new SecureRandom();
		System.out.println("되냐");
	    String state = new BigInteger(130, random).toString(32);
	    session.setAttribute("state", state);
		return state;
	}
	
	@RequestMapping("naverEnroll.do")
	public String naverEnroll(@RequestParam("code") String code, @RequestParam("state") String state, HttpSession session, Model model) {
		Map<String, Object> result = mService.naverEnroll(code, state);
		JsonNode userInfo = (JsonNode) result.get("userInfo");
		String userId = userInfo.get("response").get("id").asText();
		
		
		int countResult = mService.countCheck(userId);
		
		if(countResult>0) { //이미회원
			Member loginMember = mService.selectNaverUser(userId);
			System.out.println(loginMember+ "로그인멤버@!#!@#");
			session.setAttribute("loginMember", loginMember);
			session.setAttribute("alertMsg", "로그인 되었습니다.");
			
		}else { // 신규회원
			String userPwd = userId;
			String userName = userInfo.get("response").get("name").asText();
			String originbirthyear = userInfo.get("response").get("birthyear").asText();
			String originbirthday = userInfo.get("response").get("birthday").asText();
			String changebirthyear = originbirthyear.substring(2);
			String changebirthday[] = originbirthday.split("-");
			String birthday = changebirthyear+changebirthday[0]+changebirthday[1];
			
			System.out.println(changebirthyear +"연도");
			System.out.println(birthday + " 월일");
			
			String gender = userInfo.get("response").get("gender").asText();
			String phone = userInfo.get("response").get("mobile").asText();
			String email = userInfo.get("response").get("email").asText();
			
			Member m = new Member();
			m.setUserId(userId);
			m.setUserPwd(userPwd);
			m.setUserName(userName);
			m.setBirthDay(birthday);
			m.setGender(gender);
			m.setPhone(phone);
			m.setEmail(email);
			
			
			int createResult = mService.createNaverMember(m);
			System.out.println(createResult);
			if(createResult >0) {
				session.setAttribute("alertMsg", "회원가입 되었습니다.");
			}else {
				session.setAttribute("alertMsg", "회원가입 실패!!");
			}
		}
		return "redirect:/";
	}
	
	//회원 로그아웃
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	//여긴 회원가입 폼만 쏘는곳
	@RequestMapping("memberEnrollForm.me")
	public String memberEnrollForm() {
		return "member/memberEnrollForm";
	}
	
	// 회원탈퇴
	@RequestMapping(value = "deleteMember.me")
	public String deleteMember(Member m, HttpSession session) {
		int result = mService.deleteMember(m);
		if(result > 0) {
			session.setAttribute("alertMsg", "정상적으로 회원탈퇴 되었습니다.");
			session.invalidate();
		}else {
			session.setAttribute("alertMsg", "회원탈퇴 실패하였습니다..");
		}
		return"redirect:/";
	}
	
	// 마이페이지 진입
	@RequestMapping(value = "myPage.me")
	public String intoMyPage() {
		return "member/myPage";
	}
	
	// 마이페이지에서 정보 수정
	@RequestMapping(value = "updateInfo.me")
	public String updateMemberInfo(Member m, HttpSession session) {
		System.out.println(m);
		int result = mService.updateMemberInfo(m);
		Member loginMember = mService.loginMember(m);
			session.removeAttribute("loginMember");
			session.setAttribute("loginMember", loginMember);
		if(result > 0) { 
	         session.setAttribute("alertMsg", "정보가 성공적으로 수정되었습니다.");
	      }else {
	    	  session.setAttribute("alertMsg", "정보수정에 실패하였습니다.");
	      }
		return "redirect:myPage.me";
	}
	
	// 비번 변경
	@RequestMapping(value = "updateMemberPwd.me")
	public String updateMemberPwd(Member m, HttpSession session) {
		// 비번 일치 체크
		int result1 = mService.checkMemberPwd(m);
		
		if (result1 > 0) { // 비번 일치할경우 비번 변경 해줌
			int result2 = mService.updateMemberPwd(m);
			if(result2 > 0) {  // 비번 변경 성공시
		         session.setAttribute("alertMsg", "정보가 성공적으로 수정되었습니다.");
		      }else { // 비번 변경 실패시
		    	  session.setAttribute("alertMsg", "정보수정에 실패하였습니다.");
		      }
			return "redirect:myPage.me";
		}else { // 비번 일치하지 않을 경우
			  session.setAttribute("alertMsg", "비밀번호가 일치하지 않습니다..");
			  return "redirect:myPage.me";
		}
	}
	
	
	//이게 찐 회원가입ㅋ
	@RequestMapping("createMember")
	public String memberEnroll(Member m, HttpSession session) {
		
		String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
		m.setUserPwd(encPwd);
		
		int result = mService.createMember(m);
		
		if(result >0) {
			session.setAttribute("alertMsg", "정상적으로 회원가입 되었습니다.");
			return "redirect:/";
		}else {
			session.setAttribute("alertMsg", "회원가입에 실패하였습니다.");
			return "redirect:/";
		}
	}
	
//	@ResponseBody
//	@RequestMapping(value = "socialEnroll.do" , method = RequestMethod.POST)
//	public String socialEnroll(@RequestBody Map<String, Object> requestData) {
//		String id = (String) requestData.get("id");
//	    String name = (String) requestData.get("name");
//	    String email = (String) requestData.get("email");
//		return null;
//	}
	
	//소셜회원가입@!#@!#
	@RequestMapping(value = "socialEnroll.do")
	public String socialEnroll(String kakaoId, String kakaoNickname, String kakaoEmail, HttpSession session) {
		System.out.println("여기 되긴되냐?");
		String id = kakaoId;
		System.out.println(id);
		
		Member member = new Member();
		
		member.setUserId(kakaoId);
		member.setUserName(kakaoNickname);
		member.setEmail(kakaoEmail);
		
		int result = mService.createSocialMember(member);
		if(result > 0) {
			session.setAttribute("alertMsg", "정상적으로 회원가입 되었습니다.");
			return "redirect:/";
		}else {
			session.setAttribute("alertMsg", "회원가입 실패되었습니다.");
			return "redirect:/";
		}
		
	}
	
	// 아이디중복검사
	@ResponseBody
	@RequestMapping("overlap.me")
	public int overlapId(String userId) {
		int result = mService.selectUserId(userId);
		return result;
	}
	
	// 답례품 판매내역
	@RequestMapping(value = "giftOredrList.me")
	public String giftOrderList(Member m, HttpSession session) {
//		System.out.println(m);
		ArrayList<GiftHistory> gh = mService.giftHistoryList(m);
//		System.out.println(gh);
		
		if(gh != null) {
			session.setAttribute("gh",gh);
			return "member/giftOredrList";
		}else {
			session.setAttribute("alertMsg", "목록조회에 실패하였습니다");
			return "redirct:/";
		}
	}
	
	// 상담예약내역
	@RequestMapping(value = "reserveList.me")
	public String reserveListView(Member m, HttpSession session) {
		ArrayList<Consulting> cs = mService.consultingList(m);
		ArrayList ha = new ArrayList();
		ArrayList st = new ArrayList();
		ArrayList dr = new ArrayList();
		ArrayList mu = new ArrayList();
//		System.out.println("회원번호 있나 확인용 " +cs);
		
		for(Consulting cst : cs) {
			Hall hal = mService.consultingHall(cst);
			Studio studi = mService.consultingStudio(cst);
			Dress dres = mService.consultingDress(cst);
			Makeup make = mService.consultingMakeup(cst);
			
//			m.setProductNo(cst.getProductNo());
//			int result1 = mService.ReviewCount(m);
//			
//			if(result1 >0 ) {
//				
//			}
			if(hal != null) {
				ha.add(hal);
			}
			if(studi != null) {
				st.add(studi);
			}
			if(dres != null) {
				dr.add(dres);
			}
			if(make != null) {
				mu.add(make);
			}
		}

		if(ha != null || st != null || dr != null || mu != null) {
			session.setAttribute("hall",ha);
			session.setAttribute("studio",st);
			session.setAttribute("dress",dr);
			session.setAttribute("makeup",mu);
			session.setAttribute("cs",cs);
			
			return "member/reserveList";
		}else {
			session.setAttribute("alertMsg", "목록조회에 실패하였습니다");
			return "redirct:/";
		}
	}
	
	@RequestMapping(value = "giftReview.gf")
	public String giftReview(GiftReview gr,Member m,MultipartFile upfile, GiftReviewImg gri, HttpSession session) {
		int result = mService.giftReview(gr);
		if(!upfile.getOriginalFilename().equals("")) { // 이미지 있음 
			String changeName = saveFile(upfile,session);
			gri.setOriginName(upfile.getOriginalFilename());
			gri.setChangeName(changeName);
			gri.setFilePath("resources/css/assets/img/ReviewImg");
			System.out.println(gri);
			int result2 = mService.giftReviewImg(gri);
			if(result > 0 && result2 > 0) {
				session.setAttribute("alertMsg", "리뷰가 등록되었습니다.");
			}else {
				session.setAttribute("alertMsg", "리뷰 등록 실패");
			}
		} else { // 이미지 없음 그냥 리뷰먄
			if(result >0) {
				session.setAttribute("alertMsg", "리뷰가 등록되었습니다.");
			}else {
				session.setAttribute("alertMsg", "리뷰 등록 실패");
			}
		}
		return"redirect:giftOredrList.me?userNo="+ m.getUserNo();
	}
	
	
	/** 예매내역 리뷰 달고
	 * @param rv
	 * @param m
	 * @param upfile
	 * @param rvi
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "consultingReview.me")
	public String consultingReview(Review rv,Member m,MultipartFile upfile, ConsultingReviewImg rvi, HttpSession session) {
		System.out.println("rv :"+rv);
		int result = mService.consultingReview(rv);
		
		
		if(!upfile.getOriginalFilename().equals("")) { // 이미지 있음 
			String changeName = saveFile(upfile,session);
			rvi.setCsOriginName(upfile.getOriginalFilename());
			rvi.setCsChangeName(changeName);
			rvi.setCsFilePath("resources/css/assets/img/ReviewImg");
			
			System.out.println("vri : "+ rvi);
			int result2 = mService.consultingReviewImg(rvi);
			if(result > 0 && result2 > 0) {
				session.setAttribute("alertMsg", "리뷰가 등록되었습니다.");
			}else {
				session.setAttribute("alertMsg", "리뷰 등록 실패");
			}
		} else { // 이미지 없음 그냥 리뷰먄
			if(result >0) {
				session.setAttribute("alertMsg", "리뷰가 등록되었습니다.");
			}else {
				session.setAttribute("alertMsg", "리뷰 등록 실패");
			}
		}
		return"redirect:reserveList.me?userNo="+ m.getUserNo();
	}
	
	
	
	
	// 현재 넘어온 첨부파일 그 자체를 서버의 폴더에 저장시키는 역활
	public String saveFile(MultipartFile upfile, HttpSession session) {
			String originName = upfile.getOriginalFilename(); // "flower.png"
			
			// "20231004154607" (년월일시분초)
			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()); // 현재시간(포멧형식으로) 
			int ranNum = (int)(Math.random()*90000 + 10000); // 5자리 랜덤값
			String ext = originName.substring(originName.lastIndexOf("."));
			
			String changeName = "결혼은-웨어딩-" + currentTime + ranNum + ext;
			
			// 업로드 시키고자 하는 폴더의 물리적인 경로를 알아내기
			String savePath = session.getServletContext().getRealPath("/resources/css/assets/img/ReviewImg/");
			
			try {
				upfile.transferTo(new File(savePath + changeName));
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return changeName;
	}
	
	// 회원 ID찾기 (이메일)
	@RequestMapping("idFind.me")
	public String idFind() {
		return "member/idFind";
	}
	
	@ResponseBody
	@RequestMapping(value="emailCheck.me", produces = "text/html; charset=utf-8")
	public String emailCheck(String email, Model model) {
		Member m = mService.emailCheck(email);
		
		if (m == null) {
	        return "가입된 아이디가 없습니다.";
	    } else {
	        if (m.getUserId() == null) {
	            return "가입된 아이디가 없습니다.";
	        } else {
	            return "회원님의 아이디는 [" + m.getUserId() + "] 입니다.";
	        }
	    }
		
	} 
	
//	//비번찾기 (이메일)
//		@RequestMapping("pwdFind")
//		public void mailSend() {
//			System.out.println("되냐?");
//			mService.mailSend();
//		
//		}
	
}