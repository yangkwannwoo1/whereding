<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
      <h1>메뉴</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admin.ad">Home</a></li>
          <li class="breadcrumb-item active">메뉴</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-8">
          <div class="row">

          

            <!-- 매출 -->
            <div class="col-12">
              <div class="card" style="margin: 30px;">
                      <h5 class="card-title">카테고리별 매출</h5>
  
                      <!-- Bar Chart -->
                      <canvas id="barChart" style="max-height: 400px;"></canvas>
                      <script>
                  document.addEventListener("DOMContentLoaded", () => {
                    new Chart(document.querySelector('#barChart'), {
                      type: 'bar',
                      data: {
                        labels: ['와인', '치킨', '스팸', '그저그런스팸'],
                        datasets: [{
                          label: '수량',
                          data: [65, 59, 80, 81, 56, 55, 40],
                          backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(255, 159, 64, 0.2)',
                            'rgba(255, 205, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(201, 203, 207, 0.2)'
                          ],
                          borderColor: [
                            'rgb(255, 99, 132)',
                            'rgb(255, 159, 64)',
                            'rgb(255, 205, 86)',
                            'rgb(75, 192, 192)',
                            'rgb(54, 162, 235)',
                            'rgb(153, 102, 255)',
                            'rgb(201, 203, 207)'
                          ],
                          borderWidth: 1
                        }]
                      },
                      options: {
                        scales: {
                          y: {
                            beginAtZero: true
                          }
                        }
                      }
                    });
                  });
                </script>
              </div>
            </div><!-- 매출 end -->

           
            

          </div>
        </div>
        <!-- 왼쪽 칼럼 끝-->

        <!-- 오른쪽 칼럼 -->
        <div class="col-lg-4">

            <!-- 총회원수 -->
            <div class="col-xl-12">

              <div class="card info-card customers-card">

                <div class="card-body">
                  <h5 class="card-title">총회원수</h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${ selectOneCount } 명</h6>
                      

                    </div>
                  </div>

                </div>
              </div>

            </div>
            <!-- 총회원수 끝 -->

            <!-- 판매내역-->
            <div class="col-xl-12">
              <div class="card info-card sales-card">

              
                <div class="card-body">
                  <h5 class="card-title">판매 <span>| Today</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${ selectGiftCount } 개</h6>
                      <span class="text-success small pt-1 fw-bold">1%</span> <span class="text-muted small pt-2 ps-1">증가</span>

                    </div>
                  </div>
                </div>

              </div>
            </div>
            <!-- 판매내역 끝 -->

            <!-- 총 방문자 수-->
            <div class="col-xl-12">

              <div class="card info-card customers-card">

                <div class="card-body">
                  <h5 class="card-title">총 방문자 수 <span>| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${ selectvisitCount } 명</h6>
                      <span class="text-danger small pt-1 fw-bold">1%</span> <span class="text-muted small pt-2 ps-1">증가</span>

                    </div>
                  </div>

                </div>
              </div>

            </div>
            <!-- 총 방문자 수 끝 -->

          

        </div><!-- 오른쪽 칼럼 끝 -->

      </div>
    </section>

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