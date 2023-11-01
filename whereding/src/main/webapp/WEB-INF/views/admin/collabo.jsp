<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>공지사항 리스트</title>
  
<style>
	#acceptBtn{
		background:green;
		color:white;
	}
	#deniedBtn{
		background:red;
		color:white;
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
      <h1>협업업체 신청내역</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admin.ad">신청현황</a></li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              
              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성일</th>
                  </tr>
                </thead>
                
                <tbody id="tb">
                <c:forEach var="c" items="${collList}">
                  <tr id="tr-hover">
                  <input type="hidden" value="${c.cpNo}">
                    <td>${c.cpTitle}</td>
                    <td>${c.userName}</td>
                    <td>${c.cpDate}</td>
                    <td><button id="detailBtn" onclick="collDetail('${c.cpNo}');" style="border-radius: 10px;">상세보기</button></td>
                    <td><button id="acceptBtn" onclick="collAccept('${c.userNo}')" style="border-radius: 10px;">승인</button></td>
                    <td><button id="deniedBtn" onclick="collDenied('${c.cpNo}')" style="border-radius: 10px;">거절</button></td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
              
              <script>
              	function collDetail(data){
              		location.href="collaboDetail.ad?cpNo="+data;
              	}
              	
              	function collAccept(data){
              		location.href="collaboAccept.ad?userNo=" + data;
              	}
              	function collDenied(data){
              		location.href="collaboDenied.ad?cpNo=" + data;
              	}
              </script>
              
              
              
              
              
              
              
              <!-- End Table with stripped rows -->
						<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<c:choose>
					<c:when test="${ pi.currentPage eq 1 }">
						<li class="page-item disabled"><a class="page-link" href="">Previous</a></li>
					</c:when>     
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="collabo.ad?cpage=${ pi.currentPage - 1 }">Previous</a></li>
					</c:otherwise>
				</c:choose>   
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<li class="page-item"><a class="page-link" href="collabo.ad?cpage=${ p }">${ p }</a></li>
				</c:forEach>    
				<c:choose>
					<c:when test="${ pi.currentPage eq pi.maxPage }">
						<li class="page-item disabled"><a class="page-link" href="">Next</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="collabo.ad?cpage=${ pi.currentPage + 1 }">Next</a></li>
					</c:otherwise>	
				</c:choose>
		  	</ul>
		</nav><!-- End Centered Pagination -->
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