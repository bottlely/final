<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-3.2.1.js" type="text/javascript"></script>

<style>
.moreicon {
	text-align: center;
}

.mask,
.mask2,
.mask3 {
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
	width: 200px;
	height: 150px;
	z-index: 99999;
}

.uploadui {
	position: absolute;
	display: none;
	width: 200px;
	height: 150px;
	z-index: 99999;
	background-color: rgba( 255, 255, 255, 0 );
}

.uploadui img{
	cursor: pointer;
}

.contentDiv {
	position: absolute;
	display: none;
	width: 30px;
	z-index: 99999;
	background-color: rgba( 255, 255, 255, 0 );
}

.switch {
	position: relative;
	display: inline-block;
	width: 60px;
	height: 34px;
}

.switch input {
	display: none;
}

.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 26px;
	width: 26px;
	left: 4px;
	bottom: 4px;
	background-color: white;
	-webkit-transition: .4s;
	transition: .4s;
}

input:checked+.slider {
	background-color: #2196F3;
}

input:focus+.slider {
	box-shadow: 0 0 1px #2196F3;
}

input:checked+.slider:before {
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
	border-radius: 34px;
}

.slider.round:before {
	border-radius: 50%;
}

</style>

<!-- datepicker -->

<link href="assets_myPage/dist/css/datepicker.min.css" rel="stylesheet" type="text/css">
<script src="assets_myPage/dist/js/datepicker.min.js"></script>
<!-- Include English language -->
<script src="assets_myPage/dist/js/i18n/datepicker.en.js"></script>

<!-- main, menu -->    
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets_myPage/assets/css/main.css" />
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
<noscript><link rel="stylesheet" href="assets_myPage/assets/css/noscript.css" /></noscript>


<script type="text/javascript">
        var BPOPUP='';
        (function($) {
            $(function() {
                  $('#btest1').bind('click', function(e) {
                      e.preventDefault();
                      BPOPUP =  $('#bpopup1').bPopup({
                           modalClose : false
                       });
                    });    
             });
        })(jQuery);
    </script>  
			
<script type="text/javascript">

	function check(){
		var openCoverage = '${mhdto.getOpen_coverage()}';
		if(openCoverage == 1){
			document.getElementById('openCoverage').checked = true;
		}
	}
	
	function feed(){
		
	}

	function openCoverage(){
		
		var data = new FormData();
		data.append("useridx", '${sessionScope.useridx}');
		
		var xhr = new XMLHttpRequest();
		xhr.open("POST","openCoverage.do");
		
		 if(document.getElementById('openCoverage').checked){
			 console.log("on");
			 data.append("range", 1);
	         xhr.send(data);
	         xhr.onload = function(e) {
	           if(this.status == 200){
	        	   var jsonResponse = JSON.parse(e.currentTarget.responseText);
	               if(jsonResponse["result"] == 1){
	            	   alert('비공개 설정 완료!');
	               }else{
	            	   alert('비공개 설정 실패!');
	               }
	         	}
	         }
		 }else{
			 console.log("off");
			 data.append("range", 0);
	         xhr.send(data);
	         xhr.onload = function(e) {
	        	 if(this.status == 200){
	        		 var jsonResponse = JSON.parse(e.currentTarget.responseText);
	        	 if(jsonResponse["result"] == 1){
	            	   alert('비공개 해제 완료!');
	               }else{
	            	   alert('비공개 해제 실패!');
	               }
	        	 }
	         }
		 }
	}
	
	//moreicon function
    function wrapWindowByMask(){
        var maskHeight = $(document).height();
        var maskWidth = $(window).width();
 
        $('.mask').css({'width':maskWidth,'height':maskHeight});
 
        $('.mask').fadeTo("fast",0.3);
 
        var left = ( $(window).scrollLeft() + ( $(window).width() - $('.window').width()) / 2 );
        var top = ( $(window).scrollTop() + ( $(window).height() - $('.window').height()) / 2 );
 
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
    
   //게시물작성 UI function 
    function contentUpload(){
        var maskHeight = $(document).height();
        var maskWidth = $(window).width();
 
        $('.mask2').css({'width':maskWidth,'height':maskHeight});
 
        $('.mask2').fadeTo("fast",0.3);
 
        var left = ( $(window).scrollLeft() + ( $(window).width() - $('.uploadui').width()) / 2 );
        var top = ( $(window).scrollTop() + ( $(window).height() - $('.uploadui').height()) / 2 );
 
        $('.uploadui').css({'left':left,'top':top, 'position':'absolute'});
 
        $('.uploadui').show();
    }
 
    $(document).ready(function(){
        $('.showMask2').click(function(e){
            e.preventDefault();
            contentUpload();
        });
 
        $('.uploadui .close').click(function (e) {
            e.preventDefault();
            $('.mask2, .uploadui').hide();
        });
 
        $('.mask2').click(function () {
            $(this).hide();
            $('.uploadui').hide();
        });
    });
    
    //게시물올리기 popupfunction
    function photoUploadOpen(){
    	window.open('contentUploadForm.do?useridx='+${sessionScope.useridx}+'&type=1','photoUpload','width=300,height=300');
    }
</script>
<script>
	//날짜검색function
	function contentDate(){
	    	var uploadDate=$('.datepicker-here').val();
	    	alert(uploadDate);
	    	sendRequest('uploadDateContent.do','uploadDate='+uploadDate,showResult,'POST');
	}
	
	function showResult(){
    	if(XHR.readyState==4){
    		if(XHR.status==200){
    			var data=eval('('+XHR.responseText+')');
    			var msg=data.contents.length;
    			window.alert(msg);
    			
    			for(var i=0; i<data.contents.length; i++){
    				var contentDate=data.contents[i];
    				var contentTable=document.getElementById('myfeedtable');
    				
    			}
    		}
    	}
    }
</script>

</head>
<body onload="check()">

<!-- 커버이미지 -->
<div id="cover"><img src="myHomeFolder/background_img/${mhdto.getBackground_img()}" alt="cover">
</div>

<!-- Main -->
<section id="main">
					
<!-- 방문자수 -->
<span class="visitor">TODAY ${mhdto.getVisitor_today()} | TOTAL ${mhdto.getVisitor_total()}</span>

					
<header style="margin-top:9em;">
					
<!-- 프로필사진 -->
<span class="avatar"><img src="myHomeFolder/profile_img/${mhdto.getProfile_img()}"alt="" /></span>
							
<!-- 더보기아이콘 -->

<div class="moreicon">

	<c:if test="${sessionScope.useridx eq mhdto.getMember_idx()}">
	
	<c:url var="moreMyHomeUrl" value="moreMyHomeForm.do">
		<c:param name="useridx" value="${sessionScope.useridx}"/>
	</c:url>
	
    <a href="moreMyHomeUrl" class="showMask"><i class="fa fa-ellipsis-h"></i></a>
 	</c:if>
 	
    <div class="mask"></div>
    <div class="window">
       <table align="center">
       	<tr><td><a href="backgroundUploadForm.do">커버사진</a></td></tr>
       	<tr><td><a href="profileUploadForm.do">프로필사진</a></td></tr>
       	<tr><td><a href="introUploadForm.do">소개글</a></td></tr>
       	<tr><td><a href="contentCategory.do">게시물 추가(test용)</a></td></tr>
       	<tr><td>공개설정<label class="switch">
  			<input id="openCoverage" type="checkbox" onchange="openCoverage()">
  			<span class="slider round"></span>
			</label></td></tr>
       </table>
    </div>
    
   <!--  본인이 아닐때
    <div class="mask"></div>
    <div class="window">
       <table align="center">
       	<tr><td><a href="backgroundUploadForm.do">신고하기</a></td></tr>
       	<tr><td><a href="profileUploadForm.do">차단하기 또는 차단취소하기</a></td></tr>
       	<tr><td><a href="introUploadForm.do">팔로우하기 또는 언팔로우하기</a></td></tr>
       	</table>
    </div>
    --> 
    
    
</div>

<!-- 게시물작성아이콘 -->
<div class="plusicon">
	<button style="font-size:24px;width:50px;border:0px;" class="showMask2">
	<i class="fa fa-plus-square-o"></i></button>


<div class="mask2"></div>
    <div class="uploadui">
				<!--  <a href="contentUploadForm.do?useridx=${sessionScope.useridx}&type=1"> -->
					<img width="50" height="50"
					src="myHomeFolder/category/photoIcon.png" onclick="photoUploadOpen()">
				</a> 
				<a href="contentUploadForm.do?useridx=${sessionScope.useridx}&type=2">
					<img width="50" height="50"
					src="myHomeFolder/category/videoIcon.png">
				</a> 
				<br>
				<a href="contentUploadForm.do?useridx=${sessionScope.useridx}&type=3">
					<img width="50" height="50"
					src="myHomeFolder/category/textIcon.png">
				</a> 
				<a href="contentUploadForm.do?useridx=${sessionScope.useridx}&type=4">
					<img width="50" height="50"
					src="myHomeFolder/category/shootIcon.png">
				</a>
			</div>
</div>

<!-- 캘린더아이콘 -->
<div class="calendaricon" style="width:300px;height:50px;">
	<input type='text' name="calendar" class="datepicker-here" style="width: 150px;">
	<button style="width:50px;border:0px;" onclick="contentDate()"><i class="fa fa-calendar"></i></button>
</div>


							
<!-- 아이디,한줄소개 -->
	<h1>${mhdto.getName()}</h1><br>
	<h3>${mhdto.getIntro()}</h3>
	
</header>
</section>
					
					
	<section id="middle">			
			<!-- 내 피드 -->				
		
		<div class="myfeedcategory">
		<ul>
			<li><input type="button" value="PHOTO"></li>
			<li><input type="button" value="VIEDEO"></li>
			<li><input type="button" value="TEXT"></li>
		</ul>
		</div>
		
		<div class="myfeed">
			<table style="border-spacing:10px;">
				 <tr>
					<td><img src="" class="showMask3"></td>
					<td><img src=""></td>
					<td style="background-color:blue;"></td>
				</tr>
				<tr>
					<td style="background-color:blue;"></td>
					<td style="background-color:blue;"></td>
					<td style="background-color:blue;"></td>
				</tr>
				<tr>
					<td style="background-color:blue;"></td>
					<td style="background-color:blue;"></td>
					<td style="background-color:blue;"></td>
				</tr>
			</table>
		</div>	
		
		<div class="mask3"></div>
		<div class="contentDiv">
		<img src="assets_myPage/images/cow.jpg" width="300px;">
		</div>
</section>

</body>
</html>