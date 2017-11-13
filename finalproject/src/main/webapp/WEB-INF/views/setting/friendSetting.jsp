<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="list" value="${list }"></c:set>
<c:set var="g_list" value="${g_list }"></c:set>
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets_setting/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="assets_setting//img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>MARS</title>
<style>
.mask {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 9999;
	background-color: #000;
	display: none;
}
.window {
	position: absolute;
	display: none;
	background-color: #ffffff;
	text-align:center;
	width:50px;
	height:50px;
	z-index: 99999;
}

</style>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="assets_setting/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="assets_setting/css/animate.min.css" rel="stylesheet" />

<!--  Paper Dashboard core CSS    -->
<link href="assets_setting/css/paper-dashboard.css" rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="assets/css/demo.css" rel="stylesheet" />


<!--  Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link href="assets_setting/css/themify-icons.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <script type="text/javascript" src="js/httpRequest.js"></script>
<script>


</script>
<script>
	var m_idx;
	function addGroupForm() {
		window.open('addGroupForm.do?idx=${sessionScope.useridx}', 'addGroupForm', 'width=400, height=800');
	}
	
	function groupMember(idx){
		m_idx=idx;
		sendRequest('groupMember.do?idx='+idx, null, memberList, 'GET');
	}
	
	function memberList(){
		if(XHR.readyState==4){
			if(XHR.status==200){
				var data = XHR.responseText;
				var lists = eval('('+data+')');
				var parent = document.getElementById('group_name_'+m_idx);
				
				if(lists.memberList.length==0){
					var ul = document.createElement("ul");
					var li = document.createElement("li");
					li.innerHTML = '그룹에 해당하는 사람이 없습니다.';
					parent.append(ul);
					ul.appendChild(li);
					
				}else{
					for(var i=0; i<lists.memberList.length; i++){
						var ul = document.createElement("ul");
						var li = document.createElement("li");
						var l = lists.memberList[i];
						li.innerHTML = l.name;
						parent.appendChild(ul);
						ul.appendChild(li);
						
					}
				}
			}
		}
	}
	
 	function updateGroup(group_idx){
 		window.alert(group_idx);
 	}
 	
 	
	
</script>
<script type="text/javascript">
//moreicon function
function wrapWindowByMask(){
    var maskHeight = $(document).height();
    var maskWidth = $(window).width();

    $('.mask').css({'width':maskWidth,'height':maskHeight});

    $('.mask').fadeTo("fast",0.3);

    var left = ( $(window).scrollLeft() + ( $(window).width() - $('.window').width()) / 3 );
    var top = ( $(window).scrollTop() + ( $(window).height() - $('.window').height()) / 3 );

    $('.window').css({'left':left,'top':top, 'position':'absolute'});

    $('.window').show();
}

$(document).ready(function(){
    $('.showMask').click(function(e){
        e.preventDefault();
        wrapWindowByMask();
    });

    $('.window .close').click(function (e) {
        e.preventDefault();
        $('.mask, .window').hide();
    });

    $('.mask').click(function () {
        $(this).hide();
        $('.window').hide();
    });
});
</script>

</head>
<body>

	<div class="wrapper">
		<div class="sidebar" data-background-color="white"
			data-active-color="danger">

			<!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="infoSetting.do?idx=${sessionScope.useridx}" class="simple-text"> MARS </a>
				</div>

				<ul class="nav">
					<li><a href="infoSetting.do?idx=${sessionScope.useridx}"> <i class="ti-user"></i>
							<p>Setting</p>
					</a></li>
					<li><a href="pwdSetting.do"> <i class="ti-panel"></i>
							<p>Password Setting</p>
					</a></li>
					<li class="active"><a href="friendSetting.do?idx=${sessionScope.useridx}"> <i
							class="ti-view-list-alt"></i>
							<p>Friends Setting</p>
					</a></li>
					<li><a href="serviceCenter.do?idx=${sessionScope.useridx}">
							<i class="ti-text"></i>
							<p>Service Center</p>
					</a></li>
					<li><a href="leaveMars.do"> <i class="ti-pencil-alt2"></i>
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
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar bar1"></span> <span class="icon-bar bar2"></span>
							<span class="icon-bar bar3"></span>
						</button>
						<a class="navbar-brand" href="#">FriendSetting</a>
					</div>
					<div class="collapse navbar-collapse"></div>
				</div>
			</nav>


			<div class="content">
				<div class="container-fluid">

					<div class="row">

						<div class="col-md-12">
							<div class="card">

								<div class="content">
									<hr>
									<!--친구목록  -->
									<p align="right">
										<input type="button" value="+" onclick="addGroupForm()">
									</p>
									<ul>
										<c:if test="${empty g_list }">
											<li>생성된 그룹이 없습니다.</li>
										</c:if>
										<c:forEach var="g_list" items="${g_list }">
										<li id="group_name_${g_list.idx }"><a href="javascript:groupMember(${g_list.idx})">${g_list.group_name } </a>
		<span class="dropdown">
 		 <a data-toggle="dropdown">
 		 <i class="fa fa-ellipsis-h"></i>
 		 <span class="caret"></span></a>
 			 <ul class="dropdown-menu">
   			  <li><a href="javascript:updateGroup(${g_list.idx })">수정</a></li>
   			 <li><a href="deleteGroup.do?idx_ff=${g_list.idx }&idx=${sessionScope.useridx}">삭제</a></li>
   			 </ul></span>
 							
										<input type="hidden" id="idx" value="${g_list.idx }">
										</li>
										</c:forEach>
									</ul>
									<hr>
									<ul>
										<c:if test="${empty list }">
											<li>친구가 없습니다.</li>
										</c:if>

										<c:forEach var="list" items="${list }">
											<li>${list.name}</li>
										</c:forEach>

									</ul>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			
			<div class="mask"></div>
    		<div class="window">
       			<table align="center">
       			<tr><td><a href="#">수정</a></td></tr>
       			<tr><td><a href="#">삭제</a></td></tr>
       			</table>
       		</div>	

			<footer class="footer">
				<div class="container-fluid">

					<div class="copyright pull-right">
						&copy;
						<script>
							document.write(new Date().getFullYear())
						</script>
						by <a href="#">MARS</a>
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
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js"></script>

<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
<script src="assets_setting/js/paper-dashboard.js"></script>

<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
<script src="assets_setting/js/demo.js"></script>



</html>
