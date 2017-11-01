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
<style>
[data-sr] {
	visibility: hidden;
}

#home {
	background-image: url("assets_index/images/indeximage3.jpg");
}
</style>
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

	<!--/SLIDER SECTION -->
	<section id="home" class="sliderwrapper clearfix">

		<div class="home-overlay"></div>

		<div class="container">
			<div class="row text-center">
				<div class="col-md-8 col-md-offset-2">
					<div class="block">
						<h1 class="home-title wow fadeInDown">
							Welcome to <span class=element></span>
						</h1>

						<p class="title-small wow fadeInDown" data-wow-delay="0.3s">My
							Spaces</p>

						<div class="wow fadeInDown" data-wow-delay="0.3s">
							<a class="btn btn-action" href="#login">&nbsp;Login&nbsp;
							</a> <a class="btn btn-action" href="#contact">Sign Up
							</a>
						</div>
					</div>
				</div>
				<!-- .row close -->
			</div>
		</div>

	</section>
	<!-- end Home -->


	<section id="about-us">
		<div class="container">
			<div class="row ">
				<div class="col-sm-12 text-center">
					<h2 class="section-title">About MARS</h2>

					<p class="sec-subtitle">MARS는 sns이다</p>
				</div>
				<div class="col-sm-6">
					<p>쉽고.</p>
				</div>
				<div class="col-sm-6">
					<p>간단하게.</p>
				</div>
				<div class="col-sm-12 text-center"></div>
			</div>
		</div>
	</section>





	<!--Contact-->
	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 text-center">
					<h1 class="section-title">Sign Up</h1>

					<p class="sec-subtitle" id="contact1">MARS</p>
				</div>
				<div class="col-sm-2" data-sr="enter left, hustle 80px">

				</div>
				<div class="col-sm-8" data-sr="enter right, hustle 80px">
					<form class="st-form" action="join.do">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group ">
									<input type="text" class="form-control" placeholder="YOUR NAME"
										name="name">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group ">
									<input type="email" class="form-control"
										placeholder="YOUR E-MAIL" name="id">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group ">
									<input type="password" class="form-control"
										placeholder="YOUR PASSWORD" name="pwd">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group ">
									<input type="password" class="form-control"
										placeholder="COFIRM YOUR PASSWORD" name="checkpwd">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-6"
								style="text-align: center; font-size: 20px; color: black;">
								가입하면 Mars의 약관 및 개인정보처리방침에 동의하게 됩니다.
								<button type="submit" class="btn btn-send">Sign Up</button>
							</div>
							<div class="col-sm-3"></div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<hr>
	<section id="login">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 text-center">
					<h1 class="section-title">Login</h1>

					<p class="sec-subtitle" id="login1">MARS</p>
				</div>
				<div class="col-sm-4" data-sr="enter left, hustle 80px">
					<div class="address">
						<p class="address-title title">
							<i class="fa fa-map-marker"></i> Address
						</p>

						<p class="address-content">
							312, 7th Ave, New York <br> NY 101200, United States of
							America
						</p>
					</div>
					<div class="address">
						<p class="address-title title">
							<i class="fa fa-mobile-phone"></i> Hotline (24x7)
						</p>

						<p class="address-content">
							+65 0052 300, +65 88251 210 <br> +88 01723 511 340
						</p>
					</div>
					<div class="address">
						<p class="address-title title">
							<i class="fa fa-envelope-o"></i> E-mail
						</p>

						<p class="address-content">
							shapedtheme@gmail.com <br>hello@shapedtheme.com
						</p>
					</div>
				</div>
				<div class="col-sm-8" data-sr="enter right, hustle 80px">
					<form class="st-form">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group ">
									<input type="email" class="form-control"
										placeholder="YOUR E-MAIL">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group ">
									<input type="text" class="form-control"
										placeholder="YOUR PASSWORD">
								</div>
							</div>

						</div>


						<a href="main.do"><button type="button" class="btn btn-send">Login</button></a>
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