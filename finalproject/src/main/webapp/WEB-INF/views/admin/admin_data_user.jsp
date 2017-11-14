<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<!-- d3 그래프 만들기 -->

<script src="https://d3js.org/d3.v4.min.js"></script>
<script type="text/javascript">
	//7일전
	var nday = new Date();    
	nday.setDate(nday.getDate() - 7); //오늘 날짜에서 days만큼을 뒤로 이동 
	var yy = nday.getFullYear();
	var mm = nday.getMonth()+1;
	var dd = nday.getDate();

		if( mm<10) mm="0"+mm;
		if( dd<10) dd="0"+dd;
		var day7 = yy+"-"+mm+"-"+dd;
		//6일전
		var nday1 = new Date();    
		nday1.setDate(nday1.getDate() - 6); //오늘 날짜에서 days만큼을 뒤로 이동 
		var yy1 = nday1.getFullYear();
		var mm1 = nday1.getMonth()+1;
		var dd1 = nday1.getDate();

			if( mm1<10) mm1="0"+mm1;
			if( dd1<10) dd1="0"+dd1;
			var day6 = yy1+"-"+mm1+"-"+dd1;
			
			//5일전
			var nday2 = new Date();    
			nday2.setDate(nday2.getDate() - 5); //오늘 날짜에서 days만큼을 뒤로 이동 
			var yy2 = nday2.getFullYear();
			var mm2 = nday2.getMonth()+1;
			var dd2 = nday2.getDate();

				if( mm2<10) mm2="0"+mm2;
				if( dd2<10) dd2="0"+dd2;
				var day5 = yy2+"-"+mm2+"-"+dd2;
				
				//4일전
				var nday3 = new Date();    
				nday3.setDate(nday3.getDate() - 4); //오늘 날짜에서 days만큼을 뒤로 이동 
				var yy3 = nday3.getFullYear();
				var mm3 = nday3.getMonth()+1;
				var dd3 = nday3.getDate();

					if( mm3<10) mm3="0"+mm3;
					if( dd3<10) dd3="0"+dd3;
					var day4 = yy3+"-"+mm3+"-"+dd3;
					
					//3일전
					var nday4 = new Date();    
					nday4.setDate(nday1.getDate() - 3); //오늘 날짜에서 days만큼을 뒤로 이동 
					var yy4 = nday4.getFullYear();
					var mm4 = nday4.getMonth()+1;
					var dd4 = nday4.getDate();

						if( mm4<10) mm4="0"+mm4;
						if( dd4<10) dd4="0"+dd4;
						var day3 = yy4+"-"+mm4+"-"+dd4;
						
						//2일전
						var nday5 = new Date();    
						nday5.setDate(nday5.getDate() - 2); //오늘 날짜에서 days만큼을 뒤로 이동 
						var yy5 = nday5.getFullYear();
						var mm5 = nday5.getMonth()+1;
						var dd5 = nday5.getDate();

							if( mm5<10) mm5="0"+mm5;
							if( dd5<10) dd5="0"+dd5;
							var day2 = yy5+"-"+mm5+"-"+dd5;
							
							//1일전
							var nday6 = new Date();    
							nday6.setDate(nday6.getDate() - 1); //오늘 날짜에서 days만큼을 뒤로 이동 
							var yy6 = nday6.getFullYear();
							var mm6 = nday6.getMonth()+1;
							var dd6 = nday6.getDate();

								if( mm6<10) mm1="0"+mm6;
								if( dd6<10) dd1="0"+dd6;
								var day1 = yy6+"-"+mm6+"-"+dd6;
			function chart() {

		//Chart.js scripts
		//-- Set new default font family and font color to mimic Bootstrap's default styling
		Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
		Chart.defaults.global.defaultFontColor = '#292b2c';
		//-- Area Chart Example
		var ctx = document.getElementById("myAreaChart");
		var myLineChart = new Chart(ctx, {

			type : 'line',
			data : {
				labels : [ day7, day6, day5, day4, day3, day2,
						day1 , "now" ],
				datasets : [ {
					label : "",
					lineTension : 0.3,
					backgroundColor : "rgba(2,117,216,0.2)",
					borderColor : "rgba(2,117,216,1)",
					pointRadius : 5,
					pointBackgroundColor : "rgba(2,117,216,1)",
					pointBorderColor : "rgba(255,255,255,0.8)",
					pointHoverRadius : 5,
					pointHoverBackgroundColor : "rgba(2,117,216,1)",
					pointHitRadius : 20,
					pointBorderWidth : 2,
					data : [ 10, 10, 10, 10, 10, 10,10, ${allcount} ],
				} ],
			},
			options : {
				scales : {
					xAxes : [ {
						time : {
							unit : 'date'
						},
						gridLines : {
							display : false
						},
						ticks : {
							maxTicksLimit : 7
						}
					} ],
					yAxes : [ {
						ticks : {
							min : 0,
							max : ${allcount},
							maxTicksLimit : 5
						},
						gridLines : {
							color : "rgba(0, 0, 0, .125)",
						}
					} ],
				},
				legend : {
					display : false
				}
			}
		});
		//-- city
		var ctx = document.getElementById("myBarChart");
		var myLineChart = new Chart(ctx, {
			type : 'bar',
			data : {
				labels : [ "서울", "인천", "수원", "대전", "대구",
						"일산","부산","기타" ],
				datasets : [ {
					label : "Revenue",
					backgroundColor : "rgba(2,117,216,1)",
					borderColor : "rgba(2,117,216,1)",
					data : [ ${seoul},${incheon}, ${suwon}, ${daejeon}, ${daejeon}, ${daegu},${ilsan},${busan},0 ],
				} ],
			},
			options : {
				scales : {
					xAxes : [ {
						time : {
							unit : 'month'
						},
						gridLines : {
							display : false
						},
						ticks : {
							maxTicksLimit : 6
						}
					} ],
					yAxes : [ {
						ticks : {
							min : 0,
							max : ${allcount},
							maxTicksLimit : 5
						},
						gridLines : {
							display : true
						}
					} ],
				},
				legend : {
					display : false
				}
			}
		});
		//-- favor
		var ctx = document.getElementById("myPieChart");
		var myPieChart = new Chart(ctx, {
			type : 'pie',
			data : {
				
				labels : [ "영화", "스포츠", "패션", "뷰티", "여행", "음악", "댄스", "음식" ],
				datasets : [ {
					data : [ ${movie},${sport},${fashion},${beauty},${travel},${music},${dance},${food} ],
					backgroundColor : [ '#007bff', '#dc3545', '#ffc107',
							'#FF5E00', '#28a745', '#0100FF', '#5F00FF',
							'#FF007F' ],
				} ],
			},
		});
 		// -- Gender
 		
		var ctx = document.getElementById("myPieChart1");
		var myPieChart = new Chart(ctx, {
			type : 'pie',
			data : {
				
				labels : [ "Man", "Girl" ],
				datasets : [ {
					data : [ ${gender1},${gender2} ],
					backgroundColor : [ '#007bff', '#dc3545', '#ffc107',
							'#28a745', '#28a745', '#28a745', '#28a745',
							'#28a745' ],
				} ],
			},
		});
		//-- age
		var ctx = document.getElementById("myBarChart1");
		var myLineChart = new Chart(ctx, {
			type : 'bar',
			data : {
				labels : [ "10s/Man", "10s/Girl", "20s/Man", "20s/Girl", "30s/Man",
						"30s/Girl","40s/Man","40s/Girl","Other" ],
				datasets : [ {
					label : "Revenue",
					backgroundColor : "rgba(2,117,216,1)",
					borderColor : "rgba(2,117,216,1)",
					data : [ ${man1}, ${girl1}, ${man2}, ${girl2}, ${man3}, ${girl3},
						 ${man4}, ${girl4},${others} ],
				} ],
			},
			options : {
				scales : {
					xAxes : [ {
						time : {
							unit : 'month'
						},
						gridLines : {
							display : false
						},
						ticks : {
							maxTicksLimit : 6
						}
					} ],
					yAxes : [ {
						ticks : {
							min : 0,
							max : ${allcount},
							maxTicksLimit : 5
						},
						gridLines : {
							display : true
						}
					} ],
				},
				legend : {
					display : false
				}
			}
		});
	}
</script>
</head>
<body onload="chart()" class="fixed-nav sticky-footer bg-dark"
	id="page-top">
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
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown"
					href="#" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fa fa-fw fa-envelope"></i> <span
						class="d-lg-none">Messages <span
							class="badge badge-pill badge-primary">12 New</span>
					</span> <span class="indicator text-primary d-none d-lg-block"> <i
							class="fa fa-fw fa-circle"></i>
					</span>
				</a>
					<div class="dropdown-menu" aria-labelledby="messagesDropdown">
						<h6 class="dropdown-header">New Messages:</h6>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"> <strong>David
								Miller</strong> <span class="small float-right text-muted">11:21
								AM</span>
							<div class="dropdown-message small">Hey there! This new
								version of SB Admin is pretty awesome! These messages clip off
								when they reach the end of the box so they don't overflow over
								to the sides!</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"> <strong>Jane Smith</strong>
							<span class="small float-right text-muted">11:21 AM</span>
							<div class="dropdown-message small">I was wondering if you
								could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"> <strong>John Doe</strong> <span
							class="small float-right text-muted">11:21 AM</span>
							<div class="dropdown-message small">I've sent the final
								files over to you for review. When you're able to sign off of
								them let me know and we can discuss distribution.</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item small" href="#">View all messages</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown"
					href="#" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fa fa-fw fa-bell"></i> <span
						class="d-lg-none">Alerts <span
							class="badge badge-pill badge-warning">6 New</span>
					</span> <span class="indicator text-warning d-none d-lg-block"> <i
							class="fa fa-fw fa-circle"></i>
					</span>
				</a>
					<div class="dropdown-menu" aria-labelledby="alertsDropdown">
						<h6 class="dropdown-header">New Alerts:</h6>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"> <span class="text-success">
								<strong> <i class="fa fa-long-arrow-up fa-fw"></i>Status
									Update
							</strong>
						</span> <span class="small float-right text-muted">11:21 AM</span>
							<div class="dropdown-message small">This is an automated
								server response message. All systems are online.</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"> <span class="text-danger">
								<strong> <i class="fa fa-long-arrow-down fa-fw"></i>Status
									Update
							</strong>
						</span> <span class="small float-right text-muted">11:21 AM</span>
							<div class="dropdown-message small">This is an automated
								server response message. All systems are online.</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"> <span class="text-success">
								<strong> <i class="fa fa-long-arrow-up fa-fw"></i>Status
									Update
							</strong>
						</span> <span class="small float-right text-muted">11:21 AM</span>
							<div class="dropdown-message small">This is an automated
								server response message. All systems are online.</div>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item small" href="#">View all alerts</a>
					</div></li>
				<li class="nav-item">
					<form class="form-inline my-2 my-lg-0 mr-lg-2">
						<div class="input-group">
							<input class="form-control" type="text"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-primary" type="button">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div>
					</form>
				</li>
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
				<li class="breadcrumb-item"><a href="#">Data</a></li>
				<li class="breadcrumb-item active">User</li>
			</ol>
			<!-- Area Chart Example-->
			<div class="card mb-3">
				<div class="card-header">
					<i class="fa fa-area-chart"></i>User <select>
						<option>All</option>
						<option>Man</option>
						<option>Girl</option>
					</select>
					<button type="submit">Search</button>

				</div>
				<div class="card-body">
					<canvas id="myAreaChart" width="100%" height="30"></canvas>
				</div>

			</div>
			<div class="row">
				<div class="col-lg-8">
					<!-- Example Bar Chart Card-->
					<div class="card mb-3">
						<div class="card-header">
							<i class="fa fa-bar-chart"></i>Citys

						</div>
						<div class="card-body">
							<canvas id="myBarChart" width="100" height="50"></canvas>
						</div>

					</div>
				</div>
				<div class="col-lg-4">
					<!-- Example Pie Chart Card-->
					<div class="card mb-3">
						<div class="card-header">
							<i class="fa fa-pie-chart"></i>Favor
						</div>
						<div class="card-body">
							<canvas id="myPieChart" width="100%" height="100"></canvas>

						</div>

					</div>
				</div>
			</div>


			<div class="row">
				<div class="col-lg-8">
					<!-- Example Bar Chart Card-->
					<div class="card mb-3">
						<div class="card-header">
							<i class="fa fa-bar-chart"></i>Age

						</div>
						<div class="card-body">
							<canvas id="myBarChart1" width="100" height="50"></canvas>
						</div>

					</div>
				</div>
				<div class="col-lg-4">
					<!-- Example Pie Chart Card-->
					<div class="card mb-3">
						<div class="card-header">
							<i class="fa fa-pie-chart"></i>Gender
						</div>
						<div class="card-body">
							<canvas id="myPieChart1" width="100%" height="100"></canvas>

						</div>

					</div>
				</div>
			</div>

		</div>
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
		<!-- Page level plugin JavaScript-->
		<script src="assets_admin/vendor/chart.js/Chart.min.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="assets_admin/js/sb-admin.min.js"></script>
		<!-- Custom scripts for this page-->

	</div>
</body>

</html>
