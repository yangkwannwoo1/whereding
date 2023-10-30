<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- favicon -->
<link rel="shortcut icon" type="image/png"
	href="resources/css/assets/img/favicon.png">
<!-- google font -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap"
	rel="stylesheet">
<!-- fontawesome -->
<link rel="stylesheet" href="resources/css/assets/css/all.min.css">
<!-- bootstrap -->
<link rel="stylesheet"
	href="resources/css/assets/bootstrap/css/bootstrap.min.css">
<!-- owl carousel -->
<link rel="stylesheet" href="resources/css/assets/css/owl.carousel.css">
<!-- magnific popup -->
<link rel="stylesheet"
	href="resources/css/assets/css/magnific-popup.css">
<!-- animate css -->
<link rel="stylesheet" href="resources/css/assets/css/animate.css">
<!-- mean menu css -->
<link rel="stylesheet" href="resources/css/assets/css/meanmenu.min.css">
<!-- main style -->
<link rel="stylesheet" href="resources/css/assets/css/main.css">
<!-- responsive -->
<link rel="stylesheet" href="resources/css/assets/css/responsive.css">
<style>
	.giftReg{
		width: 100px;
		height: 50px;
		background:cyan;
		font-size:16px;
		font-weight:bold;
		float:right;
		border: none;
		border-radius: 7px;
		
	}

</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<!--PreLoader-->
	<div class="loader">
		<div class="loader-inner">
			<div class="circle"></div>
		</div>
	</div>
	<!--PreLoader Ends-->

	<!-- header -->
	<div class="top-header-area" id="sticker">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 text-center">
					<div class="main-menu-wrap"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- end header -->

	<!-- search area -->
	<div class="search-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<span class="close-btn"><i class="fas fa-window-close"></i></span>
					<div class="search-bar">
						<div class="search-bar-tablecell">
							<h3>Search For:</h3>
							<input type="text" placeholder="Keywords">
							<button type="submit">
								Search <i class="fas fa-search"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end search arewa -->

	<!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>고마운 사람에게 특별한 마음을 전해부러</p>
						<h1>답례품</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- products -->
	<div class="product-section mt-150 mb-150">
		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<div class="product-filters">
						<ul>
							<h2>답례품 카테고리</h2>
							<c:forEach var="g" items="${categoryList}">
								<li class="categoryNo">${g.categoryItem}
									<input class="hiddenVal" type="hidden" value="${g.categoryNo}"/>
								</li>								

							</c:forEach>
							
								<script>
								$(function() {
								    $(".categoryNo").click(function() {
								        let categoryNo = $(this).find(".hiddenVal").val();

								        $.ajax({
								            url: "categorySearch.do",
								            data: {
								                categoryNo: categoryNo
								            },
								            success: function(data) {
								                console.log(data);
								                let html = "";
								                
								                $(".product-lists").empty();
								                $(".product-lists").css("height", "1300px");
								                $(".pagination").empty();
								                for (let i = 0; i < data.length; i++) {
								                    let gift = data[i];
								                    html += '<div class="col-lg-4 col-md-6 text-center">';
								                    html += '<div class="single-product-item">';
								                    html += '<div class="product-image">';
								                    html += '<a href="single-product.html"> <img src="' + gift.imgPath + '/' + gift.img1 + '" alt="' + gift.img1 + '" />';
								                    html += '</a>';
								                    html += '<h3>' + gift.giftName + '</h3>';
								                    html += '<p class="product-price">';
								                    html += '<span>' + gift.giftContent + '</span>';
								                    html += '</p>';
								                    html += '<p>';
								                    let formattedPrice = new Intl.NumberFormat('ko-KR', { style: 'currency', currency: 'KRW' }).format(gift.giftPrice);
								                    html += '<p>' + formattedPrice + '</p>';
								                    html += '</p>';
								                    html += '<a href="giftDetail.gi?giftNo='+ gift.giftNo +'" class="cart-btn"><i class="fas fa-shopping-cart"></i>상세보기</a>';
								                    html += '</div>';
								                    html += '</div>';
								                    html += '</div>';
								                }  
								                $(".product-lists").append(html);
								                
								              
								            },
								            error: function() {
								                console.log("AJAX 실패 ㅋ");
								            }
								        });
								    });
								});
								</script>
						
						</ul>
						
						<c:if test="${not empty loginMember.gradeNo && loginMember.gradeNo eq '3'}">
							<button class="giftReg" onclick="giftReg();">답례품 등록</button>
						</c:if>
						
						<script>
						function giftReg(){
							location.href="giftRegForm.bo";
						}
						</script>
						
					</div>
						
				</div>
			</div>

			<div class="row product-lists">
				<c:forEach var="g" items="${gList}"> 
					<div class="col-lg-4 col-md-6 text-center">
						<div class="single-product-item">
							<div class="product-image">
								<c:choose>
									<c:when test="${not empty g.imgPath}">
										<img src="${g.imgPath}/${g.img1}" alt="${g.img1}" />
									</c:when>
									<c:otherwise>
										<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSblKjjCbR5l32OqvtAmhj4beLNfLOAtyRdvlPg1O6F&s" />
									</c:otherwise>
								</c:choose>
							</div>
							<h3>${g.giftName}</h3>
							<p class="product-price">
								<span>${g.giftContent}</span>
							</p>
							<p>
								<fmt:formatNumber value="${g.giftPrice}" type="number"
									pattern="#,###원" />
							</p>
							<a class="cart-btn" onclick="giftDetail('${g.giftNo}');">
								<i class="fas fa-shopping-cart"></i>
							상세보기</a>
						</div>
					</div>
				</c:forEach>
			</div>
			
			<script>
				function giftDetail(giftNo){
					location.href="giftDetail.gi?giftNo=" + giftNo;
				}
			</script>


<!-- 231025 페이징처리 한다잉 -->
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="pagination-wrap">
						<ul class="pagination">

							<c:choose>
								<c:when test="${pi.currentPage eq 1}">
									<li class="page-item disabled"><a class="page-link"
										href="">Previous</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link"
										href="giftShop.bo?cpage=${pi.currentPage -1}">Previous</a></li>
								</c:otherwise>
							</c:choose>
							<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
								 <c:choose>
        					<c:when test="${p eq pi.currentPage}">
            
					            <li class="page-item active">
					                <a class="page-link" href="giftShop.bo?cpage=${p}">${p}</a>
					            </li>
					        </c:when>
					        <c:otherwise>
					            <li class="page-item">
					                <a class="page-link" href="giftShop.bo?cpage=${p}">${p}</a>
					            </li>
					        </c:otherwise>
					    </c:choose>
							</c:forEach>

							<c:choose>
								<c:when test="${pi.currentPage eq pi.maxPage}">
									<li class="page-item disabled"><a class="page-link"
										href="">Next</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link"
										href="giftShop.bo?cpage=${pi.currentPage + 1}">Next</a></li>
								</c:otherwise>
							</c:choose>
						</ul>

					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- end logo carousel -->

	<!-- footer -->
	<jsp:include page="../common/footer.jsp"/>

	<!-- end copyright -->

	<!-- jquery -->
	<script src="resources/css/assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="resources/css/assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="resources/css/assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="resources/css/assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="resources/css/assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="resources/css/assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="resources/css/assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="resources/css/assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="resources/css/assets/js/sticker.js"></script>
	<!-- main js -->
	<script src="resources/css/assets/js/main.js"></script>

</body>
</html>