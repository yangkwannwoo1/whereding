<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>회원조회</title>
  
  <style>
	#member_info th, td{
		text-align: center;
	}
	
  </style>
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
          <li class="breadcrumb-item">회원</li>
          <li class="breadcrumb-item active">회원정보조회</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">리뷰 조회</h5>
              
              
           <ul class="nav nav-tabs">
              <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#qwe">Hall</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#asd">Studio</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#zxc">Dress</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#qqq">Makeup</a>
              </li>
            </ul>
            
            <div class="tab-content">
              <div class="tab-pane fade show active" id="qwe">
              <table class="table datatable">
                <thead align="center">
                  <tr>
                    <th scope="col">리뷰번호</th>
                    <th scope="col">상품</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성내용</th>
                    <th scope="col">작성일자</th>
                    <th scope="col">리뷰삭제</th>
                  </tr>
                </thead>
                <tbody id="member_info">
                
                <c:forEach var="r" items="${reList}"> 
                  <tr>
                    <th scope="row">${r.reviewNo}</th>
                    <td>${r.hName}</td>
                    <td>${r.userName}</td>
                    <td>${r.reviewContent}</td>
                    <td>${r.createDate}</td>
                    <td><button onclick="deleteReview('${r.reviewNo}')">삭제</button></td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
              </div>
              
              <div class="tab-pane fade" id="asd">
              <table class="table datatable">
                <thead align="center">
                  <tr>
                    <th scope="col">리뷰번호</th>
                    <th scope="col">상품</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성내용</th>
                    <th scope="col">작성일자</th>
                    <th scope="col">리뷰삭제</th>
                  </tr>
                </thead>
                <tbody id="member_info">
                <c:forEach var="s" items="${stList}"> 
                  <tr>
                     <th scope="row">${s.reviewNo}</th>
	                    <td>${s.sEnterprise}</td>
	                    <td>${s.userName}</td>
	                    <td>${s.reviewContent}</td>
	                    <td>${s.createDate}</td>
	                    <td><button onclick="deleteReview('${s.reviewNo}')">삭제</button></td>
                    </td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
              </div>
              
              <div class="tab-pane fade" id="zxc">
              <table class="table datatable">
                <thead align="center">
                  <tr>
                    <th scope="col">리뷰번호</th>
                    <th scope="col">상품</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성내용</th>
                    <th scope="col">작성일자</th>
                    <th scope="col">리뷰삭제</th>
                  </tr>
                </thead>
                <tbody id="member_info">
                <c:forEach var="d" items="${drList}"> 
                  <tr>
                     <th scope="row">${d.reviewNo}</th>
	                    <td>${d.dEnterprise}</td>
	                    <td>${d.userName}</td>
	                    <td>${d.reviewContent}</td>
	                    <td>${d.createDate}</td>
	                    <td><button onclick="deleteReview('${d.reviewNo}')">삭제</button></td>
                    </td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
              </div>
              
              <div class="tab-pane fade" id="qqq">
              <table class="table datatable">
                <thead align="center">
                  <tr>
                    <th scope="col">리뷰번호</th>
                    <th scope="col">상품</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성내용</th>
                    <th scope="col">작성일자</th>
                    <th scope="col">리뷰삭제</th>
                  </tr>
                </thead>
                <tbody id="member_info">
                <c:forEach var="m" items="${maList}"> 
                  <tr>
                     <th scope="row">${m.reviewNo}</th>
	                    <td>${m.mEnterprise}</td>
	                    <td>${m.userName}</td>
	                    <td>${m.reviewContent}</td>
	                    <td>${m.createDate}</td>
	                    <td><button onclick="deleteReview('${m.reviewNo}')">삭제</button></td>
                    </td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
              </div>
              
              <script>
              	function deleteReview(reviewNo){
              		location.href="deleteReview?reviewNo="+reviewNo
              	}
            	  
              </script>
        </div>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

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