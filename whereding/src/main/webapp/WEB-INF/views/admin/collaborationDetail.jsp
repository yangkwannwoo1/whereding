<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필</title>
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
      <h1>협업업체 신청</h1>
    </div><!-- End Page Title -->

    <section class="section profile">
      <div class="row">

        <div class="col-xl-8">

          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered">

                <li class="nav-item">
                  <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-edit">신청내용</button>
                </li>

              </ul>
              
              <div class="tab-content pt-2">

                <div class="tab-pane fade show active profile-edit pt-3" id="profile-edit">

                    <div class="row mb-3">
                      <label for="fullName" class="col-md-4 col-lg-3 col-form-label">제목</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="fullName" type="text" class="form-control" id="fullName" value="${coll.cpTitle}">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="password" class="col-md-4 col-lg-3 col-form-label">신청분류</label>
                      <div class="col-md-8 col-lg-9">
                        <input type="text" value="협업업체 신청" class="form-control">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="name" class="col-md-4 col-lg-3 col-form-label">신청자</label>
                      <div class="col-md-8 col-lg-9">
                        <input type="text" name="userName" class="form-control" value="${coll.userName}">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="birthday" class="col-md-4 col-lg-3 col-form-label">신청내용</label>
                      <div class="col-md-8 col-lg-9">
                        <textarea cols="92" rows="20" style="resize:none;">${coll.cpContent}</textarea>
                      </div>
                    </div>

                    <div class="text-center">
                      
                      <button type="button" class="btn btn-secondary" style="margin-left:151px;" onclick="back();">목록으로</button>
                    </div>
                    <script>
                    	function back(){
                    		history.back();
                    	}
                    </script>
                  
                  <div class="modal" id="deleteForm">
       <div class="modal-dialog">
           <div class="modal-content">
           
               <!-- Modal Header -->
               <div class="modal-header">
               <h4 class="modal-title">회원탈퇴</h4>
               <button type="button" class="close" data-dismiss="modal">&times;</button>
               </div>
               
               <!-- Modal body -->
               <div class="modal-body" align="center">
               
                   <form action="delete.ad" method="post">
                          
                       <button type="submit" class="btn btn-danger">추방시키기</button>
                   </form>

               </div>
               
           </div>
       </div>
   </div>

                </div>

                <div class="tab-pane fade pt-3" id="profile-change-password">
                  <!-- 비밀번호변경 Form -->
                  <form action="update.ad" method="post">

                    <div class="row mb-3">
                      <label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">현재 Password</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="password" type="password" class="form-control" id="currentPassword">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="newPassword" class="col-md-4 col-lg-3 col-form-label">새로운 Password</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="newpassword" type="password" class="form-control" id="newPassword">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">새로운 Password를 입력해주세요.</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="renewpassword" type="password" class="form-control" id="renewPassword">
                      </div>
                    </div>

                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">비밀번호 변경</button>
                    </div>
                  </form><!-- End Change Password Form -->

                </div>

              </div>
              </div><!-- End Bordered Tabs -->

            </div>
          </div>

        </div>
    </section>

  </main><!-- End #main -->
 
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