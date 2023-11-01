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
              <button type="button" class="btn btn-success btn-small" onclick="location.href='list.ad'">Excel</button><br><br>
              
              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead align="center">
                  <tr>
                    <th scope="col">No</th>
                    <th scope="col">이름</th>
                    <th scope="col">아이디</th>
                    <th scope="col">회원등급</th>
                    <th scope="col">생년월일</th>
                    <th scope="col">성별</th>
                    <th scope="col">전화번호</th>
                    <th scope="col">이메일</th>
                    <th scope="col">회원관리</th>
                  </tr>
                </thead>
                <tbody id="member_info">
                <c:forEach var="m" items="${ list }"> 
                  <tr>
                    <th scope="row">${ m.userNo }</th>
                    <td>${ m.userName }</td>
                    <td>${ m.userId }</td>
                    <td>
                    	<c:choose>
                    		<c:when test="${ m.gradeNo eq '1' }">
                    			회원
                    		</c:when>
                    		<c:when test="${ m.gradeNo eq '2' }">
                    			협력업체
                    		</c:when>
                    		<c:otherwise>
                    			관리자
                    		</c:otherwise>
                    	</c:choose>
                    
                    
                    </td>
                    <td>${ m.birthDay }</td>
                    <td>${ m.gender }</td>
                    <td>${ m.phone }</td>
                    <td>${ m.email }</td>
                    <td>
                    <c:if test="${loginMember.userNo ne m.userNo }">
                    <button class="btn btn-outline-info" onclick="location.href='mdetail.ad?userNo=${m.userNo}'" type="button">상세보기</button>
                    <button class="btn btn-outline-danger" onclick="deleteFn();">추방</button>
                    </c:if>
                    <script>
                    	function deleteFn(){
                    		alertify.confirm('정말로 추방하시겠습니까?',function(){ location.href = "mdelete.ad?userNo=${m.userNo}"; });
	                    		                    			
                    	}
                    </script>
                    </td>
                  </tr>

                </c:forEach>
                </tbody>
              </table>
              
              <!-- End Table with stripped rows -->
		<!-- <nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<li class="page-item disabled">
					<a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
				</li>
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<li class="page-item"><a class="page-link" href="mList.ad?cpage=${ p }">${ p }</a></li>
				</c:forEach>    
					<li class="page-item">
						<a class="page-link" href="">Next</a>
					</li>
		  		</ul>
		</nav>-->
            </div>
          </div>

        </div>
      </div>
    </section>
    

  </main><!-- End #main -->

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