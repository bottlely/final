<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets_setting/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets_setting//img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>MARS</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href=assets_setting/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets_setting/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="assets_setting/css/paper-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
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
    <div class="sidebar" data-background-color="white" data-active-color="danger">

    <!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="infoSetting.do" class="simple-text">
                    MARS
                </a>
            </div>

            <ul class="nav">
                <li >
                    <a href="infoSetting.do">
                        <i class="ti-panel"></i>
                        <p>Setting</p>
                    </a>
                </li>
                <li>
                    <a href="pwdSetting.do">
                        <i class="ti-user"></i>
                        <p>Password Setting</p>
                    </a>
                </li>
                <li class="active">
                    <a href="friendSetting.do">
                        <i class="ti-view-list-alt"></i>
                        <p>Friends Setting</p>
                    </a>
                </li>
                <li>
                    <a href="serviceCenter.do">
                        <i class="ti-text"></i>
                        <p>Service Center</p>
                    </a>
                </li>
                <li>
                    <a href="leaveMars.do">
                        <i class="ti-pencil-alt2"></i>
                        <p>Leave</p>
                    </a>
                </li>

            </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">FriendSetting</a>
                </div>
                <div class="collapse navbar-collapse">
                    

                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">

                <div class="row">

                    <div class="col-md-12">
                        <div class="card">

                            <div class="content">

	<hr>
	
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>


        <footer class="footer">
            <div class="container-fluid">

                <div class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> by <a href="#">MARS</a>
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
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="assets_setting/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="assets_setting/js/demo.js"></script>



</html>
