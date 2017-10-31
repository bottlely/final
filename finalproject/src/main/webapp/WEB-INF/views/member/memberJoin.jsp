<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title>MARS memberJoin</title>

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

<body>







	<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">회원가입</div>
        <div class="col-md-3"></div>
        
        <div class="col-md-8">
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
        <div class="col-md-3"></div>
        <div class="col-md-6"></div>
        <div class="col-md-3"></div>
    </div>
</div>



</body>
</html>