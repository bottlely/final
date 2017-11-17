<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-3.2.1.js" type="text/javascript"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script type="text/javascript" src="js/httpRequest.js"></script>
   <script src="js/jssor.slider-26.5.0.min.js" type="text/javascript"></script>
 
<style>
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

.window,
.window3{
   position: absolute;
   display: none;
   background-color: #ffffff;
   width: 200px;
   
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
   width: 45px;
   height: 27px;
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
   height: 20px;
   width: 20px;
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
   -webkit-transform: translateX(20px);
   -ms-transform: translateX(20px);
   transform: translateX(20px);
}

/* Rounded sliders */
.slider.round {
   border-radius: 34px;
}

.slider.round:before {
   border-radius: 50%;
}

</style>

<style>

#viewForm {
	background-color: #f2fdff;
}

#pf {
	width: 50px;
	heigth: 50px;
}

#pf2 {
	width: 30px;
	height: 30px;
}

#reply1 {
	margin-bottom: 10px;
}

#name {
	width: 50%;
}

#cntInfoBar {
	border-bottom: 0.5px solid #d1c8ff;
	margin-bottom: 10px;
	padding-bottom: 5px;
	overflow:hidden;
}


/* jssor slider loading skin spin css */
.jssorl-009-spin img {
	animation-name: jssorl-009-spin;
	animation-duration: 1.6s;
	animation-iteration-count: infinite;
	animation-timing-function: linear;
}

@
keyframes jssorl-009-spin {from { transform:rotate(0deg);
	
}

to {
	transform: rotate(360deg);
}

}
.jssorb051 .i {
	position: absolute;
	cursor: pointer;
}

.jssorb051 .i .b {
	fill: #fff;
	fill-opacity: 0.5;
}

.jssorb051 .i:hover .b {
	fill-opacity: .7;
}

.jssorb051 .iav .b {
	fill-opacity: 1;
}

.jssorb051 .i.idn {
	opacity: .3;
}

.jssora051 {
	display: block;
	position: absolute;
	cursor: pointer;
}

.jssora051 .a {
	fill: none;
	stroke: #fff;
	stroke-width: 360;
	stroke-miterlimit: 10;
}

.jssora051:hover {
	opacity: .8;
}

.jssora051.jssora051dn {
	opacity: .5;
}

.jssora051.jssora051ds {
	opacity: .3;
	pointer-events: none;
}

.modal2 {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	position: relative;
	background-color: #fefefe;
	margin: auto;
	padding: 0;
	border: 1px solid #888;
	width: 40%;
	height: 24%;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-webkit-animation-name: animatetop;
	-webkit-animation-duration: 0.4s;
	animation-name: animatetop;
	animation-duration: 0.4s
}

/* Add Animation */
@
-webkit-keyframes animatetop {
	from {top: -300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}
@
keyframes animatetop {
	from {top: -300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}

/* The Close Button */
.close {
	color: white;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
</style>

<script type="text/javascript">
        jssor_1_slider_init = function() {

            var jssor_1_SlideshowTransitions = [
              {$Duration:800,$Opacity:2}
            ];

            var jssor_1_options = {
              $AutoPlay: 1,
              $Align: 0,
              $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: jssor_1_SlideshowTransitions,
                $TransitionsOrder: 1
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*#region responsive code begin*/

            var MAX_WIDTH = 980;

            function ScaleSlider() {
                var containerElement = jssor_1_slider.$Elmt.parentNode;
                var containerWidth = containerElement.clientWidth;

                if (containerWidth) {

                    var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                    jssor_1_slider.$ScaleWidth(expectedWidth);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }

            ScaleSlider();

            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            /*#endregion responsive code end*/
        };
        

    </script>

<!-- datepicker -->

<link href="assets_myPage/dist/css/datepicker.min.css" rel="stylesheet" type="text/css">
<script src="assets_myPage/dist/js/datepicker.min.js"></script>
<!-- Include English language -->
<script src="assets_myPage/dist/js/i18n/datepicker.en.js"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  

<!-- main, menu -->    
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets_myPage/assets/css/main.css" />
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
   
   function UserHomeMore(url){
	   var urldo = url +'.do';
	   alert(urldo);
	   var data = new FormData();
	   data.append("user1_idx", '${sessionScope.useridx}');
	   data.append("user2_idx", '${mhdto.getMember_idx()}');

	   var xhr = new XMLHttpRequest();
	   xhr.open("POST",urldo);
	    xhr.send(data);
        xhr.onload = function(e) {
            if(this.status == 200){
               var jsonResponse = JSON.parse(e.currentTarget.responseText);
                if(jsonResponse["result"] > 0){
                   alert('ok!');
                   	window.location.reload();
                   	parent.ppp.location.reload();
                }else{
                   alert('no!');
                }
             }
          }
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
                  if(jsonResponse["result"] > 0){
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
               if(jsonResponse["result"] > 1){
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
    function uploadOpen(num){
       window.open('contentUploadForm.do?useridx=${sessionScope.useridx}&type='+num,'uploadContent','width=600,height=500');
    }
    
    //더보기  popupfunction
    function moreOpen(num){
       window.open('moreUploadForm.do?type='+num,'uploadMore','width=600,height=500');
    }

    //신고하기  popupfunction
    function reportOpen(){
       window.open('reportUserForm.do?toIdx=${mhdto.getMember_idx()}','reportOpen','width=600,height=500');
    }
    
</script>
<script>
//광고신청function
function adapply(){
    var maskHeight = $(document).height();
    var maskWidth = $(window).width();

    $('.mask3').css({'width':maskWidth,'height':maskHeight});

    $('.mask3').fadeTo("fast",0.3);

    var left = ( $(window).scrollLeft() + ( $(window).width() - $('.window3').width()) / 2 );
    var top = ( $(window).scrollTop() + ( $(window).height() - $('.window3').height()) / 2 );

    $('.window3').css({'left':left,'top':top, 'position':'absolute'});

    $('.window3').show();
}

$(document).ready(function(){
    $('.showMask3').click(function(e){
        e.preventDefault();
        adapply();
    });

    $('.window3 .close').click(function (e) {
        e.preventDefault();
        $('.mask3, .window3').hide();
    });

    $('.mask3').click(function () {
        $(this).hide();
        $('.window3').hide();
    });
});
</script>
<script>
//날짜검색function
function contentDate(){
       var uploadDate=$('.datepicker-here').val();
       window.alert(uploadDate);
       sendRequest('uploadDateContent.do?uploadDate='+uploadDate+'&member_idx=${mhdto.getMember_idx()}', null ,showResult,'POST');
}

function showResult(){
   if(XHR.readyState==4){
      if(XHR.status==200){
         var data=eval('('+XHR.responseText+')');
         var myFeedTable=document.all.myfeedtable;
         var myFeedDiv=document.all.myfeed;
         var str='';
         var paths='';
         if(data.list.length==0){
            str='<table><tr><td>검색결과가 없습니다.</td></tr></table>';
            myFeedTable.innerHTML=str;
         }else{
        	 myFeedDiv.removeChild(myFeedTable);
        	var table=document.createElement('table');
        		table.setAttribute("border-spacing", "10px");
        	var tr=document.createElement('tr');
        	table.appendChild(tr);
        	var count=0;
        	for(var i=0; i<data.list.length; i++){
        		count++;
        		var td=document.createElement('td');
        		var patharr=data.list[i].path.split('?');
        		//var indexnum=patharr[0].lastIndexOf(".");
        		//var pathname=patharr[0].substring(0,indexnum+1);
       			var img=document.createElement('img');
       				img.setAttribute("src", "myHomeFolder/content/"+patharr[0]);
       				img.setAttribute("width", "180px");
       				img.setAttribute("height", "180px");
       			td.appendChild(img);
       			tr.appendChild(td);
       				if(count>3){
       					count=0;
       					table.appenChild(tr);
       				}
       				
       				if(data.list.length/i==1){
       					table.appenChild(tr);
       				}
       			}myFeedDiv.appendChild(table);
        	/*str='<tr><td><img src="myHomeFolder/content/'+data.list[0].path+'" width="180",height="180"></td>'
        	+'<td><img src="myHomeFolder/content/'+data.list[1].path+'" width="180",height="180"></td>'
        	+'<td><img src="myHomeFolder/content/'+data.list[2].path+'" width="180",height="180"></td></tr>';
        	myFeedTable.innerHTML=str;*/
        	//if(i%3==0){
        		
        	//}
          //}
         }
      }
   }
}
</script>
<script>
//내 게시물 사진만 보기
function showMyPhoto(){
   sendRequest('showMyPhoto.do','member_idx=${sessionScope.useridx}',showResult2(),'POST');
}
function showResult2(){
   if(XHR.readyState==4){
      if(XHR.status==200){
         var data=eval('('+XHR.responseText+')');
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
   
<div style="width:200px;height:50px;float:right;">                     
<!-- 더보기아이콘 -->

   <span>
   
    <a href="" class="showMask"><i class="fa fa-ellipsis-h" style="font-size: 30px;color: #BDBDBD;"></i></a>
    
    <c:if test="${sessionScope.useridx eq mhdto.getMember_idx()}">
    
    <div class="mask"></div>
    <div class="window" style="cursor: pointer;">
       <table align="center">
          <tr onclick="moreOpen(1)"><td colspan="2">커버사진</td></tr>
          <tr onclick="moreOpen(2)"><td colspan="2">프로필사진</td></tr>
          <tr onclick="moreOpen(3)"><td colspan="2">소개글</td></tr>
          <tr><td align="center">공개설정</td>
             <td style="padding-top:10px;"><label class="switch">
             <input id="openCoverage" type="checkbox" onchange="openCoverage()">
           <span class="slider round"></span>
         </label></td></tr>
       </table>
    </div>
    </c:if>
    
    <c:if test="${sessionScope.useridx ne mhdto.getMember_idx()}">
    <div class="mask"></div>
    <div class="window">
       <table align="center">
       
          <tr onclick="reportOpen()"><td>신고하기</td></tr>
          <c:if test="${block eq -1}">
	          <c:if test="${block eq 0}">
	          <tr onclick="UserHomeMore('friend_block_mypage')"><td>차단하기</td></tr>
	          </c:if>
	          <c:if test="${block eq 1}">
	          <tr onclick="UserHomeMore('friend_unblock_mypage')"><td>차단해제</td></tr>
	          </c:if>
          </c:if>
          <c:if test="${following eq 0}">
          <tr onclick="UserHomeMore('following_mypage')"><td>팔로우</td></tr>
          </c:if>
          <c:if test="${following eq 1}">
          <tr onclick="UserHomeMore('deleteFriend_mypage')"><td>언팔로우</td></tr>
          </c:if>
          </table>
    </div>
    </c:if>
</span>

<!-- 게시물작성아이콘 -->

<span id="plusicon">
<c:if test="${sessionScope.useridx eq mhdto.getMember_idx()}">

   
   <button style="width:30px;border:0px;padding:none;" class="showMask2">
   <i class="fa fa-plus-square-o" style="position:relative;font-size: 30px;color: #BDBDBD;"></i></button>


<div class="mask2"></div>
    <div class="uploadui">
            <!--  <a href="contentUploadForm.do?useridx=${sessionScope.useridx}&type=1"> -->
               <img width="50" height="50"
               src="myHomeFolder/category/photoIcon.png" onclick="uploadOpen(1)">
               <img width="50" height="50"
               src="myHomeFolder/category/videoIcon.png" onclick="uploadOpen(2)">
            <br>
               <img width="50" height="50"
               src="myHomeFolder/category/textIcon.png" onclick="uploadOpen(3)">
               <img width="50" height="50"
               src="myHomeFolder/category/shootIcon.png" onclick="uploadOpen(4)">
         </div>
   </c:if>
</span>

	<!-- 광고관리 아이콘-->
	<c:if test="${userType ne 0}">
		<span id="adadminicon">
		<button style="width:30px;border:0px;padding:none;margin-left:10px;" class="showMask3">
		<i class="fa fa-newspaper-o" style="color: #BDBDBD;position:relative;font-size: 30px;"></i></button>
		
		   <div class="mask3"></div>
		    <div class="window3" style="cursor: pointer;">
		       <table align="center">
		          <tr onclick="window.open('applyAdForm.do', '광고 주문서', 'scrollbars=no width=400, height=450')"><td colspan="2">광고 신청하기</td></tr>
		          <tr onclick="window.open('checkCurAd.do', '광고 통계', 'scrollbars=no width=400, height=350')"><td colspan="2">광고 신청현황</td></tr>
		          </table>
		     </div>     
		</span>
	</c:if>
</div>


<!-- 캘린더아이콘 -->
<div class="calendaricon" style="width:300px;height:50px;">
   <input type='text' name="calendar" class="datepicker-here" style="width: 150px;">
   <button style="dispaly:flex;width:50px;border:0px;padding: none;border-color: #ffffff;" onclick="contentDate()">
   <i class="fa fa-calendar" style="font-align: center;font-size: 25px;color: #BDBDBD;padding: none;"></i></button>
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
         <li><input type="button" value="PHOTO" onclick="showMyPhoto()"></li>
         <li><input type="button" value="VIEDEO"></li>
         <li><input type="button" value="TEXT"></li>
      </ul>
      </div>
      
      <div class="myfeed" id="myfeed">

         <table style="border-spacing:10px;" id="myfeedtable">
         <c:if test="${empty contentList}">
         	<tr>
         		<td colspan="3" align="center">게시글 없음</td>
         	</tr>
         </c:if>
         	<tr>
         <c:forEach var="contentList" items="${contentList }">
      		
         	<td><a href="#myModal" data-toggle="modal" data-target="#myModal"><img src="myHomeFolder/content/${contentList.path}"></a></td>
         </c:forEach>
         
         	</tr>
         	</table>
             
      </div>
      </section>


		<!-- The Modal -->
		<div class="container">
		<div class="modal fade" id="myModal">
			<div class="modal-dialog" style="width:70%; overflow:hidden;">
			<div class="modal-content" style="width:100%; overflow:hidden;">
				<section id="viewForm" style="">
					<!-- Modal body -->
						<div class="container" style="width: 100%; font-size: 15px; overflow: hidden; ">
							<div class="row">
								<div class="col-md-12" style="margin-top:50px; margin-right:10px;">
									<div id="jssor_1"
										style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 360px; height: 270px; overflow: hidden; visibility: hidden;">
										<!-- Loading Screen -->
										<div data-u="loading" class="jssorl-009-spin"
											style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; text-align: center; background-color: rgba(0, 0, 0, 0.7);">

										</div>
										<div data-u="slides"
											style="cursor: default; position: relative; top: 0px; left: 0px; width: 360px; height: 270px; overflow: hidden;">
											<div>
												<img data-u="image" src="js/profile.png" />
											</div>
										</div>
										<!-- Bullet Navigator -->
										<div data-u="navigator" class="jssorb051"
											style="position: absolute; bottom: 12px; right: 12px;"
											data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
											<div data-u="prototype" class="i"
												style="width: 16px; height: 16px;">
												<svg viewbox="0 0 16000 16000"
													style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
					                    <circle class="b" cx="8000" cy="8000" r="5800"></circle>
					                </svg>
											</div>
										</div>
										<!-- Arrow Navigator -->
										<div data-u="arrowleft" class="jssora051"
											style="width: 55px; height: 55px; top: 0px; left: 25px;"
											data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
											<svg viewbox="0 0 16000 16000"
												style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
					                <polyline class="a"
													points="11040,1920 4960,8000 11040,14080 "></polyline>
					            </svg>
										</div>
										<div data-u="arrowright" class="jssora051"
											style="width: 55px; height: 55px; top: 0px; right: 25px;"
											data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
											<svg viewbox="0 0 16000 16000"
												style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
					                <polyline class="a"
													points="4960,1920 11040,8000 4960,14080 "></polyline>
					            </svg>
										</div>
									</div>
									<script type="text/javascript">
										jssor_1_slider_init();
									</script>

								</div>
							</div>

							<div class="row">
								<div class="col-md-12">
									<div class="col-sm-12" id="cntInfoBar">
										<span class="avatar">
										<img src="js/profile.png" alt="" id="pf" style="float:left;"/>
										<label id="c_writer" style="float:left;">작성자</label>
										</span>
										
										<button class="btn btn-info" id="myBtn"	style="background: gray;">· · ·</button>										
										<div id="myModal2" class="modal2">
										<!-- Modal content // contentMore -->
										<!-- Modal content -->
										  <div class="modal-content">
										      <span class="close"></span>
										    <div class="modal-body">
										      <a href="#" class="list-group-item list-group-item-success">수정</a>
											    <a href="#" class="list-group-item list-group-item-info">삭제</a>
											    <a href="#" class="list-group-item list-group-item-warning">신고</a>
										    </div>

										  </div>

										</div>
										

									</div>


									<div class="col-sm-12" id="cntInfoBar"
										style="overflow: auto; height: 70px;">
										<span><label id="c_content"></label></span>
									</div>

									<div class="col-sm-12" id="cntInfoBar" style="align:left;">
										<span style="align:left;"><a href="#" onclick="like()"> <img src=""
												id="like_Img" width="40px" height="40px;"
												style="margin-left: 15px; margin-top: 10px;"></a><input
											type="button" value="발자취" onclick="like()"></span>
									</div>


									<div class="col-sm-12" id="cntInfoBar"
										style="overflow: auto; height: 200px;">
										<div class="col-sm-12" id="reply_List">
											<span class="avatar"> </span>
										</div>


									</div>

									<div class="col-sm-12">
										<div class="input-group">
											<input id="content" type="text" class="form-control"
												name="content" placeholder="댓글 입력"> <label
												class="input-group-addon" onclick="addReply()"
												onkeydown="showList()">작성</label>
										</div>
									</div>
								</div>
							</div>
							
						</div>
				</section>
			</div>
			</div>
		</div>
		</div>
</body>

<script>
// Get the modal
var modal = document.getElementById('myModal2');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</html>