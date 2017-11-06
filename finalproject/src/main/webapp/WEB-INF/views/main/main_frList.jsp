<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
								<c:set var="follower_list" value="${followerList }" />
								<h3><a href="#intro" id="follower">${follower_list.size() }</a></h3>
								</div>
								
								<div style="float: right;">
								<h3>Following</h3>
								<c:set var="following_list" value="${followingList }" />
								<h3><a href="#intro" id="following">${following_list.size() }</a></h3>
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
								<c:forEach var="follower_list" items="${followerList }">
									<li>
										<article>
											<header>
												<h3><a href="#">${follower_list}</a></h3>
												<time class="published" datetime="2015-10-20">October 20, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic08.jpg" alt=""  style="border-radius: 50%"></a>
										</article>
									</li>
								</c:forEach>
								</ul>
							</section>
							
							<!-- following -->
							<section id="following1" style="display: none;">
								<ul class="posts">
								<c:forEach var="following_list" items="${followingList }">
									<li>
										<article>
											<header>
												<h3><a href="#">${following_list }</a></h3>
												<time class="published" datetime="2015-10-20">October 20, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic08.jpg" alt=""  style="border-radius: 50%"></a>
										</article>
									</li>
								</c:forEach>
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
								<c:forEach var="blackList" items="${blackList }">
									<li>
										<article>
											<header>
												<h3><a href="#">${blackList }</a></h3>
												<time class="published" datetime="2015-10-20">October 20, 2015</time>
											</header>
											<a href="#" class="image"><img src="assets_main_fr/images/pic08.jpg" alt="" style="border-radius: 50%"></a>
										</article>
									</li>
								</c:forEach>
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