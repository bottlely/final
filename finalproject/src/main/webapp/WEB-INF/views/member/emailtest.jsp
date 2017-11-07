<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MARS</title>

<!--Bootstrap-->
<link rel="stylesheet" href="assets_index/css/bootstrap.min.css"
	type="text/css">
<!--FontAwesome-->
<link rel="stylesheet" href="assets_index/css/font-awesome.min.css"
	type="text/css">
<!--Fonts-->
<link href='https://fonts.googleapis.com/css?family=Montserrat'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,700'
	rel='stylesheet' type='text/css'>
<!--Owl Carousel-->
<link rel="stylesheet" href="assets_index/owl-carousel/owl.carousel.css"
	type="text/css">
<link rel="stylesheet" href="assets_index/owl-carousel/owl.theme.css"
	type="text/css">
<!--<link rel="stylesheet" href="assets/owl-carousel/owl.transitions.css" type="text/css">-->
<!--Main Style-->
<link rel="stylesheet" href="stylecss/style_index.css" type="text/css">

<!--Responsive Style-->
<link rel="stylesheet" href="assets_index/css/responsive.css"
	type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
[data-sr] {
	visibility: hidden;
}

#footer {
	background-image: linear-gradient(to bottom right, #5a00b5, #fc81ac);
}

#div1 {
	display: none;
}
</style>

<script>
	var XHR = null;

	function getXHR() {
		if (window.ActiveXObject) {
			return new ActiveXObject('Msxml1.XMLHTTP');
		} else if (window.XMLHttpRequest) {
			return new XMLHttpRequest();
		} else {
			return null;
		}
	}

	function sendRequest(url, params, callback, method) {

		XHR = getXHR();

		//1.접속방식의 검증
		var httpUrl = url;
		var httpMethod = method ? method : 'GET';
		if (httpMethod != 'GET' && httpMethod != 'POST') { //오타인지 확인하기 위해
			httpMethod = 'GET';
		}

		//2.파라미터 검증
		var httpParams = (params == null || params == '') ? null : params;

		//3.접속방식에 따른 파라미터 처리
		if (httpMethod == 'GET' && httpParams != null) {
			httpUrl = url + '?' + httpParams;
		}

		XHR.onreadystatechange = callback;
		XHR.open(httpMethod, httpUrl, true);
		XHR.setRequestHeader('Content-Type',
				'application/x-www-form-urlencoded');
		XHR.send(httpMethod == 'POST' ? httpParams : null);
	}

	//이메일 인증 보내기

	function sendEmail() {
		var id = 'id=' + document.fm.id.value;
		window.alert('서버 사정에 따라 몇 분이 소요될 수 있습니다.');
		sendRequest('sendEmail.do', id, showResult, 'GET');
	}

	function showResult() {
		if (XHR.readyState == 4) {
			if (XHR.status == 200) {
				window.alert('메일발송 성공');
				window.location.reload();
			} else {
				window.alert('메일발송 실패');
			}
		}
	}

	function checkJoinCode() {
		var joinCode = '${sessionScope.joinCode}';
		var usercode = document.fm.usercode.value;

		if (joinCode == usercode) {
			window.alert('인증코드 확인완료');
		} else {
			window.alert('인증코드가 틀렸습니다. 다시 확인해 주세요.');
		}

	}
</script>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	int usertype = Integer.parseInt(request.getParameter("usertype"));
	int company_number = 0;
	if (request.getParameter("company_number") == null || request.getParameter("company_number") == "") {
		company_number = 0;
	} else {
		company_number = Integer.parseInt(request.getParameter("company_number"));
	}
%>

</head>
<body>

	<!--/HEADER SECTION -->
	<header class="header" style="background: rgba(0,0,0,0.8);">
		<div class="container">
			<div class="navbar navbar-default" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span>

						</button>
						<a class="navbar-brand" href="index.do"><font
							style="color: white;">MARS</font></a>
					</div>
					<!-- end navbar-header -->
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a data-scroll href="index.do">Login</a></li>
							<li><a href="joinForm.do">Sign Up</a></li>
							<li><a data-scroll href="index.do">About</a></li>
							<li><a href="admin.do">admin</a></li>
							<li><a href="myHomeForm.do">MyPage</a></li>
							<li><a href="logout.do">Log-out</a></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
				<!--/.container-fluid -->
			</div>
		</div>
		<!-- end container -->
	</header>
	<!-- end header -->

	<!--Contact-->
	<section id="contact" style="margin-top: 100px;">
		<div class="container">


			<div class="row">
				<div class="col-sm-12 text-center">
					<h1 class="section-title">Emain Confirmation</h1>

					<p class="sec-subtitle" id="contact1">MARS</p>
				</div>
				<div class="col-sm-2" data-sr="enter left, hustle 80px"></div>
				<div class="col-sm-8" data-sr="enter right, hustle 80px">
					<form name="fm" class="st-form" action="join.do" method="post">
						<input type="hidden" name="name" value="<%=name%>"> <input
							type="hidden" name="pwd" value="<%=pwd%>"> <input
							type="hidden" name="usertype" value="<%=usertype%>"> <input
							type="hidden" name="company_number" value="<%=company_number%>">
						<div class="row">
							<div class="col-sm-2"></div>
							<div class="col-sm-4">
								<input type="email" class="form-control" placeholder=""
									name="id" value="<%=id %>" readonly>
							</div>
							<div class="col-sm-4">
								<button type="button" class="btn btn-send" onclick="sendEmail()">인증메일 전송</button>
							</div>
							<div class="col-sm-2"></div>

						</div>
						<hr>
						<div class="row">
							<div class="col-sm-2"></div>
							<div class="col-sm-4">
								<input type="text" class="form-control" placeholder="인증코드"
									name="usercode" required>
							</div>
							<div class="col-sm-4">
								<button type="button" class="btn btn-send" onclick="checkJoinCode()">인증코드 확인</button>
							</div>
							<div class="col-sm-2"></div>
						</div>
						<br>
						<div class="row">
							<div class="col-sm-12" align="center">
								<button type="submit" class="btn btn-send">회원가입 완료</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- / Contact-->
	<!--Footer-->
	<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 text-center"
					data-sr='enter bottom, wait 0.32s'>
					<div class="social">
						<ul class="list-inline">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>

					<p>&copy; 2017 MARS, Designed by Team MARS</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- / Footer-->


	<script src="assets_index/js/jquery-1.11.3.min.js"></script>
	<!--<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>-->
	<!--Sticky -->
	<!--<script type="text/javascript" src="assets/js/jquery.sticky.js"></script>-->
	<script src="assets_index/js/bootstrap.min.js"></script>
	<!--Owl Carousel-->
	<script type="text/javascript"
		src="assets_index/owl-carousel/owl.carousel.min.js"></script>
	<!--Parallax-->
	<script type="text/javascript"
		src="assets_index/js/jquery.stellar.min.js"></script>
	<!--IsoTop-->
	<script type="text/javascript"
		src="assets_index/js/isotope.pkgd.min.js"></script>
	<!--Typed js-->
	<script type="text/javascript" src="assets_index/js/typed.js"></script>
	<!--Smooth Scroll-->
	<script type="text/javascript" src="assets_index/js/smooth-scroll.js"></script>
	<!--Reveal JS-->
	<script type="text/javascript"
		src="assets_index/js/scrollReveal.min.js"></script>

	<!--Main-->
	<script type="text/javascript" src="assets_index/js/main.js"></script>


</body>

</html>