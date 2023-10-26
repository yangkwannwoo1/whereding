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

            <!--  답례품 판매 -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                
                <div class="card-body">
                  <h5 class="card-title">답례품 판매<span>| Today</span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">No</th>
                        <th scope="col">카테고리</th>
                        <th scope="col">제품</th>
                        <th scope="col">가격</th>
                        <th scope="col">수량</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row"><a href="#">#1</a></th>
                        <td>와인</td>
                        <td><a href="#" class="text-primary">숙성 100년산 와인</a></td>
                        <td>300원</td>
                        <td><span class="badge bg-success">1</span></td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#">#10</a></th>
                        <td>스팸</td>
                        <td><a href="#" class="text-primary">유니크한 스팸</a></td>
                        <td>100원</td>
                        <td><span class="badge bg-warning">5</span></td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#">#100</a></th>
                        <td>자동차</td>
                        <td><a href="#" class="text-primar">개 비싸버린 우라칸</a></td>
                        <td>500원</td>
                        <td><span class="badge bg-danger">3</span></td>
                      </tr>
                    </tbody>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->

            <!-- 최고 답례품 판매 -->
            <div class="col-12">
              <div class="card top-selling overflow-auto">

                <div class="card-body pb-0">
                  <h5 class="card-title">최고 답례품 판매내역<span>| Today</span></h5>

                  <table class="table table-borderless">
                    <thead>
                      <tr>
                        <th scope="col">제품</th>
                        <th scope="col">가격</th>
                        <th scope="col">수량</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><a href="#" class="text-primary fw-bold">우라칸</a></td>
                        <td>10000원</td>
                        <td class="fw-bold">5개</td>
                      </tr>
                      <tr>
                        <td><a href="#" class="text-primary fw-bold">우라칸</a></td>
                        <td>10000원</td>
                        <td class="fw-bold">5개</td>
                      </tr>
                      <tr>
                        <td><a href="#" class="text-primary fw-bold">우라칸</a></td>
                        <td>10000원</td>
                        <td class="fw-bold">5개</td>
                      </tr>
                    
                    </tbody>
                  </table>

                </div>

              </div>
            </div>
            <!-- 답례품 판매내역 -->

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
                      <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">증가</span>

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
                      <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">감소</span>

                    </div>
                  </div>

                </div>
              </div>

            </div>
            <!-- 총 방문자 수 끝 -->

          <!-- 많이 방문한 웹사이트 순 -->
          <div class="card">
           
            <div class="card-body pb-0">
              <h5 class="card-title">많이 방문한 웹사이트<span>| Today</span></h5>

              <div id="trafficChart" style="min-height: 400px;" class="echart"></div>

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  echarts.init(document.querySelector("#trafficChart")).setOption({
                    tooltip: {
                      trigger: 'item'
                    },
                    legend: {
                      top: '5%',
                      left: 'center'
                    },
                    series: [{
                      name: '조회수',
                      type: 'pie',
                      radius: ['40%', '70%'],
                      avoidLabelOverlap: false,
                      label: {
                        show: false,
                        position: 'center'
                      },
                      emphasis: {
                        label: {
                          show: true,
                          fontSize: '18',
                          fontWeight: 'bold'
                        }
                      },
                      labelLine: {
                        show: false
                      },
                      data: [{
                          value: 1048,
                          name: '네이버'
                        },
                        {
                          value: 735,
                          name: '구글'
                        },
                        {
                          value: 580,
                          name: '토스'
                        },
                        {
                          value: 484,
                          name: '카카오'
                        }
                      ]
                    }]
                  });
                });
              </script>

            </div>
          </div><!-- 웹사이트 순 -->

          

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