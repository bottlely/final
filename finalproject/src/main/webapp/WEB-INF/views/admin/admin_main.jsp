<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<title>Mars_Admin</title>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
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
</head>

<script type="text/javascript">
	
</script>
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
				<li class="breadcrumb-item"><a href="#">알림</a></li>

			</ol>
			<!-- Icon Cards-->
			<div class="row">
				<div class="col-xl-3 col-sm-6 mb-3">
					<div class="card text-white bg-primary o-hidden h-100">
						<div class="card-body">
							<div class="card-body-icon">
								<i class="fa fa-fw fa-comments"></i>
							</div>
							<div class="mr-5">Today Report :${toReport }개 </div>
						</div>
						<a class="card-footer text-white clearfix small z-1" href="#">
							
						</a>
					</div>
				</div>
				<div class="col-xl-3 col-sm-6 mb-3">
					<div class="card text-white bg-warning o-hidden h-100">
						<div class="card-body">
							<div class="card-body-icon">
								<i class="fa fa-fw fa-list"></i>
							</div>
							<div class="mr-5">Today Join :${todayjoin }명</div>
						</div>
						<a class="card-footer text-white clearfix small z-1" href="#">
							
						</a>
					</div>
				</div>
				<div class="col-xl-3 col-sm-6 mb-3">
					<div class="card text-white bg-success o-hidden h-100">
						<div class="card-body">
							<div class="card-body-icon">
								<i class="fa fa-fw fa-shopping-cart"></i>
							</div>
							<div class="mr-5">Today Order :${todayAd }개</div>
						</div>
						<a class="card-footer text-white clearfix small z-1" href="#">
							
						</a>
					</div>
				</div>

			</div>
			<!-- Area Chart Example-->
			<div class="container-fluid">
				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">인기회원</a></li>

				</ol>
				<!-- Area Chart Example-->
				<div class="row">
				
					<div class="col-lg-4">
						<!-- Example Bar Chart Card-->
						<div class="card mb-3">
							<div class="card-header">
								<i class="fa fa-flag"></i>Top1

							</div>
							<div class="card-body" style="text-align: center;">
								<div>
								<img src="myHomeFolder/background_img/${userInfo1.profile_img}"style="width: 50px; height: 50px; border-radius: 50%;"></div>
								</div>
								<p style="text-align: center;">${userInfo1.name}</p>
								<p style="text-align: center;">Follower : ${ranksize1}명</p>
							

						</div>
					</div>

							<div class="col-lg-4">
						<!-- Example Bar Chart Card-->
						<div class="card mb-3">
							<div class="card-header">
								<i class="fa fa-flag"></i>Top2

							</div>
							<div class="card-body" style="text-align: center;">
								<div>
								<img src="myHomeFolder/background_img/${userInfo2.profile_img}"style="width: 50px; height: 50px; border-radius: 50%;"></div>
								</div>
								<p style="text-align: center;">${userInfo2.name}</p>
								<p style="text-align: center;">Follower : ${ranksize2}명</p>
							

						</div>
					</div>
					
							<div class="col-lg-4">
						<!-- Example Bar Chart Card-->
						<div class="card mb-3">
							<div class="card-header">
								<i class="fa fa-flag"></i>Top3

							</div>
							<div class="card-body" style="text-align: center;">
								<div>
								<img src="myHomeFolder/background_img/${userInfo3.profile_img}"style="width: 50px; height: 50px; border-radius: 50%;"></div>
								</div>
								<p style="text-align: center;">${userInfo3.name}</p>
								<p style="text-align: center;">Follower : ${ranksize3}명</p>
							

						</div>
					</div>



				</div>



			</div>
			<!-- /.container-fluid-->
			<!-- /.container-fluid-->
			<!-- /.content-wrapper-->
			<footer class="sticky-footer">
				<div class="container">
					<div class="text-center">
						<small>Copyright © Your Website 2017</small>
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
			<script
				src="assets_admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
			<!-- Core plugin JavaScript-->
			<script src="assets_admin/vendor/jquery-easing/jquery.easing.min.js"></script>
			<!-- Page level plugin JavaScript-->
			<script src="assets_admin/vendor/chart.js/Chart.min.js"></script>
			<!-- Custom scripts for all pages-->
			<script src="assets_admin/js/sb-admin.min.js"></script>
			<!-- Custom scripts for this page-->

		</div>
</body>

</html>
