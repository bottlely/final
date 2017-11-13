<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="dto" value="${dto }"></c:set>
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets_setting/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="assets_setting/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>MARS</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="assets_setting/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="assets_setting/css/animate.min.css" rel="stylesheet" />

<!--  Paper Dashboard core CSS    -->
<link href="assets_setting/css/paper-dashboard.css" rel="stylesheet" />

<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="assets_setting/css/demo.css" rel="stylesheet" />

<!--  Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link href="assets_setting/css/themify-icons.css" rel="stylesheet">
<script>
 function checkOne(gender){
 	var chk = document.getElementsByName("gender");
 	  for(var i=0; i<chk.length; i++){
 	        if(chk[i] != gender){
 	        	chk[i].checked = false;
 	        }
 	    }
 
 }
 </script>
</head>
<body>

	<div class="wrapper">
		<div class="sidebar" data-background-color="white"
			data-active-color="danger">

			<!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="infoSetting.do?idx=${sessionScope.useridx}" class="simple-text"> MARS </a>
				</div>

				<ul class="nav">
					<li class="active"><a href="infoSetting.do?idx=${sessionScope.useridx}"> <i
							class="ti-user"></i>
							<p>Setting</p>
					</a></li>
					<li><a href="pwdSetting.do"> <i class="ti-panel"></i>
							<p>Password Setting</p>
					</a></li>
					<li><a href="friendSetting.do?idx=${sessionScope.useridx}"> <i
							class="ti-view-list-alt"></i>
							<p>Friends Setting</p>
					</a></li>
					<li> <a href="serviceCenter.do?idx=${sessionScope.useridx}"><i class="ti-text"></i>
							<p>Service Center</p>
					</a></li>
					<li><a href="leaveMars.do"> <i class="ti-pencil-alt2"></i>
							<p>Leave</p>
					</a>
				</ul>
			</div>
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar bar1"></span> <span class="icon-bar bar2"></span>
							<span class="icon-bar bar3"></span>
						</button>
						<a class="navbar-brand" href="#">Setting</a>
					</div>
					<div class="collapse navbar-collapse"></div>
				</div>
			</nav>


			<div class="content">
				<div class="container-fluid">

					<div class="row">

						<div class="col-md-12">
							<div class="card">

								<div class="content">

									<hr>
									<c:if test="${empty sessionScope.useridx }">
										<p>잘못된 접근입니다.</p>
									</c:if>
									<form name="infoSetting" action="infoSetting.do" method="post">
										<input type="hidden" name="idx" value="${dto.idx }">
										<table>
											<tr>
												<th>Name</th>
												<td><input type="text" name="name" value="${dto.name}"></td>
											</tr>
											<tr>
												<th>E-Mail
												<td><input type="text" name="id" value="${dto.id}"></td>
											</tr>
											<tr>
												<th>Gender</th>
												<td><input type="checkbox" name="gender" value="1"
													onclick="checkOne(this);" ${dto.gender==1? 'checked':'' }>Man
													<input type="checkbox" name="gender" value="2"
													onclick="checkOne(this);" ${dto.gender==2? 'checked':''}>Woman
												</td>
											</tr>
											<tr>
												<th>Birth</th>
												<td><input type="text" name="birth_y"
													value="${dto.birth_y}"> - <input type="text"
													name="birth_m" value="${dto.birth_m}"> - <input
													type="text" name="birth_d" value="${dto.birth_d}"></td>
											</tr>
											<tr>
												<th>Tel</th>
												<td><input type="text" name="tel" value="${dto.tel }"></td>
											</tr>
										</table>
										<h1>추가설정</h1>
										<hr>
										<table>
											<tr>
												<th>City</th>
												<td><select name="city" id="city">
														<option value="seoul"
															${dto.city eq 'Seoul'?'selected':'' }>Seoul</option>
														<option value="Incheon"
															${dto.city eq 'Incheon'?'selected':'' }>Incheon</option>
														<option value="Suwon"
															${dto.city eq 'Suwon'?'selected':'' }>Suwon</option>
														<option value="Ilsan" ${dto.city eq 'Ilsan'?'selected':''}>Ilsan</option>
														<option value="Daegu"
															${dto.city eq 'Daegu'?'selected':'' }>Daegu</option>
														<option value="Daejeon"
															${dto.city eq 'Daejeon'?'selected':''}>Daejeon</option>
														<option value="Busan"
															${dto.city eq 'Busan'?'selected':'' }>Busan</option>
												</select></td>
											</tr>
											<tr>
												<th>Favor</th>
												<td><input type="checkbox" name="favorite_movie"
													value="1" ${dto.favorite_movie==1? 'checked':''}>Movie
													<input type="checkbox" name="favorite_sport" value="1"
													${dto.favorite_sport==1? 'checked':''}>Sport <input
													type="checkbox" name="favorite_fashion" value="1"
													${dto.favorite_fashion==1? 'checked':''}>Fashion <input
													type="checkbox" name="favorite_beauty" value="1"
													${dto.favorite_beauty==1? 'checked':''}>Beauty <input
													type="checkbox" name="favorite_travel" value="1"
													${dto.favorite_travel==1? 'checked':''}>Travel <input
													type="checkbox" name="favorite_musin" value="1"
													${dto.favorite_music==1? 'checked':''}>Music <input
													type="checkbox" name="favorite_dance" value="1"
													${dto.favorite_dance==1? 'checked':''}>Dance <input
													type="checkbox" name="favorite_food" value="1"
													${dto.favorite_food==1? 'checked':''}>Food</td>
											</tr>
										</table>
										<p>
											<input type="submit" value="수정">
										</p>
									</form>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>


			<footer class="footer">
				<div class="container-fluid">

					<div class="copyright pull-right">
						&copy;
						<script>
							document.write(new Date().getFullYear())
						</script>
						by <a href="#">MARS</a>
					</div>
				</div>
			</footer>

		</div>
	</div>


</body>

<!--   Core JS Files   -->
<script src="assets_setting/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets_setting/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="assets_setting/js/bootstrap-checkbox-radio.js"></script>

<!--  Charts Plugin -->
<script src="assets_setting/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="assets_setting/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js"></script>

<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
<script src="assets_setting/js/paper-dashboard.js"></script>

<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
<script src="assets_setting/js/demo.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		demo.initChartist();

		$.notify({
			icon : 'ti-gift',
			message : "Mars에 오신것을 환영합니다!."

		}, {
			type : 'success',
			timer : 4000
		});

	});
</script>

</html>
