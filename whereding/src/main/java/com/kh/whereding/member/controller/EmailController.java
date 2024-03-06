package com.kh.whereding.member.controller;


	import java.security.SecureRandom;

import javax.mail.Message;
	import javax.mail.Session;
	import javax.mail.internet.MimeMessage;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpSession;

	import org.apache.commons.mail.HtmlEmail;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
	import org.slf4j.LoggerFactory;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.mail.javamail.JavaMailSender;
	import org.springframework.mail.javamail.MimeMailMessage;
	import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.whereding.member.model.dao.MemberDao;
import com.kh.whereding.member.model.vo.Member;


	@Controller
	public class EmailController {

		@Autowired
		private JavaMailSender mailSender;
		
		@Autowired
		private MemberDao mDao;
		
		@Autowired
		private BCryptPasswordEncoder bcryptPasswordEncoder;
		
		@Autowired
		private SqlSessionTemplate sqlSession;
		
		private static final Logger logger = LoggerFactory.getLogger(EmailController.class);
	    
		
		//--------------------------------메일발송-----------------------------
		//mailSend 코드
		@RequestMapping(value = "pwdFind", method = RequestMethod.GET)
		public String mailSend(@RequestParam("email") String email, HttpSession session) {
			System.out.println("메일발송 로직 탐?");
			System.out.println(email);
			
			//임의 비밀번호 생성
			String charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+";
	        SecureRandom random = new SecureRandom();
	        StringBuilder password = new StringBuilder();
	        int length=10;
	        for (int i = 0; i < length; i++) {
	            int randomIndex = random.nextInt(charset.length());
	            password.append(charset.charAt(randomIndex));
	        }
			
	        System.out.println(password + " 임시 비번 @!#!@#!@#@!#");
			String encPwd = bcryptPasswordEncoder.encode(password);
			System.out.println(encPwd + "임시비번 평문!@#!@#!@#!@");
			
			Member m = new Member();
			m.setEmail(email);
			m.setUserPwd(encPwd);
			int result = mDao.memberInitPwd(sqlSession, m);
			
			if(result>0) { //임시비번 발급 성공임
				session.setAttribute("alertMsg", "임시 비밀번호를 발급하였습니다.");
			}else {
				session.setAttribute("alertMsg", "임시 비밀번호 발급에 실패하였습니다.");
			}
			System.out.println(result);
			
			try {
				MimeMessage mimeMessage = mailSender.createMimeMessage();
			   // MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
			    MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
	 
			    //test용 메일 내용
			    messageHelper.setFrom("khfinalproject4@gmail.com"); // 보내는사람 이메일 여기선 google 메일서버 사용하는 아이디를 작성하면됨
			    messageHelper.setTo(email); // 받는사람 이메일
			    messageHelper.setSubject("웨어딩 임시 비밀번호 입니다." ); // 메일제목
			    messageHelper.setText("회원님의 임시 비밀번호는 [" + password + "] 입니다.", true); // true는 HTML 형식으로 설정함을 나타냅니다.
			    //messageHelper.setText("예약하신 회원님은"+ name + last_name + "입니다."+" 연락처는 " + phone + "입니다. 입력한 Email은 " + email + "입니다."); // 메일 내용
			    
			    mailSender.send(mimeMessage);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return "redirect:/";
		}
	
}
