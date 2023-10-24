
<html lang="en">
<head>
	<meta charset="UTF-8">
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="path" value="${pageContext.request.contextPath}"/>
	<!-- title -->
	<title>웨딩홀 목록</title>


	<style>
		#menu1{
			/* border: 1px solid black; */
			height: 350px;
			width: 1100px;
			float: left;
		}
		#menu2{
			/* border: 1px solid black; */
			float: left;
			width: 20%;
			height: 280px;
		}
		#menu3{
			/* border: 1px solid black; */
			float: left;
			width: 60%;
			height: 280px;
		}
		#menu4{
			/* border: 1px solid black; */
			float: left;
			width: 20%;
			height: 280px;
		}

		#menu5{
			/* border: 1px solid black; */
			height: 50px;
		}

		#insertposts{
			float: right;
			border-radius: 10px; 
			width: 80px; 
			height: 50px;
		}

	</style>

</head>
<body>
	
	<jsp:include page="../common/header.jsp"/>
	<div></div>

	<!-- 목록시작 -->
	<br>
	<div class="latest-news mt-150 mb-150">
		<div class="container">
			<div id="menu5">
				<div>
					<button style="float: left; margin-left: 200px; height: 50px; width: 100px; border-radius: 15px;" class="btn btn-outline-info">웨딩홀</button> 
					<button style="margin-left: 100px; height: 50px; width: 100px; border-radius: 15px;" class="btn btn-outline-info">스튜디오</button> 
					<button style="margin-left: 100px; height: 50px; width: 100px; border-radius: 15px;" class="btn btn-outline-info">드레스</button> 
					<button style="margin-left: 100px; height: 50px; width: 100px; border-radius: 15px;" class="btn btn-outline-info">메이크업</button>
				</div>
			</div>
			<div align="center" id="menu1">
				<div id="menu2">
					<button style="width: 50px;height: 50px; margin-top: 110px;"><img src="../finalView/assets/img/latest-news/화살표2.png" style="width: 30px;"></button>
				</div>
				<div id="menu3">
					<table align="center" style="margin-top: 80px;">
						<tr>
							<td>
								<div style="float: left; width: 200px;">웨딩홀 예약 </div> <input type="date" disabled><br><br>
							</td>
						</tr>
						<tr>
							<td>
								<div style="float: left; width: 200px;">검색해주세요.</div> <input type="text" disabled>
							</td>
						</tr>
					</table>
				</div>
				<div id="menu4">
				<button style="width: 50px;height: 30px; margin-top: 110px;"><img src="../finalView/assets/img/latest-news/화살표.png"style="width: 30px;"></button>
				</div>
				<div><button type="button" onclick="location.href='enrollForm.pr'" id="insertposts">글 등록</button></div>
			</div>
			
			<br><br><br>
			<div class="row">
				<c:forEach var="h" items="${ list }">
					<div class="col-lg-4 col-md-6">
						<div class="single-latest-news">
							<a href="${ h.img1 }">사즨</a>
							<div class="news-text-box">
								<h3><a href="#">${ h.name }</a></h3>
								<h3><a href="#">${ h.address }</a></h3>
								<p class="blog-meta">
									<span class="author"><i class="fas fa-user"></i>${ h.enterprise }</span>
								</p>
								<p class="excerpt">대관비 : ${ h.rental }원</p>
								<p class="excerpt">수용인원 : ${ h.seat }석</p>
								<p class="excerpt">1인당 식비 : ${ h.meal }원</p>
								<p class="excerpt">태그 : <p># ${ h.tagContent }</p>
								<a href="#" class="read-more-btn">상세보기 <i class="fas fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

			<div class="row">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 text-center">
							<div class="pagination-wrap">
								<ul>
									<c:choose>
										<c:when test="${ pi.currentPage eq 1 }">
											<li class="page-item disabled"><a class="page-link" href="">Previous</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="hList.pr?cpage=${ pi.currentPage - 1 }">Previous</a></li>
										</c:otherwise>
									</c:choose>
									<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
										<li class="page-item"><a class="page-link" href="hList.pr?cpage=${ p }">${ p }</a></li>
									</c:forEach>
									<c:choose>
										<c:when test="${ pi.currentPage eq pi.maxPage }">
											<li class="page-item disabled"><a class="page-link" href="">Next</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="hList.pr?cpage=${ pi.currentPage + 1 }">Next</a></li>
										</c:otherwise>	
									</c:choose>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 목록 끝 -->

	

	<jsp:include page="../common/footer.jsp"/>
	


</body>
</html>