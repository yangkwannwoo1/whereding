<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보 변경</title>
</head>
<body>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Kmarket::main layout</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <!-- 아이콘찾기 -->
	<!-- <link rel="stylesheet" href="assets/css/all.min.css"> -->
	<!-- 부트스트랩 -->
	<!-- <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"> -->
	<!-- favicon -->
	<!-- <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png"> -->
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	
	<!-- owl carousel -->
	<!-- <link rel="stylesheet" href="assets/css/owl.carousel.css"> -->
	<!-- magnific popup -->
	<!-- <link rel="stylesheet" href="assets/css/magnific-popup.css"> -->
	<!-- animate css -->
	<!-- <link rel="stylesheet" href="assets/css/animate.css"> -->
	<!-- mean menu css -->
	<!-- <link rel="stylesheet" href="assets/css/meanmenu.min.css"> -->
	<!-- main style -->
	<!-- <link rel="stylesheet" href="assets/css/main.css"> -->
	<!-- responsive -->
	<!-- <link rel="stylesheet" href="assets/css/responsive.css"> -->

    <style>
       /* 카테고리 */
       main {
            width: 1200px;
            height: auto;
            margin: 0 auto;
            overflow: hidden;
        }

        main > aside {
            float: left;
            width: 220px;
            height: 100%;
        }

        main > aside > .category {
            position: relative;
            width: 100%;
            height: 600px;
            background: #0073C6;
            margin-top: 80px;
        }

        main > aside > .category > li {
            width: 100%;
            line-height: 50px;
            color: #ccc;
            font-size: 15px;
            font-weight: bold;
            border-bottom: 1px solid #2b313f;
            box-sizing: border-box;
        }

        main > aside > .category > li > a {
            display: block;
            padding: 0 30px;
            line-height: 80px;
            color: #F98973  ;
            font-weight: bold;
            text-decoration: none;
            font-size: 1em;
        }

        main > aside > .category > li > a:hover {
            background: #FABFC1;
            color: #fff;
        }

        main > section {
            float: right;
            width: 900px;
            height: auto;
            box-sizing: border-box;
        }

        .tab-content{
            display: none;
            background: #FABFC1;
            padding: 15px;
        }

        /*수정 */
        .wrap{
            box-sizing: border-box;
            width: 1200px;
            height: 700px;
            margin: auto;
            margin-top: 100px;
        }   
        #header_1{
            margin: auto;
            height: 100px;
        }
        #header_2{
            float:right;
            margin:auto;
            width: 570px;
            margin-top: 8px;
        }
        #navi{
            box-sizing: border-box;
            width: 260px;
            margin-left: 30px;
            box-shadow: 5px 0 5px -5px #333;
        }
        
        #main{
            box-sizing: border-box;
            width: 800px;
        }
        .cont{
            float: left;
        }
        input{
            border-radius: 5px;
        }
        .sujung{
        	background-color: black;
            color: white;
            border-radius: 10px;
            width: 100px;
            height: 50px;
        }
        .chenge{
        	background-color: blue;
            color: white;
            border-radius: 10px;
            width: 130px;
            height: 50px;
        }
        .exit{
        	background-color: red;
            color: white;
            border-radius: 10px;
            width: 100px;
            height: 50px;
        }
        input{
            width: 200px;
            height: 30px;
        }
        #pwd_sujung{
        	background-color: blue;
            color: white;
            border-radius: 10px;
            width: 100px;
            height: 50px;
        }
        #exit_1{
        	background-color: red;
            color: white;
            border-radius: 10px;
            width: 100px;
            height: 50px;
        }
        
        #cg-span{
        	top:8px;
        }
        
		#profileimg{
			border-radius: 80px;
		}
		
		.gradedetail2{
		  position: absolute;
		  width: 100px;
		  -webkit-border-radius: 8px;
		  -moz-border-radius: 8px;
		  border-radius: 10px;
		  background: #333;
		  color: #fff;
		  font-size: 14px;
		}

        .gradedetail1{
            cursor: pointer;
        }
        
        .my-navi{
        	width: 140px;
        	height: 60px;
        	margin-bottom: 30px;
        	padding-top: 10px;
        	font-size: 25px;
        }
        
        .myProfile{
        	border: 2px solid lightgray;
        	width: 450px;
        	height: 340px;
        	padding: 50px;
        	border-radius: 10px;
        	margin-left: 20px;
        }
        
        .select-navi{
        	text-decoration : underline;
        	text-underline-position: under;
        	font-weight: bolder;
        }
        li{
            list-style: none;
        }
        a{
            color: white;
        }
        ul{
            padding-left: 30px;
        }
    </style>
</head>
<body>
     <jsp:include page="../common/header.jsp"/>
    <div id="wrapper">
    
        <main id="product">
            <aside>
                <ul class="category">
                    <li>
                        마이페이지
                    </li>
                        <li>
                            <a href="giftOredrList.me?userNo=${loginMember.userNo}">
                                <i class="fas fa-home"data-tab="tab-1"> </i> 쇼핑
                                </i>
                            </a>
                            <ul>
                                <li>
                                    <a href="giftOredrList.me?userNo=${loginMember.userNo}" style="color: white;">결제내역 / 배송조회</a>
                                </li>
                                <li>
                                    <a href="reserveList.me?userNo=${loginMember.userNo}" style="color: white;">상담예약 확인목록</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="myPage.me">
                                <i class="fas fa-utensils" data-tab="tab-4"></i> my정보
                                </i>
                            </a>
                            <ul>
                                <li>
                                    <a href="myPage.me" style="color: white;">내정보조회</a>
                                </li>
                            </ul>
                        </li>
                </ul>
            </aside>
            <section class="cart">
                <nav>
                    <h3>- MyPage</h3>
                    <br>
                </nav>
                <div id="main" class="cont" align="center">
                    <div style="width: 240px; height: 50px;" align="right">
                        <c:if test="${loginMember.gender eq 'M'}">
                            <p style="font-size: 30px; display: inline-block; margin-bottom: 0px;" >${loginMember.userName} 신랑님</p>
                        </c:if>
                        <c:if test="${loginMember.gender eq 'F'}">
                            <p style="font-size: 30px; display: inline-block; margin-bottom: 0px;" >${loginMember.userName} 신부님</p>
                        </c:if>
                        <br>
                    </div>
                    <br>
                    <div style="width: 75px; height: 30px; font-size: 19px; font-weight: 600" align="right">
                        ${loginMember.userId}
                    </div>
                    <br>
                    
                    <div class="myProfile">
                        <form id="myPage-form" action="updateInfo.me" method="post" enctype="multipart/form-data" id="mypageform">
                            <table>
                                <tr style="display: none;">
                                    <td colspan="2"> <input type="hidden" name="memId" value="아이디" > </td>
                                </tr>
                                <tr>
                                    <th width="100" height="50">이름</th>
                                    <td><input type="text" id="Name" name="userName" value="${loginMember.userName}" maxlength="6" required></td>
                                </tr>
                                <tr>
                                    <th width="100" height="50">생년월일</th>
                                    <td><input type="date" id="birthday" name="birthDay" value="" maxlength="6" required></td>
                                </tr>
                                <script>
                                    $(function() {
                                        const originalDate = "${loginMember.birthDay}";
                                        const formattedDate = originalDate.split(" ")[0]; // "YYYY-MM-DD" 부분을 추출
                                        document.getElementById("birthday").value = formattedDate;
                                    });
                                </script>
                                
                                <tr>
                                    <th>성별</th>
                                    <td>
                                        신랑<input type="radio" id="gender_male" name="gender" value="M"> <br>
                                        신부<input type="radio" id="gender_female" name="gender" value="F">
                                    </td>
                                </tr>
                                <script>
                                    $(document).ready(function() {
                                        const gender = "${loginMember.gender}";
                                
                                        if (${loginMember.gender eq 'M'}) {
                                            // "M"이면 "신랑" 라디오 버튼을 체크
                                           $("#gender_male").attr("checked",true);
                                        } else {
                                            // "F"이면 "신부" 라디오 버튼을 체크
                                            $("#gender_female").attr("checked",true);
                                        }
                                    });
                                </script>
                                
                                <tr>
                                    <th height="50">전화번호 </th>
                                    <td><input type="text" name="phone" onKeyup = "addHypen(this);" value="${loginMember.phone}"></td>
                                </tr>
                                <tr>
                                    <th height="50">이메일</th>
                                    <td><input type="email" name="email" value="${loginMember.email}" placeholder="@ 포함해서 입력"></td>
                                </tr>
                                
                            </table> 
                            <input type="hidden" name="userId" value="${loginMember.userId}">
                            <br>
                            <div>
                                <button type="submit" class="sujung" onclick="return update();">정보수정</button>
                                <button type="button" class="chenge" data-toggle="modal" data-target="#updatePwdModal" >비밀번호변경</button>
                                <button type="button" class="exit" data-toggle="modal" data-target="#exitModal">회원탈퇴</button>
                            </div>  
                            </form>
                    </div>
            </section>
        </main>
       
    </div>
   
	<!-- jquery -->
	<!-- <script src="assets/js/jquery-1.11.3.min.js"></script> -->
	<!-- bootstrap -->
	<!-- <script src="assets/bootstrap/js/bootstrap.min.js"></script> -->
	<!-- count down -->
	<!-- <script src="assets/js/jquery.countdown.js"></script> -->
	<!-- isotope -->
	<!-- <script src="assets/js/jquery.isotope-3.0.6.min.js"></script> -->
	<!-- waypoints -->
	<!-- <script src="assets/js/waypoints.js"></script> -->
	<!-- owl carousel -->
	<!-- <script src="assets/js/owl.carousel.min.js"></script> -->
	<!-- magnific popup -->
	<!-- <script src="assets/js/jquery.magnific-popup.min.js"></script> -->
	<!-- mean menu -->
	<!-- <script src="assets/js/jquery.meanmenu.min.js"></script> -->
	<!-- sticker js -->
	<!-- <script src="assets/js/sticker.js"></script> -->
	<!-- main js -->
	<!-- <script src="assets/js/main.js"></script> -->
   
   <script>
        $(product).ready(function(){
    
            $('ul.category li').click(function(){
            var tab_id = $(this).attr('data-tab');
        
            $('ul.category li').removeClass('current');
            $('.tab-content').removeClass('current');
        
            $(this).addClass('current');
            $("#"+tab_id).addClass('current');
            })
        
        })

        function update(){
            if(confirm("회원정보를 수정하시겠습니까 ?") == false){
                return false;
            }else{
                $("#myPage-form").submit();
            }
        }
    </script>

    <div class="modal" id="updatePwdModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">비밀번호 변경</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body" align="center">
                    <form action="updateMemberPwd.me" method="post">
                    <input type="hidden" name="memId" value="#">
                        <table>
                            <tr>
                                <td>현재 비밀번호</td>
                                <td><input type="password" name="userPwd1" required></td>
                            </tr>
                            <tr>
                                <td>변경할 비밀번호</td>
                                <td><input type="password" name="newPwd" required></td>
                            </tr>
                            <tr>
                                <td>변경할 비밀번호 확인</td>
                                <td><input type="password" required></td>
                            </tr>
                        </table>
    
                        <br>
                        <input type="hidden" name="userId" value="${loginMember.userId}">
                        <button type="submit" id="pwd_sujung" onclick="return vaildatePwd();">비밀번호 변경</button>
    
                        <br><br>
                    </form>
                  </div>
            </div>
        </div>
    </div>
    
        <!-- 회원탈퇴용 Modal -->
    <div class="modal" id="exitModal">
      <div class="modal-dialog">
        <div class="modal-content">
    
          <!-- Modal Header -->
          <div class="modal-header">
            <h4 class="modal-title">회원탈퇴</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
    
          <!-- Modal body -->
          <div class="modal-body" align="center">
            <form action="deleteMember.me" method="post">
                <b>탈퇴 후 복구가 불가능합니다.<br> 정말로 탈퇴하시겠습니까 ? </b> <br><br>
				<input type="hidden" name="userId" value="${loginMember.userId}">
				
                비밀번호 : <input type="password" name="userPwd" required> <br><br>
                <button type="submit" id="exit_1">탈퇴하기</button>
             
            </form>
          </div>

        </div>
      </div>
    </div>
    
    <script>
	    function vaildatePwd(){
	        if($("input[name=updatePwd]").val() != $("input[name=checkPwd]").val()){
	            alert("변경할 비밀번호가 일치하지 않습니다.");
	            return false;
	        }
	    }
    	
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
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>