<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Friend List</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets_main_fr/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script> 
		$(document).ready(function(){
  		  $("#follower").click(function(){
  			$("#following1").fadeOut();
    	    $("#follower1").slideToggle();
  		  });
		});
		
		$(document).ready(function(){
	  		  $("#following").click(function(){
	  			$("#follower1").fadeOut();
	    	    $("#following1").slideToggle();
	  		  });
			});
		
		$(document).ready(function(){
	  		  $("#black").click(function(){
	    	    $("#black1").slideToggle();
	  		  });
			});
		</script>
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<h1><a href="#">Follow & Black</a></h1>

					</header>

				<!-- Menu -->
					<section id="menu">



						<!-- 지우면안나옴-->
							<section>
								<ul class="actions vertical">
									<li><a href="#" class="button big fit">Log In</a></li>
								</ul>
							</section>

					</section>



			
						<!-- Intro -->
							<section id="intro">
							
								<header>
								<div style="float: left;">
								<h3>Follower</h3>
								<h3><a href="#intro" id="follower">200000</a></h3>
								</div>
								
								<div style="float: right;">
								<h3>Following</h3>
								<h3><a href="#intro" id="following">120</a></h3>
								</div>
								</header>
								
								
							</section>

						<!-- Search -->
							<section>
						<div>
						
									<form id="search" method="get" action="#">
										<input type="text" name="query" placeholder="Search" />
									</form>
							
						</div>
						</section>
						
						
						<!-- follower -->
							<section id="follower1" style="display: none;">
								<ul class="posts">
									<li>
										<article>
											<header>
												<h3><a href="#">강호동</a></h3>
												<time class="published" datetime="2015-10-20">October 20, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic08.jpg" alt=""  style="border-radius: 50%"></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">이승기</a></h3>
												<time class="published" datetime="2015-10-15">October 15, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic09.jpg" alt="" style="border-radius: 50%"></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">이수근</a></h3>
												<time class="published" datetime="2015-10-10">October 10, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic10.jpg" alt="" style="border-radius: 50%"></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">김종민</a></h3>
												<time class="published" datetime="2015-10-08">October 8, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic11.jpg" alt="" style="border-radius: 50%"></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">유재석</a></h3>
												<time class="published" datetime="2015-10-06">October 7, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic12.jpg" alt="" style="border-radius: 50%"></a>
										</article>
									</li>
								</ul>
							</section>
							
							<!-- following -->
							<section id="following1" style="display: none;">
								<ul class="posts">
									<li>
										<article>
											<header>
												<h3><a href="#">태연</a></h3>
												<time class="published" datetime="2015-10-20">October 20, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic08.jpg" alt=""  style="border-radius: 50%"></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">윤아</a></h3>
												<time class="published" datetime="2015-10-15">October 15, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic09.jpg" alt="" style="border-radius: 50%"></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">써니</a></h3>
												<time class="published" datetime="2015-10-10">October 10, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic10.jpg" alt="" style="border-radius: 50%"></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">수영</a></h3>
												<time class="published" datetime="2015-10-08">October 8, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic11.jpg" alt="" style="border-radius: 50%"></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">선미</a></h3>
												<time class="published" datetime="2015-10-06">October 7, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic12.jpg" alt="" style="border-radius: 50%"></a>
										</article>
									</li>
								</ul>
							</section>
												<!-- Pagination -->
							<ul class="actions pagination">
								<li><a href="" class="disabled button big previous">Previous Page</a></li>
								<li><a href="#" class="button big next">Next Page</a></li>
							</ul>
							
							<section>
							<input type="button" value="차단목록" id="black">
							<br>
							</section>
							<hr>
							<section id="black1" style="display: none;">
								<ul class="posts">
									<li>
										<article>
											<header>
												<h3><a href="#">양진모</a></h3>
												<time class="published" datetime="2015-10-20">October 20, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic08.jpg" alt="" style="border-radius: 50%"></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">곽은지</a></h3>
												<time class="published" datetime="2015-10-15">October 15, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic09.jpg" alt="" style="border-radius: 50%"></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">오현경</a></h3>
												<time class="published" datetime="2015-10-10">October 10, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic10.jpg" alt="" style="border-radius: 50%"></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">박연수</a></h3>
												<time class="published" datetime="2015-10-08">October 8, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic11.jpg" alt="" style="border-radius: 50%"></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">정다운</a></h3>
												<time class="published" datetime="2015-10-06">October 7, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic12.jpg" alt="" style="border-radius: 50%"></a>
										</article>
									</li>
								</ul>
							</section>



			</div>

		<!-- Scripts -->
			<script src="assets_main_fr/js/jquery.min.js"></script>
			<script src="assets_main_fr/assets/js/skel.min.js"></script>
			<script src="assets_main_fr/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets_main_fr/assets/js/main.js"></script>


	</body>
</html>