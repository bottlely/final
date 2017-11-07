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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
[data-sr] {
	visibility: hidden;
}

#home {
	background-image: url("assets_index/images/indeximage3.jpg");
}

#div1 {
	display:none;
}
</style>

<script>


$(document).ready(function(){
    $("#show").click(function(){
        $("#div1").fadeIn();
    });
    $("#hide").click(function(){
        $("#div1").hide();
    });
});


function idCheck() {
		var id = 'id='+document.join.id.value;
		sendRequest('idCheck.do',id,showResult,'GET');
		
	}
	
	
	function showResult() {
		if(XHR.readyState == 4) {
			if(XHR.status == 200) {
				var data = XHR.responseText;
				alert(data);
			}
		}
	}


</script>

</head>
<body>

	<!--/HEADER SECTION -->
	<header class="header">
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
							<li><a data-scroll href="#login">Login</a></li>
							<li><a href="joinForm.do">Sign Up</a></li>
							<li><a data-scroll href="#about-us">About</a></li>
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
	<section id="contact" style="margin-top:100px;">
		<div class="container">
			
			
			<div class="row">
				<div class="col-sm-12 text-center">
					<h1 class="section-title">Sign Up</h1>

					<p class="sec-subtitle" id="contact1">MARS</p>
				</div>
				<div class="col-sm-2" data-sr="enter left, hustle 80px">

				</div>
				<div class="col-sm-8" data-sr="enter right, hustle 80px">
					<form name="join" class="st-form" action="ecForm.do" method="post">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group ">
									<input type="text" class="form-control" placeholder="YOUR NAME or COMPANY NAME"
										name="name" required>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group ">
									<input type="email" class="form-control"
										placeholder="YOUR E-MAIL" name="id" id="checkaa" oninput="idCheck()" required>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group ">
									<input type="password" class="form-control"
										placeholder="YOUR PASSWORD" name="pwd" required>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group ">
									<input type="password" class="form-control"
										placeholder="COFIRM YOUR PASSWORD" name="checkpwd" required>
								</div>
							</div>
						</div>
						<div class="row">							
							<div class="col-sm-6">
								<div class="form-group" style="font-size:18px;">
									<label id="hide"><input type="radio" name="usertype" value="0" checked>개인 회원</label>
									<label id="show"><input type="radio" name="usertype" value="1">기업 회원</label>
								</div>
							</div>
							<div class="col-sm-6" id = "div1">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="REGIST NUMBER" name="company_number">
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-12"
								style="text-align: center; font-size: 18px; color: black;">
								가입하면 Mars의 약관 및 개인정보처리방침에 동의하게 됩니다.
								<button type="submit" id="signupbtn"class="btn btn-send">Sign Up</button>
							</div>
							<div class="col-sm-3"></div>
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