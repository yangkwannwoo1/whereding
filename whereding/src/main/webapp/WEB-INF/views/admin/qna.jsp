<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>QNA 리스트</title>
  
</head>

<body>
  <header id="header" class="header fixed-top d-flex align-items-center">
   <jsp:include page="common/header.jsp"/>
  </header>
  <aside id="sidebar" class="sidebar">
   <jsp:include page="common/sidebar.jsp"/>	
  </aside>
	
  <main id="main" class="main">

    <div class="pagetitle">
      <h1>QNA 조회</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admin.ad">HOME</a></li>
          <li class="breadcrumb-item active">Q.N.A</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<br>
							<br>

							<!-- F.A.Q Group 1 -->
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">QNA 조회</h5>
									<div class="accordion accordion-flush" id="faq-group-1">
										
										
										<c:forEach var="q" items="${ qnalist }">
											<div class="accordion-item">
												<h2 class="accordion-header">
													<button class="accordion-button collapsed"
														data-bs-target="#faqsOne-${ q.qnaNo }" type="button"
														data-bs-toggle="collapse">
														제목${ q.qnaTitle } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;작성일:${ q.qnaDate }
													</button>
												</h2>
												<div id="faqsOne-${ q.qnaNo }" class="accordion-collapse collapse"
													data-bs-parent="#faq-group-1">
													<div class="accordion-body">
													${ q.qnaContent }
													</div>
												 <button onclick="location.href='qna.bo'" type="button" style="border-radius: 10px;">상세보기</button>
												</div>
											</div>
										</c:forEach>

									</div>
								</div>
								<!-- End F.A.Q Group 1 -->

							</div>
						</div>

					</div>
				</div>
		</section>

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
											<li class="page-item"><a class="page-link" href="qna.ad?cpage=${ pi.currentPage - 1 }">Previous</a></li>
										</c:otherwise>
									</c:choose>
									<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
										<li class="page-item"><a class="page-link" href="qna.ad?cpage=${ p }">${ p }</a></li>
									</c:forEach>
									<c:choose>
										<c:when test="${ pi.currentPage eq pi.maxPage }">
											<li class="page-item disabled"><a class="page-link" href="">Next</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="qna.ad?cpage=${ pi.currentPage + 1 }">Next</a></li>
										</c:otherwise>	
									</c:choose>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
 	<jsp:include page="../common/footer.jsp"/>
  </footer><!-- End Footer -->

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