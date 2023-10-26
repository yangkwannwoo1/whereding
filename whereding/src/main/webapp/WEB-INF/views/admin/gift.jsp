<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header id="header" class="header fixed-top d-flex align-items-center">
		<jsp:include page="common/header.jsp" />
	</header>
	<aside id="sidebar" class="sidebar">
		<jsp:include page="common/sidebar.jsp" />
	</aside>
	
	<main id="main" class="main">

    <div class="pagetitle">
      <h1>답례품 목록</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admin.ad">HOME</a></li>
          <li class="breadcrumb-item active">답례품 목록</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

              <button type="button" style="border-radius: 10px; width: 100px; height: 50px;" onclick="location.href='notice.ad'">엑셀로 보기</button><br><br>
              
              <!-- products -->
	<div class="product-section mt-150 mb-150">
		<div class="container">

			
			<div class="row product-lists">

				<c:forEach var="g" items="${ gList }">
					<div class="col-lg-4 col-md-6 text-center strawberry">
						<div class="single-product-item">
							<div class="product-image">
								<a href="#"> <img
									src="${ g.imgPath }/${ g.img1 }" alt="${ g.img1 }" />
								</a>
							</div>
							<h3>${ g.giftName }</h3>
							<p class="product-price">
								<span>${ g.giftContent }</span>
							</p>
							<p>
								<fmt:formatNumber value="${ g.giftPrice }" type="number"
									pattern="#,###원" />
							</p>
							<a href="#" class="cart-btn"><i
								class="fas fa-shopping-cart"></i>상세보기</a>
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
											<li class="page-item disabled"><a class="page-link"
												href="">Previous</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link"
												href="giftsale.ad?cpage=${ pi.currentPage - 1 }">Previous</a></li>
										</c:otherwise>
									</c:choose>
									<c:forEach var="p" begin="${ pi.startPage }"
										end="${ pi.endPage }">
										<li class="page-item"><a class="page-link"
											href="giftsale.ad?cpage=${ p }">${ p }</a></li>
									</c:forEach>
									<c:choose>
										<c:when test="${ pi.currentPage eq pi.maxPage }">
											<li class="page-item disabled"><a class="page-link"
												href="">Next</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link"
												href="giftsale.ad?cpage=${ pi.currentPage + 1 }">Next</a></li>
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

  </main><!-- End #main -->
	
	

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<jsp:include page="../common/footer.jsp" />
	</footer>
	<!-- End Footer -->

	<!-- Vendor JS Files -->
  <script src="resources/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="resources/assets/vendor/echarts/echarts.min.js"></script>
  <script src="resources/assets/vendor/quill/quill.min.js"></script>
  <script src="resources/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="resources/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="resources/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/assets/js/admin.js"></script>
</body>
</html>
tml>
