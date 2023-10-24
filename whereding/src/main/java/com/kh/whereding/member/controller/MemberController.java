package com.kh.whereding.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.whereding.member.model.service.MemberServiceImpl;
import com.kh.whereding.member.model.vo.Member;

@Controller
public class MemberController {
	
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
	
	@RequestMapping(value = "myPage.me")
	public String intoMyPage() {
		return "member/myPage";
	}
	
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
	
	@ResponseBody
	@RequestMapping("overlap.me")
	public int overlapId(String userId) {
		int result = mService.selectUserId(userId);
		return result;
		
	}
}