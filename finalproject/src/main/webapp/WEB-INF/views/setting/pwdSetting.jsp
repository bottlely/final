<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets_setting/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets_setting/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>MARS</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets_setting/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets_setting/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="assets_setting/css/paper-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets_setting/css/demo.css" rel="stylesheet" />

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="assets_setting/css/themify-icons.css" rel="stylesheet">

</head>

<script>
function checkPwd(){
	var pwd = document.getElementById("pwd").value;
	var pwdCheck = document.getElementById("pwdCheck").value;
	var btn_ok = document.getElementById("btn_ok");
	
	if(pwd!=pwdCheck){
		document.getElementById("pwsame").innerHTML = '비밀번호가 일치하지 않습니다.';
		btn_ok.disabled='disabled';
	}else{
		document.getElementById("pwsame").innerHTML = '비밀번호가 일치합니다.';
		btn_ok.disabled=false;
	}
}
</script>
<body>

<div class="wrapper">
	<div class="sidebar" data-background-color="white" data-active-color="danger">

    <!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="main.do?idx=${sessionScope.useridx}" class="simple-text">
                    MARS
                </a>
            </div>

            <ul class="nav">
                <li>
                   <a href="infoSetting.do?idx=${sessionScope.useridx}">
                        <i class="ti-user"></i>
                        <p>Setting</p>
                    </a>
                </li>
                <li class="active">
                     <a href="pwdSetting.do">
                        <i class="ti-panel"></i>
                        <p>Password Setting</p>
                    </a>
                </li>
                <li>
                    <a href="friendSetting.do?idx=${sessionScope.useridx}">
                        <i class="ti-view-list-alt"></i>
                        <p>Friends Setting</p>
                    </a>
                </li>
                <li>
                    <a href="serviceCenter.do?idx=${sessionScope.useridx}">
                        <i class="ti-text"></i>
                        <p>Service Center</p>
                    </a>
                </li>
                <li>
                    <a href="leaveMars.do">
                        <i class="ti-pencil-alt2"></i>
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
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">PasswordSetting</a>
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
	<form name="pwdSetting" action="pwdSetting.do" method="post">
	<input type="hidden" name="idx" value=${sessionScope.useridx }>
		<table>
			<tr>
				<th>현재 비밀번호</th>
				<td>&emsp;<input type="password" name="cur_pwd"></td>
			</tr>
			<tr>
				<th>새 비밀번호</th>
				<td>&emsp;<input type="password" id="pwd" name="ch_pwd" onkeyup="checkPwd()"></td>
			</tr>
			<tr>
				<th>새 비밀번호 재입력</th>
				<td>&emsp;<input type="password" id="pwdCheck" onkeyup="checkPwd()"></td>
			</tr>
			<tr>
				<td colspan="2" align="center" id="pwsame"></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="수정하기" id="btn_ok" disabled="disabled"  class="btn btn-default">   <input type="reset" value="다시 작성"  class="btn btn-default"></td>
			</tr>
		</table>
	</form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
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
