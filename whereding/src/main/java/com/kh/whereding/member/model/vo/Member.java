package com.kh.whereding.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
public class Member {
	
	private int userNo;			// 회원번호
	private String userId;		// 아이디
	private String userPwd;		// 비밀번호
	private String userName;	// 이름
	private String birthDay;	// 생년월일
	private String gender;		// 성별
	private String phone;		// 전화번호
	private String email;		// 이메일
	private String status;		//상태
	private int gradeNo;		// 회원등급
	private String newPwd;		// 변경할 비밀번호
	private String productNo;
}
