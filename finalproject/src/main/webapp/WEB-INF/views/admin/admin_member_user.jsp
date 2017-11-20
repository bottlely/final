<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <style>
  .rounded {
	border-radius: 100em !important;
}

.darkGrey {
	background: #595770;
	color: #fff;
	border: none;
	
}

  
  
  </style>
 <title>MARS - Admin</title>
   <!-- Bootstrap core CSS-->
  <link href="assets_admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="assets_admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="assets_admin/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="assets_admin/css/sb-admin.css" rel="stylesheet">
</head>
<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
   <a class="navbar-brand" href="admin.do">MARS</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-sitemap"></i>
            <span class="nav-link-text">Member</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents">
            <li>
              <a href="admin_m_u.do">User</a>
            </li>
            <li>
              <a href="admin_m_b.do">Business</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Data</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages">
            <li>
              <a href="admin_d_u.do">User</a>
            </li>
            <li>
              <a href="admin_d_b.do">Business</a>

          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="admin_c.do">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Customer</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="admin_p.do">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Profile</span>
          </a>
        </li>


    

      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
     
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Member</a>
        </li>
        <li class="breadcrumb-item active">Users</li>
      </ol>
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Search</div>
        <div class="card-body">
        <select name="select" id="select">
           <option value="0">이름</option>
           <option value="1">ID</option>
        </select>
        <input type="text" id="search">
        <input type="button" value="검색" onclick="search()" class="btn btn-primary">
        <br><br>
        <div class="card-header">
        	 상세검색</div>
        <form name="detail_Search" action="detail_Search.do">
           <section>
           <br>
              <fieldset >
                  
          
                 YEAR :  <select name="startYear">
                          <option value="1950">시작 년도</option>
                             <c:forEach var="startYear" begin="1950" end="2012" step="1">
                                <option value="${startYear }">${startYear }</option>
                             </c:forEach>
                       </select> ~
                       <select name="endYear">
                          <option value="2012">끝나는 년도</option>
                             <c:forEach var="endYear" begin="1950" end="2012" step="1">
                                <option value="${endYear }">${endYear }</option>
                             </c:forEach>
                       </select><br>
                 GENDER : <input type="checkbox" name="man" value="1">남자&emsp;&emsp;<input type="checkbox" name="women" value="2">여자<br>
                 HOBBY : &nbsp;<input type="checkbox" name="hobby" value="favorite_Movie"> Movie
                       <input type="checkbox" name="hobby" value="favorite_Sport"> Sport
                       <input type="checkbox" name="hobby" value="favorite_Fashion"> Fashion
                       <input type="checkbox" name="hobby" value="favorite_Beauty"> Beauty<br>&emsp;&emsp;&emsp;&emsp;
                       <input type="checkbox" name="hobby" value="favorite_Travel"> Travel
                       <input type="checkbox" name="hobby" value="favorite_Music"> Music
                       <input type="checkbox" name="hobby" value="favorite_Dance"> Dance
                       <input type="checkbox" name="hobby" value="favorite_Food"> Food<br>
                 CITY :  <select name="city">
                          <option value="city">City</option>
                          <option value="seoul">seoul</option>
                          <option value="incheon">incheon</option>
                          <option value="suwon">suwon</option>
                          <option value="ilsan">ilsan</option>
                          <option value="daegu">daegu</option>
                          <option value="daejeon">daejeon</option>
                          <option value="busan">busan</option>
                       </select><br><br>
                       <input type="submit" value="상세 검색" class="btn btn-primary">
              </fieldset>
           </section>
        </form>
        <script>
           function search(){
              var txt = document.getElementById("search").value;
              var option = document.getElementById("select").value;
              
              if(option == 0){
                 location.href='admin_nameSearch.do?txt='+txt;
              }else{
                 location.href='admin_idSearch.do?txt='+txt;
              }
           }
        </script>
          <div class="table-responsive">
          <br>
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>Information</th>
                  <th style="width: 80px;"></th>
                </tr>
              </thead>
              <tbody>
                 <c:if test="${empty list }">
                    <tr>
                       <td colspan="3" align="center">등록된 회원이 없습니다.</td>
                    </tr>
                 </c:if>
                 <c:forEach var="dto" items="${list }">
                   <tr>
                      <td>${dto.name } // ${dto.idx }</td>
                      <td><input type="button" value="회원 탈퇴" onclick="memberDelete('${dto.idx}')" class="btn btn-danger"></td>
                      <script>
                         function memberDelete(idx){
                            location.href='admin_memberDelete.do?idx='+idx;
                         }
                      </script>
                   </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright ⓒ Your Website 2017</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
   			<!-- Logout Modal-->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">관리자 로그아웃 하시겠습니까?</h5>
							<button class="close" type="button" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body">로그아웃 하시려면 아래 로그아웃 버튼을 눌러주세요</div>
						<div class="modal-footer">
							<button class="btn btn-secondary" type="button"
								data-dismiss="modal">취소</button>
							<a class="btn btn-primary" href="logout.do">Logout</a>
						</div>
					</div>
				</div>
			</div>
    <!-- Bootstrap core JavaScript-->
    <script src="assets_admin/vendor/jquery/jquery.min.js"></script>
    <script src="assets_admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="assets_admin/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="assets_admin/vendor/datatables/jquery.dataTables.js"></script>
    <script src="assets_admin/vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="assets_admin/js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="assets_admin/js/sb-admin-datatables.min.js"></script>
  </div>
</body>
</html>