<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery 라이브러리 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- 부트스트랩에서 제공하고 있는 스타일 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- 부트스트랩에서 제공하고 있는 스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<style>

        .logo_div{
            /* border: 1px solid; */
            width: 500px;
            height: 100px;
            margin: auto;
        }
        #logo{width: 95px;height: 40px;
               margin-top: 30px;}
        .outer{
            /* border: 1px solid; */
            width: 674px;
            height: 860px;
            margin: auto;
            margin-top: 35px;
        }
        .id_pwd_input{
            width: 100%;
            height: 150px;
            border: 1px solid rgba(128, 128, 128, 0.603);
            border-radius: 10px;
        }
        .id_pwd_input>div{
            width: 100%;
            height: 50px;
        }
        .line{
            border-top: 1px solid rgba(128, 128, 128, 0.603);
            border-bottom: 1px solid rgba(128, 128, 128, 0.603);
        }
        #newMember_img{width: 20px;height: 20px; margin-top: 15px; margin-left: 13px; float: left;}
        #new_user{border: none; height: 19px;  width: 342px; margin-top: 16px; margin-left: 5px; font-size: 18px; font-weight: 400; outline: none;}
        #new_user_pwd{border: none; height: 19px;  width: 342px; margin-top: 16px; margin-left: 5px; font-size: 18px; font-weight: 400; outline: none;}
        .message{
            width: 100%;
            height: 30px;
            /* border: 1px solid; */
        }
        .message_output{
            /* border: 1px solid; */
            /* width: 100%; */
            /* height: 60%; */
            line-height: 30px;
            color: red;
            font-weight: 900;
            font-size: 16px;
            margin: 0;
            
        }
        .info_input{
            width: 100%;
            height: 360px;
            border: 1px solid rgba(128, 128, 128, 0.603);
            border-radius: 10px;
        }
        .info_input>div{
            width: 100%;
            height: 50px;
        }
        .interest{color: rgba(66, 66, 66, 0.973); font-weight: 700; margin-top: 15px; margin-left: 15px;}
        .interest_box{width: 100%;  line-height: 0px;
            border-top: 2px solid rgba(87, 87, 87, 0.781);
            border-bottom: 1px solid rgba(128, 128, 128, 0.603);
         }
         .tag{line-height: 50px; margin-left: 40px; font-weight: 600; color: rgba(66, 66, 66, 0.973); }
         .choice_box{
            /* border-top:  1px solid rgba(128, 128, 128, 0.603); */
            /* border-bottom: 1px solid rgba(128, 128, 128, 0.603); */
            /* border-left: 1px solid rgba(128, 128, 128, 0.603); */
            width: 120px;
            height: 35px;
            margin-top: 7px ;
            border-radius: 2px;
         }


         #int{
            height: 50px;}
         #int>div{
            float: left;
         }
         #fst{
            margin-left: 40px;
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
            
         }
         #last{
            /* border-right:  1px solid rgba(128, 128, 128, 0.603); */
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
         }
        .int_btn_movie{
            width: 100%;height: 100%;
            background-color: white;
            border: 1px solid rgba(128, 128, 128, 0.603);
            border-radius: 5px;
        }
        .int_btn_display{
            width: 100%;height: 100%;
            background-color: white;
            border: 1px solid rgba(128, 128, 128, 0.603);
            border-radius: 5px;
        }
        .int_btn_show{
            width: 100%;height: 100%;
            background-color: white;
            border: 1px solid rgba(128, 128, 128, 0.603);
            border-radius: 5px;
        }


        .active {
            border-color: red; /* 빨간색 테두리 */
        }
        button:hover{
            cursor: pointer;
        }
        .submit_box{
            /* border: 1px solid rebeccapurple; */
            border-radius: 5px;
            background-color: red;
            color: white;
            width: 460px;
            height: 50px;
            margin: auto;
            margin-top: 40px;

        }
        .submit_btn{
            width: 100%;
            height: 100%;
            border-radius: 5px;
            background-color: #999;
            color: white;
            font-weight: 900;
            font-size: 20px;
            border: none;  
        }
        .social{
            margin-left: 200px;
            margin-top:11px;
            width: 300px;

            color : white;
        }
        #socialWrap{
            border: 1px solid red;
            
        }
        #gender_input{
            font-weight: 400;
            font-size: 18px;
            color: #999;
            line-height:15px;
        }
        .social{
        	width:43%;
        	height:17%;
        	line-height:44px;
        	font-size:20px;
        }
        #overlapId{
        	float:right;
        	
        	border-radius:6px;
        	height:100%;
        	width:115px;
        }
        #goodId{
        	color:green;
        	font-weight:bold;
        	display:none;
      
        }
        #badId{
        	color:red;
        	font-weight:bold;
        	display:none;
        }
        #shortId{
        	color:red;
        	font-weight:bold;
        	display:none;
        }
    </style>
</head>
<body>
  <div class="logo_div">
        <a href="#"><img src="resources/css/assets/img/logo.png" id="logo" alt=""></a>
    </div>
    <form action="createMember" method="post">
        <div class="outer">
            <div class="id_pwd_input">
                <div class="id_input">
                    <img src="../resorces/이미지자료/로그인.png" id="newMember_img">
                        <input type="text" id="new_user" class="new_userId" name="userId" placeholder="아이디" required>
                        
                        <span id="goodId">멋진 아이디네요!</span>
                        <span id="badId">중복된 아이디입니다!</span>
                        <span id="shortId">길이가 너무 짧습니다!</span>
                        
                        <button id="overlapId">중복확인</button>
                        
                        <!-- 2023/10/23 아이디 중복체크 -->
                        <script>
                        	$("#overlapId").click(function(){
                        		var id = $("#new_user").val().length;
                        		event.preventDefault(); // 중복체크 버튼이라 submit 방지
                        		console.log(id);
                        		
                        		if(id > 3){ //일단 아이디 3글자 이상 적어야 검사
                        			
	                        		$.ajax({
	                        			url:"overlap.me",
	                        			data:{
	                        				userId:$("#new_user").val()
	                        			},
	                        			success: function(result) {
	                        	            if (result == 0) { // 아이디가 없어서 사용가능한 아이디 적었을때임
	                        	                $("#goodId").css("display", "inline");
	                        	                $("#badId").css("display", "none");
	                        	                $("#shortId").css("display", "none");
	                        	                $(".submit_btn").css("background" , "#FABFC1").prop("disabled", false);
	                        	                
	                        	            }else{ // 그게아닐때임 중복임
	                        	            	$("#badId").css("display", "inline");
	                        	            	$("#shortId").css("display", "none");
	                        	            	$("#goodId").css("display", "none");
	                        	            	$(".submit_btn").css("background" , "#999").prop("disabled", true);
	                        	            }
	                        	        },
	                        			error:function(){
	                        				console.log("아디 중복검사 ajax 실패해부렀다");
                        				}
                        			})
	                        	}else{ //3글자 미만일때
	                        		$("#new_user").focus(); //이거안먹는거같음 ;;
	                        		$("#shortId").css("display", "inline");
	                        		$("#badId").css("display", "none");
                	            	$("#goodId").css("display", "none");
                	            	$(".submit_btn").css("background" , "#999").prop("disabled", true);
	                        	}
                        	})
                        </script>
                        
                 
                </div>
                
                <div class="line">
                    <img src="../resorces/이미지자료/비밀번호.png" id="newMember_img">
                        <input type="password" id="new_user" class="new_userPwd" name="userPwd" placeholder="비밀번호" required>
                </div>
                <div class="email_input">
                    <img src="../resorces/이미지자료/이메일2.png" id="newMember_img">
                    <input type="email" id="new_user" name="email" placeholder="이메일">
                </div>
            </div>
            <div class="message">
                    <p class="message_output"></p>
            </div>
            <div class="info_input">
                <div class="name_input">
                    <img src="../resorces/이미지자료/로그인.png" id="newMember_img">
                        <input type="text" id="new_user" class="new_user_name" name="userName" placeholder="이름" required>
                </div>
                <div class="line">
                    <img src="../resorces/이미지자료/달력3.PNG" id="newMember_img">
                        <input type="text" id="new_user_pwd" name="birthDay" placeholder="생년월일 8자리 [ex)230824]" required>
                </div>
                <div class="phone_input">
                    <img src="../resorces/이미지자료/폰.png" id="newMember_img">
                        <input type="text" id="new_user" class="new_user_phone" name="phone" placeholder="휴대폰 번호 [010-1234-5678]" onKeyup = "addHypen(this);" required>
                </div>
                
                <div class="line">
                <img src="../resorces/이미지자료/폰.png" id="newMember_img">
                <h3></h3>&nbsp; <span id="gender_input">신랑/신부</span>
                    <select name="gender">
                        <option selected>선택하세요</option>
                        <option value="M">신랑</option>
                        <option value="F">신부</option>
                    </select>
                </div>
                    <a class="social btn btn-warning" onclick="kakaoLogin();">카카오로 가입하기</a> <br>
                    
                  
                    
                    <script>
                    	Kakao.init('bb694f7fac67300cb1cee4c96ec94ade'); //발급받은 키 중 javascript키를 사용해준다.
                    	console.log(Kakao.isInitialized());
                    	
                    	function kakaoLogin() {
                    	    Kakao.Auth.login({
                    	      success: function (response) {
                    	        Kakao.API.request({
                    	          url: '/v2/user/me',
                    	          success: function (response) {
                    	        	  const id = response.id;
                    	        	  const name = response.properties.nickname;
                    	        	  const email = response.kakao_account.email;
                    	        	  console.log(id +"나여깄어@!#!@#@!#");
                    	        	  console.log(email +"여기어디냐");
                    	        	  console.log(name +"나여깄어@!#!@#@!#");
                    	        	  
                    	        	  $("#kakaoId").val(id);
                    	        	  $("#kakaoNickname").val(name);
                    	        	  $("#kakaoEmail").val(email);
                    	        	  
                    	        	  $("#kakaoSubmit").submit();
                    	        	  
                    	          },
                    	          fail: function (error) {
                    	            console.log(error)
                    	          },
                    	        })
                    	      },
                    	      fail: function (error) {
                    	        console.log(error)
                    	      },
                    	    })
                    	  }
                    </script>
                    
                    
                    <a class="social btn btn-success" id="naver_login">네이버로 가입하기</a> <br>
                    
                    <script>
                    	$("#naver_login").click(function(){
                    		 $.ajax({
                 		        type: "GET",
                 		        url: "createState.me",
                 		        success: function(state) {
                 		            var clientId = "by2SkrFNRCAcBUVgh7MX";
                 		            var redirectUri = "http://localhost:8009/whereding/naverEnroll.do"; 
                 		            var naverLoginUrl = "https://nid.naver.com/oauth2.0/authorize"
                 		                + "?client_id=" + clientId
                 		                + "&response_type=code"
                 		                + "&redirect_uri=" + redirectUri
                 		                + "&state=" + state;
                 		
                 		            
                 		            window.location.href = naverLoginUrl;
                 		        },error:function(){
                 		        	console.log("ajax실패띠");
                 		        }
                 		    });
                    	})
                    </script>
                
            </div>


            <div class="submit_box">
                <button class="submit_btn" type="submit" disabled>회원 가입</button>
            </div>
            </div>
           
      	
    </form>
    
      <form action="socialEnroll.do" id="kakaoSubmit" method="post">
	                    <input type="hidden" id="kakaoId" name="kakaoId"/>
	                    <input type="hidden" id="kakaoNickname" name="kakaoNickname"/>
	                    <input type="hidden" id="kakaoEmail" name="kakaoEmail"/>
      </form>

    <script>
        function selectMovie(value){
            $("#select_movie_hidden").attr("value", value);
        }
        function selectDisplay(value){
            $("#select_display_hidden").attr("value", value);
        }
        function selectShow(value){
            $("#select_show_hidden").attr("value", value);
        }

        $(document).ready(function() {
            $(".int_btn_movie").click(function() {
                // 모든 버튼의 테두리 색상을 원래대로 되돌립니다.
                $(".int_btn_movie").css("border-color", "rgba(128, 128, 128, 0.603)");
                $(".int_btn_movie").css("color", "gray");
                // 클릭한 버튼의 테두리 색상을 빨간색으로 변경합니다.
                $(this).css("border-color", "red");
                $(this).css("color", "red");
            });
            $(".int_btn_display").click(function() {
                // 모든 버튼의 테두리 색상을 원래대로 되돌립니다.
                $(".int_btn_display").css("border-color", "rgba(128, 128, 128, 0.603)");
                $(".int_btn_display").css("color", "gray");
                // 클릭한 버튼의 테두리 색상을 빨간색으로 변경합니다.
                $(this).css("border-color", "red");
                $(this).css("color", "red");
            });
              $(".int_btn_show").click(function() {
                // 모든 버튼의 테두리 색상을 원래대로 되돌립니다.
                $(".int_btn_show").css("border-color", "rgba(128, 128, 128, 0.603)");
                $(".int_btn_show").css("color", "gray");
                // 클릭한 버튼의 테두리 색상을 빨간색으로 변경합니다.
                $(this).css("border-color", "red");
                $(this).css("color", "red");
            });
        });
        
    </script>

     <script>
        function test4() {
            // 사용자가 입력한 생년월일 값
            const value = document.getElementById("new_user_pwd").value;
           
            var phone = $(".new_user_phone").val();

            var regPhone= /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
            
            
            let regExp = /^\d{2}(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;

            var idReg = /^[a-z]+[a-z0-9]{5,19}$/g;

            let reg = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/
            
            var nameReg = /^[a-zA-Z가-힣]{2,15}$/


            if( !idReg.test( $(".new_userId").val() ) ) { // 아이디 안맞다
                $(".submit_btn").attr("type","button"); 
                alert("아이디는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다.");
                $(".message_output").text("* 입력하신 아이디가 잘못되었습니다.");
                
            }else{ // 아이디 맞다 
                $(".message_output").text(" ");

                if(!reg.test( $(".new_userPwd").val() )){ // 비번 틀리다
                    $(".submit_btn").attr("type","button"); 
                    alert("비밀번호는 영문 숫자 특수기호 조합 8자리 이상이어야 합니다.")
                    $(".message_output").text("* 입력하신 비밀번호가 잘못되었습니다.");
                }else { // 비번맞다

                    if(!nameReg.test($(".new_user_name").val() )){ // 이름 틀리다
                        $(".submit_btn").attr("type","button"); 
                        alert("이름은 영어나 한글로 2~15자 이어야 합니다.")
                        $(".message_output").text("* 입력하신 이름이 잘못되었습니다.");
                    
                    }else{ // 이름맞다
                        
                    
                    
                        if(regExp.test(value)){ // 생년월일 맞다
                            $(".message_output").text(" ");

                            if (regPhone.test(phone) == true) { // 전번 체크 함

                                if($("#select_movie_hidden").val() == "" ){ // 영화 안함
                                    $(".submit_btn").attr("type","button"); 
                                    alert("관심 카테고리 (영화)를 선택해 주세요.")
                                    $(".message_output").text("* 관심 카테고리 (영화)를 선택해 주세요.");

                                }else{ // 영화 체크함

                                    if($("#select_display_hidden").val() == "" ){ // 전시 체크 암함
                                        $(".submit_btn").attr("type","button"); 
                                        alert("관심 카테고리 (전시)를 선택해 주세요.")
                                        $(".message_output").text("* 관심 카테고리 (전시)를 선택해 주세요.");
                                    }else{ // 전시 체크함

                                        if($("#select_show_hidden").val() == "" ){ // 공연 체크 안함
                                            $(".submit_btn").attr("type","button"); 
                                            alert("관심 카테고리 (공연)를 선택해 주세요.")
                                            $(".message_output").text("* 관심 카테고리 (공연)를 선택해 주세요.");
                                        }else{ // 공연 체크함
                                            $(".submit_btn").attr("type","submit"); 

                                        
                                        }
                                    }
                                }
                            }else {// 전번 체크 안함
                                $(".submit_btn").attr("type","button"); 
                                alert("휴대폰 번호를 확인해주세요.")
                                $(".message_output").text("* 입력하신 전화번호가 잘못되었습니다.");
                            }
                            
                        }else {  // 생년월일 틀림
                            alert("생년월일이 잘못되었습니다.")
                            $(".submit_btn").attr("type","button"); 
                            $(".message_output").text("* 입력하신 생년월일이 잘못되었습니다.");
                        }
                    }
                }

            }
        }
        
    </script>

	<script>
       function addHypen(obj) {
          var number = obj.value.replace(/[^0-9]/g, "");
          var phone = "";
   
          if(number.length < 4) {
              return number;
          } else if(number.length < 7) {
              phone += number.substr(0, 3);
              phone += "-";
              phone += number.substr(3);
          } else if(number.length < 11) {
              phone += number.substr(0, 3);
              phone += "-";
              phone += number.substr(3, 3);
              phone += "-";
              phone += number.substr(6);
          } else {
              phone += number.substr(0, 3);
              phone += "-";
              phone += number.substr(3, 4);
              phone += "-";
              phone += number.substr(7);
          }
          obj.value = phone;
      }
    </script>

</body>
</html>