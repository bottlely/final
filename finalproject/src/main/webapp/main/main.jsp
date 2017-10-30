<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>MARS</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
			<script> 

			$(document).ready(function(){
			    $("#friends1").click(function(){
			        var div = $("#friends2");
			        div.animate({height: '100%'}, "slow");
			        div.animate({width: '35%'}, "slow");
			        
			    });
			});
			$(document).ready(function(){
			    $("#mypage1").click(function(){
			        var div = $("#mypage2");
			        div.animate({left: '35%'}, "fast");
			        div.animate({height: '100%'}, "slow");
			        div.animate({width: '65%'}, "slow");
					
			    });
			});
			
			function disInfo() {
				   var e = document.getElementById(i);
				   if(e.style.display==='block')
				      e.style.display = 'none';
				   else
				      e.style.display = 'block';
				 
				}
</script> 
	</head>
	<body>


		<!-- Wrapper -->
		<span style="float: left;">

				<div  id="friends2" style="background:#935d8c;height:0px;width:0px; position: absolute; float: left;">
		<div style="display: none;" id="friends3">닫기</div>
	<iframe src="http://localhost:9090/finalproject/index/index.jsp" width="100%" height="100%" name="ppp" frameborder="0"></iframe>

	</div>
		 </span>
		 <span style="float: right;">

		 	<div  id="mypage2" style="background:#935d8c;height:0px;width:0px; position: absolute; float: right;">
	<div style="display: none;" id="mypage3">닫기</div>
	<iframe src="http://localhost:9090/finalproject/main/main.jsp" width="100%" height="100%" name="ppp" frameborder="0"></iframe>

	</div>
		 
		 </span>
			<div id="wrapper">

				<!-- Header -->
					<header id="header" class="alt">
						<span style="margin-right: 32%;"><button id="friends1">Fr</button> </span><span style="margin-left:32%" ><button id="mypage1">My</button> </span>
						<span class="logo"><img src="images/logo.svg" alt="" /></span>
						<h2>MARS</h2>
					</header>

				<!-- Nav -->
					<nav id="nav">
						
						<ul>
							<li><a href="#first" class="active" data-filter="photo">Photo</a></li>
							<li><a href="#second" data-filter="viedeo">Video</a></li>
							<li><a href="#third" data-filter="text">Text</a></li>
							<li><a href="#four" data-filter="favor">Favor</a></li>
						</ul>
						
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- first Section -->
							<section id="first" class="main">
								<div class="spotlight">

								</div>
							</section>

						<!-- second Section -->
							<section id="second" class="main special">
											<div class="works-area" >
				<div class="col-md-4 col-sm-6 col-xs-12  photo"  >
					<div class="works">
						<img src="images/아이유6.jpg" alt="">

						<div class="work-overlay text-center">
							<div class="overlay-caption">
								<h4>PHOTO</h4>

								<p>제목</p>
								<a class="btn-view" href="#">VIEW <i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12 text" >
					<div class="works">
						<img src="images/아이유6.jpg" alt="">

						<div class="work-overlay text-center">
							<div class="overlay-caption">
								<h4>TEXT</h4>

								<p>제목</p>
								<a class="btn-view" href="#">VIEW <i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12 viedeo" >
					<div class="works">
						<img src="images/아이유6.jpg" alt="">

						<div class="work-overlay text-center">
							<div class="overlay-caption">
								<h4>VIEDEO</h4>

								<p>제목</p>
								<a class="btn-view" href="#">VIEW <i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12 viedeo" >
					<div class="works">
						<img src="images/아이유6.jpg" alt="">

						<div class="work-overlay text-center">
							<div class="overlay-caption">
								<h4>VIEDEO</h4>

								<p>제목</p>
								<a class="btn-view" href="#">VIEW <i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12 viedeo" >
					<div class="works">
						<img src="images/아이유6.jpg" alt="">

						<div class="work-overlay text-center">
							<div class="overlay-caption">
								<h4>VIEDEO</h4>

								<p>제목</p>
								<a class="btn-view" href="#">VIEW <i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div> 
							</section>

						<!-- third Section -->
							<section id="third" class="main special">

							</section>

						<!-- four section -->
							<section id="four" class="main special">

							</section>

					</div>

				<!-- Footer -->
					<footer id="footer">
						<section>
							<h2>MARS</h2>
							<p>MARS</p>
							<ul class="actions">
								<li><a href="generic.html" class="button">Learn More</a></li>
							</ul>
						</section>
						<section>
							<h2>MARS.Info</h2>
							<dl class="alt">
								<dt>Address</dt>
								<dd>1234 Somewhere Road &bull; Nashville, TN 00000 &bull; USA</dd>
								<dt>Phone</dt>
								<dd>(000) 000-0000 x 0000</dd>
								<dt>Email</dt>
								<dd><a href="#">information@untitled.tld</a></dd>
							</dl>
							<ul class="icons">
								<li><a href="#" class="icon fa-twitter alt"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon fa-facebook alt"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon fa-instagram alt"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon fa-github alt"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon fa-dribbble alt"><span class="label">Dribbble</span></a></li>
							</ul>
						</section>
						<p class="copyright">&copy; Untitled. Design: <a href="#">MARS</a>.</p>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>