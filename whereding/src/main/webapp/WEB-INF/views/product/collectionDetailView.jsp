<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		.main{
			width: 1200px;
			margin: auto;
		}
		.slider{
			width: 640px;
			height: 480px;
			position: relative;
			margin: 0 auto;
			overflow: hidden;
		}
		.slider input[type=radio]{
			display: none;
		}

		ul.imgs{
			padding: 0;
			margin: 0;
		}
		ul.imgs li{
			position: absolute;
			left: 640px;
			transition-delay: 0.5s;
			list-style: none;
			padding: 0;
			margin: 0;
		}

		.bullets{
			position: absolute;
			left: 50%;
			transform: translateX(0%);
			bottom: 20px;
			z-index: 2;
		}
		.bullets label{
			display: inline-block;
			border-radius: 50%;
			background-color: rgba(0,0,0,0.55);
			width: 20px;
			height: 20px;
			cursor: pointer;
		}

		.slider input[type=radio]:nth-child(1):checked~.bullets>label:nth-child(1){
			background-color: #fff;
		}
		.slider input[type=radio]:nth-child(2):checked~.bullets>label:nth-child(2){
			background-color: #fff;
		}
		.slider input[type=radio]:nth-child(3):checked~.bullets>label:nth-child(3){
			background-color: #fff;
		}

		.slider input[type=radio]:nth-child(1):checked~ul.imgs>li:nth-child(1){
			left: 0;
			transition: 1s;
			z-index:2;
		}
		.slider input[type=radio]:nth-child(2):checked~ul.imgs>li:nth-child(2){
			left: 0;
			transition: 1s;
			z-index:1;
		}
		.slider input[type=radio]:nth-child(3):checked~ul.imgs>li:nth-child(3){
			left: 0;
			transition: 1s;
			z-index:1;
		}

		button{
			border-radius: 10px;
			width: 100px;
			height: 50px;
		}	

	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<!-- single article section -->
	<div class="main">
		<table>
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<div class="single-article-section">
							<tr>
								<td>
									<div class="silde1">
										<div class="slider" style="border: 1px dashed lightgray; border-radius: 50px;">
											<input type="radio" name="slide" id="slide1" checked>
											<input type="radio" name="slide" id="slide2">
											<input type="radio" name="slide" id="slide3">
											<ul id="imgholder" class="imgs">
												<li><img src="${ c.imgPath }${ c.img1 }" style="width:640px; height:480px"></li>
												<li><img src="${ c.imgPath }${ c.img2 }" style="width:640px; height:480px"></li>
												<li><img src="${ c.imgPath }${ c.img3 }" style="width:640px; height:480px"></li>
											</ul>
											<div class="bullets">
												<label for="slide1">&nbsp;</label>
												<label for="slide2">&nbsp;</label>
												<label for="slide3">&nbsp;</label>
											</div>
										</div>
									</div>
								</td>
								<td colspan="2" align="center">
									<div class="slide3">
										<div class="sidebar-section">
											<div class="archive-posts">
												<form action="../finalView/홀스드메장바구니(end).html">
												<p class="blog-meta">
													<span class="author"><i class="fas fa-user"></i> 스드메업체</span><br><br>
													<span class="author"><i class="fas fa-user"></i> ${ c.enterprise }</span><br><br>
												</p>
												<div>${ c.detail }</div>
												<div>${ c.price }</div>
												<div><i class="fas fa-calendar"></i> 영업시작시간 ${ c.startDate }시</div>
												<div><i class="fas fa-calendar"></i> 영업종료시간 ${ c.endDate }시</div>
												<div>${ c.phone }</div>
												<div>${ c.address }</div><br><br>
												<button type="submit" style="background-color: #F28213; width: 320px; ">장바구니</button>
												</form>
											</div>
											<div class="tag-section">
												<h4>태그</h4> <br>
												<ul>
													<c:set var="tag" value="${fn:split(c.tagContent,',')}" />
													<c:forEach var="it" items="${tag}" varStatus="g">
														<li><a href="single-news.html">${ it }</a></li>
													</c:forEach> 
												</ul>
											</div>
										</div>
									</div>
								</td>
							</tr>
							<br>

							<hr>
							<td>
								인스타그램사진들
								<div class="instarimg">
									<img src="../finalView/assets/img/slide1.png">
								</div>
							</td>
							<td>
								<img src="../finalView/assets/img/slide2.png">
							</td>
							<td>
								<img src="../finalView/assets/img/slide3.png">
							</td>
							<br>
							<hr>
							<tr>
								
									<div class="slide4">
										<div class="comment-list">
											<td>
												<h3 class="comment-count-title">리뷰 3건</h3>
											</td> 
												<tr>
												<td colspan="2">
													<div class="comment-text-body">
														<h4>양관우<span class="comment-date">&nbsp; 2023-10-17</span>
														</h4>
														<p>정말 좋아요</p>
														<td align="center">
															<img src="	https://via.placeholder.com/80x80" alt="1" style="float: right; margin: 15px;">
														</td>
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="2">
													<div class="comment-text-body">
														<h4>윤재성<span class="comment-date">&nbsp; 2023-10-17</span>
														</h4>
														<p>정말 좋아유</p>
														<td align="center">
															<img src="	https://via.placeholder.com/80x80" alt="1" style="float: right; margin: 15px;">
														</td>
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="2">
													<div class="comment-text-body">
														<h4>이원종<span class="comment-date">&nbsp; 2023-10-17</span>
														</h4>
														<p>정말 좋아열</p>
														<td align="center">
															<img src="	https://via.placeholder.com/80x80" alt="1" style="float: right; margin: 15px;">
														</td>
													</div>
												</td>
											</tr>
											</div>
									</div>
								
							</tr>
						</div>
					</div>

					
				</div>
			</div>
		</table>
	</div>

	<hr>
	<div class="recent-posts">
		<h4>최근 본 게시글</h4>
		<ul>
			<li><a href="single-news.html">kh양관우교육원 - sinse 2023 - 10 - 17 </a></li>
			<li><a href="single-news.html">kh윤재성교육원 - sinse 2023 - 10 - 17</a></li>
			<li><a href="single-news.html">kh이원종교육원 - sinse 2023 - 10 - 17</a></li>
			<li><a href="single-news.html">kh김현우교육원 - sinse 2023 - 10 - 17</a></li>
			<li><a href="single-news.html">kh김시연교육원 - sinse 2023 - 10 - 17</a></li>
		</ul>
		<hr>
	</div>
	<!-- end single article section -->
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>