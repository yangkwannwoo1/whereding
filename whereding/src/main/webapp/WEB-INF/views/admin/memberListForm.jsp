<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>회원조회</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="resources/assets/img/favicon.png" rel="icon">
  <link href="resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="resources/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="resources/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="resources/assets/css/style.css" rel="stylesheet">
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
      <h1>회원정보조회</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="main.jsp">HOME</a></li>
          <li class="breadcrumb-item">회원</li>
          <li class="breadcrumb-item active">회원정보조회</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">회원 전체 조회</h5>
              
              
              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">No</th>
                    <th scope="col">이름</th>
                    <th scope="col">아이디</th>
                    <th scope="col">회원등급</th>
                    <th scope="col">생년월일</th>
                    <th scope="col">성별</th>
                    <th scope="col">전화번호</th>
                    <th scope="col">댓글수</th>

                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>윤재성</td>
                    <td>user01</td>
                    <td>회원</td>
                    <td>2016-05-25</td>
                    <td>신랑</td>
                    <td>010-1234-1234</td>
                    <td>10</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>양관우</td>
                    <td>user02</td>
                    <td>협업업체관리자</td>
                    <td>2014-12-05</td>
                    <td>신부</td>
                    <td>010-1234-1234</td>
                    <td>10</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>이원종</td>
                    <td>user03</td>
                    <td>회원</td>
                    <td>2011-08-12</td>
                    <td>신랑</td>
                    <td>010-1234-1234</td>
                    <td>10</td>
                  </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>김현우</td>
                    <td>user04</td>
                    <td>협업업체관리자</td>
                    <td>2012-06-11</td>
                    <td>신부</td>
                    <td>010-1234-1234</td>
                    <td>10</td>
                  </tr>
                  <tr>
                    <th scope="row">5</th>
                    <td>kh정보교육원</td>
                    <td>user05</td>
                    <td>관리자</td>
                    <td>2011-04-19</td>
                    <td>신랑</td>
                    <td>010-1234-1234</td>
                    <td>10</td>
                  </tr>
                </tbody>
              </table>
              <!-- End Table with stripped rows -->

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
 	<jsp:include page="../common/footer.jsp"/>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/admin.js"></script>

</body>

</html>