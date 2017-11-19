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
<script type="text/javascript" src="js/httpRequest.js"></script>
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
	
	//이메일 인증 보내기

	function sendEmail() {
		var id = 'id=' + document.fm.id.value;
		window.alert('서버 사정에 따라 몇 분이 소요될 수 있습니다.');
		window.alert(id);
		sendRequest('pwdSend.do', id, showResult, 'GET');
	}

	function showResult() {
		if (XHR.readyState == 4) {
			if (XHR.status == 200) {
				window.alert('메일발송 성공');
				location.href='index.do';
			} else {
				window.alert('메일발송 실패');
			}
		}
	}

</script>
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
					<p>가입하신 이메일 주소로 비밀번호를 보내드립니다.</p>
				</div>
				<div class="col-sm-2" data-sr="enter left, hustle 80px"></div>
				<div class="col-sm-8" data-sr="enter right, hustle 80px">
					<form name="fm">
						<div class="row">
							<div class="col-sm-2"></div>
							<div class="col-sm-4">
								<input type="email" class="form-control" placeholder="가입한 이메일 입력"
									name="id">
							</div>
							<div class="col-sm-4">
								<button type="button" class="btn btn-send" onclick="sendEmail()">인증메일 전송</button>
							</div>
							<div class="col-sm-2"></div>
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