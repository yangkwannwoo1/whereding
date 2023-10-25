<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>회원조회</title>

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
          <li class="breadcrumb-item"><a href="admin.ad">HOME</a></li>
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
                    <th scope="col">이메일</th>
                  </tr>
                </thead>
                <tbody>
                 <c:forEach var="m" items="${ list }">
                  <tr>
                    <th scope="row">${ m.userNo }</th>
                    <td>${ m.userName }</td>
                    <td>${ m.userId }</td>
                    <td>${ m.gradeNo }</td>
                    <td>${ m.birthDay }</td>
                    <td>${ m.gender }</td>
                    <td>${ m.phone }</td>
                    <td>${ m.email }</td>
                  </tr>
                 </c:forEach>
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