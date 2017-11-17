<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>MARS - Admin</title>
<!-- Bootstrap core CSS-->
<link href="assets_admin/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="assets_admin/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Page level plugin CSS-->
<link href="assets_admin/vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="assets_admin/css/sb-admin.css" rel="stylesheet">
<style>
.rounded {
	border-radius: 100em !important;
}

.darkGrey {
	background: #595770;
	color: #fff;
	border: none;
	font-size: 15px;
	width: 80px;
}



</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	function update(i) {
		
		location.href="admin_c.do?cate="+i;
	}
	
	function View(i) {
		
		location.href="main_view.do?content_idx="+i;
	}
	
	 //contentMore
    function deleteContent(content_idx){
       
       var data = new FormData();
       data.append("contentidx", content_idx);
        var xhr = new XMLHttpRequest();
          xhr.open("POST","deleteContent.do");
          xhr.send(data);
          xhr.onload = function(e) {
              if(this.status == 200) {
                 var jsonResponse = JSON.parse(e.currentTarget.responseText);
                  if(jsonResponse["result"] > 0){
                     alert('게시물 삭제 완료하였습니다!');
                     window.location.reload();
                  }else{
                     alert('이미 삭제하였습니다!');
                  }
              }
          }
    }
	
</script>

</head>
<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="mainNav">
		<a class="navbar-brand" href="admin.do">MARS</a>
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Components"><a
					class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
					href="#collapseComponents" data-parent="#exampleAccordion"> <i
						class="fa fa-fw fa-sitemap"></i> <span class="nav-link-text">Member</span>
				</a>
					<ul class="sidenav-second-level collapse" id="collapseComponents">
						<li><a href="admin_m_u.do">User</a></li>
						<li><a href="admin_m_b.do">Business</a></li>
					</ul></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Example Pages"><a
					class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
					href="#collapseExamplePages" data-parent="#exampleAccordion"> <i
						class="fa fa-fw fa-area-chart"></i> <span class="nav-link-text">Data</span>
				</a>
					<ul class="sidenav-second-level collapse" id="collapseExamplePages">
						<li><a href="admin_d_u.do">User</a></li>
						<li><a href="admin_d_b.do">Business</a>
					</ul></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Tables"><a class="nav-link" href="admin_c.do"> <i
						class="fa fa-fw fa-table"></i> <span class="nav-link-text">Customer</span>
				</a></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Tables"><a class="nav-link" href="admin_p.do"> <i
						class="fa fa-fw fa-table"></i> <span class="nav-link-text">Profile</span>
				</a></li>




			</ul>
			<ul class="navbar-nav sidenav-toggler">
				<li class="nav-item"><a class="nav-link text-center"
					id="sidenavToggler"> <i class="fa fa-fw fa-angle-left"></i>
				</a></li>
			</ul>
			<ul class="navbar-nav ml-auto">

	

				<li class="nav-item"><a class="nav-link" data-toggle="modal"
					data-target="#exampleModal"> <i class="fa fa-fw fa-sign-out"></i>Logout
				</a></li>
			</ul>
		</div>
	</nav>
	<div class="content-wrapper">
		<div class="container-fluid">
			<!-- Breadcrumbs-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index.html">Report</a></li>
				<li class="breadcrumb-item active">고객센터</li>
			</ol>
			<div class="row">
				<div class="col-12">
					<h5>
						<select onchange="update(this.value)" id ="tabChange">Category
						<option value="0">-Category-</option>
							<option value="11">검색/인기태그</option>
							<option value="12">공개범위</option>
							<option value="13">친구</option>
							<option value="14">피드</option>
							<option value="15">게시물작성</option>
							<option value="16">알림</option>
							<option value="2">회원신고</option>
							<option value="3">게시물신고</option>
						</select>


					</h5>
					<div>
						<table class="table">
							<thead>
								<tr>
									<th>Name</th>
									<th>Content</th>
									<th>Category</th>
									<th>Date</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty lists }">내용이 없습니다. </c:if>
								<c:forEach var="dto" items="${lists }">
									<tr id="${dto.category }">
										<td>${dto.name}</td>
										<td>${dto.content}
										<c:if test="${dto.category == 3 }"><input type="button" value="View" onclick="View(${dto.idx_to})" class="btn btn-primary"></c:if>
										
										</td>
										<td><c:if test="${dto.category == 11 }">검색/인기태그</c:if>
											<c:if test="${dto.category == 12 }">공개범위</c:if>
											<c:if test="${dto.category == 13 }">친구</c:if>
											<c:if test="${dto.category == 14 }">피드</c:if>
											<c:if test="${dto.category == 15 }">게시물작성</c:if>
											<c:if test="${dto.category == 16 }">알림</c:if>
											<c:if test="${dto.category == 2 }">회원신고</c:if>
											<c:if test="${dto.category == 3 }">게시물신고</c:if>
										
										
										</td>
										<td>${dto.reportdate}
										<c:if test="${dto.category == 3 }"><input type="button" value="Delete" onclick="deleteContent(${dto.idx_to})" class="btn btn-primary"></c:if>
										</td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<td></td>
									<td>
										
										<c:if test="${empty cate || cate == 0}"> ${pageStr } </c:if>
										<c:if test="${ cate != 0}"> ${pageStr2}	 </c:if>
																	
									
									</td>
									<td></td>
								</tr>
							</tfoot>
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
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fa fa-angle-up"></i>
		</a>
		<!-- Logout Modal-->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ready to
							Leave?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">Select "Logout" below if you are
						ready to end your current session.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">Cancel</button>
						<a class="btn btn-primary" href="login.html">Logout</a>
					</div>
				</div>
			</div>
		</div>
		<!-- Bootstrap core JavaScript-->
		<script src="assets_admin/vendor/jquery/jquery.min.js"></script>
		<script src="assets_admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- Core plugin JavaScript-->
		<script src="assets_admin/vendor/jquery-easing/jquery.easing.min.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="assets_admin/js/sb-admin.min.js"></script>
	</div>
</body>

</html>
