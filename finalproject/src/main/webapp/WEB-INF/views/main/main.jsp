<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<link href="assets_main/css/bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" href="assets_main/css/style.css" type="text/css">
<link href="assets_main/css/pe-icon-7-stroke.css" rel="stylesheet" />
<link href="assets_main/css/ct-navbar.css" rel="stylesheet" />
<link href="assets_main/css/jquery.autocomplete.css" rel="stylesheet" />


<title>MARS</title>
<!--     Font Awesome     -->
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">

<link href='http://fonts.googleapis.com/css?family=Grand+Hotel'
	rel='stylesheet' type='text/css'>
<script
	src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script src="js/jssor.slider-26.5.0.min.js" type="text/javascript"></script>

<style>
.frbutton {
	-moz-appearance: none;
	-webkit-appearance: none;
	-ms-appearance: none;
	appearance: none;
	-moz-transition: background-color 0.2s ease, box-shadow 0.2s ease, color
		0.2s ease;
	-webkit-transition: background-color 0.2s ease, box-shadow 0.2s ease,
		color 0.2s ease;
	-ms-transition: background-color 0.2s ease, box-shadow 0.2s ease, color
		0.2s ease;
	transition: background-color 0.2s ease, box-shadow 0.2s ease, color 0.2s
		ease;
	background-color: transparent;
	border: 0;
	box-shadow: inset 0 0 0 1px rgba(160, 160, 160, 0.3);
	color: #3c3b3b !important;
	cursor: pointer;
	display: inline-block;
	font-family: "Raleway", Helvetica, sans-serif;
	font-size: 0.6em;
	font-weight: 800;
	height: 20px;
	letter-spacing: 0.25em;
	line-height: 4.8125em;
	padding: 0 2.5em;
	text-align: center;
	text-decoration: none;
	text-transform: uppercase;
	white-space: nowrap;
}

.frbutton:hover {
	box-shadow: inset 0 0 0 1px #2ebaae;
	color: #2ebaae !important;
}

@
keyframes spin { 100% {
	transform: rotate(360deg);
}

}
.spinner {
	display: inline-block;
	width: 50px;
	height: 50px;
	border: 5px solid yellow;
	border-color: yellow transparent transparent;
	border-radius: 50%;
	animation: spin 1s linear infinite;
}

.fa-heart {
	color: #F74933;
}

.space-100 {
	height: 100px;
	display: block;
}

pre.prettyprint {
	background-color: #ffffff;
	border: 1px solid #999;
	margin-top: 20px;
	padding: 20px;
	text-align: left;
}

.atv, .str {
	color: #05AE0E;
}

.tag, .pln, .kwd {
	color: #3472F7;
}

.atn {
	color: #2C93FF;
}

.pln {
	color: #333;
}

.com {
	color: #999;
}

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
	width: 20%;
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
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>




<script type="text/javascript"> 

var data = [
	 {name : '양진모'}
	,{name : '박연수'}
	,{name : '오현경'}
	,{name : '한미연'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	,{name : '정다운'}
	
	];

		function showList(){
			  var dd = document.getElementById("content").value;
			  window.alert(dd);
	
			}

			/**해쉬태그*/

	$(document).ready(function() {

		  $("#searchForm").autocomplete(data, {
		    matchContains: true,
		    minChars: 0,
		   width: 120,
		   max: 10,
		   multiple: false,
		   scroll: true,
		   scrollHeight: 300,
		    formatItem: function(item){ return item.name; }
		     }
		   );
		 
	});
			


	$(document).ready(function() {
		
			
		  $("#content").autocomplete(data, {
			
		    matchContains: true,
		    minChars: 0,
		   width: 120,
		   max: 10,
		   multiple: false,
		   scroll: true,
		   scrollHeight: 300,
		    formatItem: function(item){ return item.name; }
		     }
		   );
			
	});
	

          $(document).ready(function(){
                $("#friends1").click(function(){
                   $('#more2').fadeOut();
                   $('#more3').fadeOut();
                   ppp.location.reload();
                   var div = $("#friends2");
                   div.animate({height: '100%'}, "slow");
                   div.animate({width:'toggle'}, "slow");
                });
            });
         
         $(document).ready(function(){
             $("#mypage1").click(function(){
                document.getElementById('ppp').src='myHomeForm.do?useridx='+${sessionScope.useridx};
                var div = $("#mypage2");
                 div.animate({right: '0px'}, "fast");
                 div.animate({height: '100%'}, "slow");
                 div.animate({width:'toggle'}, "slow");
               
             });
         });

          $(document).ready(function(){
                $("#cl1").click(function(){
                    var div = $("#friends2");
                    div.animate({height: '100%'}, "slow");
                    div.animate({width:'toggle'}, "slow");
                  
                });
            });

         
         $(document).ready(function(){
             $("#cl2").click(function(){
                 var div = $("#mypage2");
                 div.animate({height: '100%'}, "slow");
                 div.animate({width:'toggle'}, "slow");
                 
             });
         });
         
         $(document).ready(function(){
             $("#cl4").click(function(){
                 var div = $("#more2");
                 div.animate({height: '0%'}, "slow");
                 div.animate({width:'toggle'}, "slow");
                 
             });
         });
         
         $(document).ready(function(){
             $("#cl5").click(function(){
                 var div = $("#black2");
                 div.animate({height: '0%'}, "slow");
                 div.animate({width:'toggle'}, "slow");
                 
             });
         });
         
         $(document).ready(function(){
             $("#cl6").click(function(){
                 var div = $("#more3");
                 div.animate({height: '0%'}, "slow");
                 div.animate({width:'toggle'}, "slow");
                 
             });
         });
         
         $(document).ready(function(){
             $("#more1").click(function(){
                 var div = $("#more2");
               div.toggle('slow');
                 
             });
         });
               
         function openpic(content_idx){
        	 document.getElementById('c_idx').value=content_idx;
             var category = document.getElementById('category_'+content_idx).value;
             var path = document.getElementById('path_'+content_idx).value;
             
             var profile = document.getElementById('profile_'+content_idx).value;
             var session_idx = '${sessionScope.useridx}';
             
             var cut = path.split('?');
             
             var writer = document.getElementById('writer_'+content_idx).value;
             var content = document.getElementById('content_'+content_idx).value;
            
            sendRequest('likeList.do?session_idx='+session_idx+'&content_idx='+content_idx, null, likeList, 'GET');
         
            if(category==1){
            	/*     $('#galleryImage').attr("src",path); */
                for(var i=0; i<cut.length-1; i++){
                	var div1 = document.createElement('div');
                	var img_slide = document.createElement('img');
                	var src = "myHomeFolder/content/"+cut[i];
                	img_slide.src = src;
                	img_slide.setAttribute("data-u", "image");
                	div1.appendChild(img_slide);
                	var tt=document.getElementById('slide_div');
                	//alert(src+'/'+tt+'/'+tt.nodeName+'/'+tt.getAttribute('id'));
                	document.getElementById('slide_div').appendChild(div1); 
                }
             }else if(category==2){
              /*   $('#galleryImage').attr("src","");
               $('#galleryVideo').attr("src", path);
               $("#a_video").load();
             document.getElementById("a_video").play(); */
             }
                
                document.getElementById('c_writer').innerHTML = writer;
                document.getElementById('c_content').innerHTML = content;
                $('#pf').attr("src", profile);
            
          //contentMore
            var memberidx = document.getElementById('memberidx_'+content_idx).value;
            if(memberidx == '${sessionScope.useridx}'){
               document.getElementById('contentMore').innerHTML = 
                  '<a class="list-group-item list-group-item-success" onclick="modifyContent('+content_idx+')"> 수정 </a><a class="list-group-item list-group-item-info" onclick="deleteContent('+content_idx+')">삭제</a>';
            }else{
               document.getElementById('contentMore').innerHTML = '<a class="list-group-item list-group-item-warning" onclick="reportContent('+content_idx+')"> 신고 </a>';
            }
         } 
         
         function like(){
             var session_idx = document.getElementById("session_idx").value;
           var content_idx = document.getElementById("c_idx").value;
           
              sendRequest('like.do?session_idx='+session_idx+'&content_idx='+content_idx, null, likeList, 'GET');
          }
          
          function likeList(){
              if(XHR.readyState==4){
                if(XHR.status==200){
                   var content_idx = document.getElementById("c_idx").value;
                   var data = XHR.responseText;
                   var lists = eval('('+data+')');
                   var like_List = document.all.like_List;
                
                   document.getElementById('like_Img').src=lists.img_Path;
                   
                   XHR = getXHR();
                   
                   sendRequest('replyList.do?content_idx='+content_idx, null, replyList, 'GET');
                }
             } 
          }
         
         //contentMore
         function deleteContent(content_idx){
            
            var data = new FormData();
            data.append("contentidx", content_idx);
             var xhr = new XMLHttpRequest();
               xhr.open("POST","deleteContent.do");
               xhr.send(data);
               xhr.onload = function(e) {
                   if(this.status == 200) {
                      var jsonResponse = JSON.parse(e.currentTarget.responseText);
                       if(jsonResponse["result"] > 0){
                          alert('삭제 완료!');
                          window.location.reload();
                       }else{
                          alert('삭제 실패!');
                       }
                   }
               }
         }
         
       //contentMore
         function modifyContent(content_idx){
        	 window.open('modifyContentForm.do?contentidx='+content_idx,'modifyOpen','width=600,height=500');
         }
       
	      //contentMore
	     function reportContent(content_idx){
	            window.open('reportContentForm.do?toIdx='+content_idx,'reportOpen','width=600,height=500');
	         
	      } 
         
	     function replyList(){
             if(XHR.readyState==4){
                if(XHR.status==200){
                   var data = XHR.responseText;
                   var lists = eval('('+data+')');
                   var content_writer = '박연수';
                   var content_content = '하이하이';
                   var reply_list = document.all.reply_List;
                   var str='';
                   var userName = document.getElementById("session_name").value;

                   if(lists.replyList.length==0){
                      str = '댓글 없습니다.'
                      reply_list.innerHTML = str;
                   }else{
                      for(var i=0; i<lists.replyList.length; i++){
                         var l = lists.replyList[i];
                         
                         if(l.lev == 0){
                            if(l.name == userName){
                               str += '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;">' + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px;" readonly> ' + '<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px;" readonly>'+'<input type="button" id="' + l.idx + 'update_ok" value="수정" style="display: none;" onclick="update_Reply(' + l.idx + ')">' + '<br>' + '<input type="text" id="'+l.idx+'text" style="display: none;"><input type="button" value="작성" id="'+l.idx+'btn" onclick="re_Reply('+l.idx+')"  style="display: none;">' + '<input type="button" value="답글" onclick="ondisplay('+l.idx+')">' + '<input type="button" value="수정" onclick="updateDisplay('+l.idx+')">' + '<input type="button" value="삭제" onclick="delete_Reply('+l.idx+')">' + '<hr>';   
                            }else{
                               str += '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;">' + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px;" readonly>' + '<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px;" readonly>' + '<br><input type="text" id="'+l.idx+'text" style="display: none;"><input type="button" value="작성" id="'+l.idx+'btn" onclick="re_Reply('+l.idx+')"  style="display: none;">' + '<input type="button" value="답글" onclick="ondisplay('+l.idx+')">' + '<hr>';
                            }
                            
                         }else{
                            if(l.name == userName){
                               str += '=>' + '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;">' + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px;" readonly>'+'<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px;" readonly>'+'<input type="button" id="' + l.idx + 'update_ok" value="수정" style="display: none;" onclick="update_Reply(' + l.idx + ')">' + '<br>' + '<input type="button" value="수정" onclick="updateDisplay('+l.idx+')">' + '<input type="button" value="삭제" onclick="delete_Reply('+l.idx+')">' + '<hr>';
                            }else{
                               str += '=>' + '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;">'+ '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px;" readonly> ' + '<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px;" readonly>' + '<hr>';
                            }
                         }
                      }
                      reply_list.innerHTML = str;
                   }
                   
                   XHR = getXHR();
                }
             }
          }
         
	     function re_Reply(idx){
	            var re_content = document.getElementById(idx+"text")
	            var re_ok = document.getElementById(idx+"btn")
	             var content = document.getElementById(idx+"text").value;
	             var content_idx = document.getElementById("c_idx").value;
	             var session_idx = document.getElementById("session_idx").value;
	             
	             sendRequest('re_Reply.do?reply_idx='+idx+'&content='+content+'&content_idx='+content_idx+'&session_idx='+session_idx, null, replyList,'GET');
	             
	             re_content.style.display = 'none';
	               re_ok.style.display = 'none';
	          }
	         
	         function ondisplay(idx){
	             var re_content = document.getElementById(idx+"text");
	             var re_ok = document.getElementById(idx+"btn");
	             
	             re_content.style.display = 'block';
	             re_ok.style.display = 'block';
	          }
	         
	         function updateDisplay(idx){
	             var update_content = document.getElementById(idx+"update_content");
	             var update_ok = document.getElementById(idx+"update_ok");
	             
	             update_content.readOnly = false;
	             update_content.style.border = '1px solid';
	             update_ok.style.display = 'block';
	          }
	         
	         function update_Reply(idx){
	             var content = document.getElementById(idx+"update_content").value;
	             var content_idx = document.getElementById("c_idx").value;
	             
	             sendRequest('update_Reply.do?reply_idx='+idx+'&content='+content+'&content_idx='+content_idx, null, replyList,'GET');
	          } 
	          
	           function delete_Reply(idx){
	             var content_idx = document.getElementById('c_idx').value;
	             
	             sendRequest('delete_Reply.do?reply_idx='+idx+'&content_idx='+content_idx, null, replyList,'GET');
	          }
         
            function test1(idx) {
                  document.getElementById('ppp').src='myHomeForm.do?useridx='+idx;
                  var div = $("#mypage2");
                  div.animate({right: '0px'}, "fast");
                  div.animate({height: '100%'}, "slow");
                  div.animate({width:'toggle'}, "slow");
                  /* if(div.height() == '0%'){
                  div.animate({width:'toggle'},"slow"); 
                  }
                  else{
                     div.animate({width:'60%'},"slow");
                  } */
               }
         
            function addReply(){
	                var session_idx = document.getElementById('session_idx').value;
	                var c_idx = document.getElementById('c_idx').value;
	                var content = document.getElementById('content').value;
	                   
	                sendRequest("reply.do?content="+content+"&content_idx="+c_idx+"&session_idx="+session_idx, null, replyList, 'GET');
	           }
         
          function btn_cancle1() {
                var more2 = document.getElementById('more2');
                more2.style.display='none';
             }
          
          function btn_cancle2() {
                var more3 = document.getElementById('more3');
                more3.style.display='none';
             }
             
             function settingGroup() {
                location.href='infoSetting.do?idx='+${sessionScope.useridx};
             }
             
             function removeFollower() {
                var user2_idx = document.getElementById('hidden_other_idx').value;
                location.href='removeFollower.do?user1_idx='+${sessionScope.useridx}+'&user2_idx='+user2_idx;
             }
             
             function block() {
               //alert('차단하기');
                var user2_idx = document.getElementById('hidden_other_idx').value;
                location.href="friend_block.do?user1_idx="+${sessionScope.useridx}+"&user2_idx="+user2_idx;
             }
             
             function following() {
                //alert('following');
                var user2_idx = document.getElementById('hidden_other_idx').value;
                location.href='following.do?user1_idx='+${sessionScope.useridx}+'&user2_idx='+user2_idx;
             }
             
             function unfollowing() {
                //alert('unfollowing');
                var user2_idx = document.getElementById('hidden_other_idx').value;
                location.href='deleteFriend.do?user1_idx='+${sessionScope.useridx}+'&user2_idx='+user2_idx;
             }
             
             function fwer(other_idx, other_name, other_profile_img) { //follower
                document.getElementById('follower_img_id').src='myHomeFolder/profile_img/'+other_profile_img;
                document.getElementById('follower_name_id').innerHTML=other_name;
                
                document.getElementById('hidden_other_idx').value=other_idx;
                
             }
             
             function fwing(other_idx, other_name, other_profile_img) { //following
                document.getElementById('following_img_id').src='myHomeFolder/profile_img/'+other_profile_img;
                document.getElementById('following_name_id').innerHTML=other_name;
                
                document.getElementById('hidden_other_idx').value=other_idx;
             }

             function openContent(content_idx, useridx) {
            	 location.href='main_view.do?content_idx='+content_idx+'&session_idx='+useridx;
             }
</script>
<body>
	<header>
		<form name="hidden_value">
			<input type="hidden" name="hidden_other_idx" id="hidden_other_idx"
				value=""> <input type="hidden" name="hidden_other_name"
				id="hidden_other_name" value=""> <input type="hidden"
				name="hidden_other_profile_img" id="hidden_other_profile_img"
				value="">
		</form>
		<div id="navbar-full">
			<span style="float: left;">
				<div id="friends2"
					style="background: #935d8c; height: 100%; width: 40%; position: absolute; float: left; display: none; z-index: 4">
					<div
						style="background-color: white; align-content: center; text-align: right;">
						<a href="#" id="cl1">Close</a>
					</div>
					<c:url var="frListUrl" value="main_frList.do">
						<c:param name="member_idx" value="${sessionScope.useridx }" />
					</c:url>
					<iframe src="${frListUrl }" width="100%" height="100%" name="ppp"
						frameborder="0"></iframe>
				</div>
			</span> <span style="float: right;">
				<div id="mypage2"
					style="background: #935d8c; height: 100%; width: 60%; position: absolute; float: right; display: none; z-index: 4">
					<div style="background-color: white; align-content: center;">
						<a href="#" id="cl2">Close</a>
					</div>
					<iframe src="myHomeForm.do?useridx=${sessionScope.useridx}"
						width="100%" height="100%" name="ppp" id="ppp" frameborder="0"></iframe>
				</div>
			</span>

			<div id="msgTest2"
				style="background: #935d8c; height: 50%; width: 20%; position: absolute; float: right; display: none; z-index: 6; margin-top: 30%; margin-left: 78%">
				<div style="background-color: white; align-content: center;">
					<a href="#" id="cl3">Close</a>
				</div>

				<H1>채팅창 태스트</H1>

			</div>
			<!-- 개인설정 창 부분(more)___followingList -->
			<div id="more2"
				style="background: white; height: 50%; width: 20%; position: absolute; float: right; display: none; z-index: 6; margin-top: 10%; margin-left: 10%">
				<div
					style="background-color: white; align-content: center; text-align: right;">
					<a href="#" id="cl4" style="font-size: 11px;">Close</a>
				</div>
				<div style="text-align: center; border: thick;">
					<img src="" id="following_img_id" alt=""
						style="border-radius: 50%; width: 50px;">
				</div>
				<br>
				<p
					style="text-align: center; font-size: 8pt; font-family: Sans-Serif;"
					id="following_name_id"></p>
				<div style="text-align: center;">
					<input type="button" value="팔로우취소" onclick="unfollowing()"
						class="frbutton"><br> <br> <input type="button"
						value="그룹설정" onclick="settingGroup()" class="frbutton"><br>
					<br> <input type="button" value="취소하기" onclick="btn_cancle1()"
						class="frbutton"><br>
				</div>
			</div>

			<!-- 개인설정 창 부분(more)___followerList -->
			<div id="more3"
				style="background: white; height: 20%; width: 20%; position: absolute; float: right; display: none; z-index: 6; margin-top: 10%; margin-left: 10%">
				<div
					style="background-color: white; align-content: center; text-align: right;">
					<a href="#" id="cl6" style="font-size: 11px;">Close</a>
				</div>
				<div style="text-align: center; border: thick;">
					<img src="" id="follower_img_id" alt=""
						style="border-radius: 50%; width: 50px;">
				</div>
				<br>
				<p
				dropdown-toggle	style="text-align: center; font-size: 8pt; font-family: Sans-Serif;"
					id="follower_name_id"></p>
				<div style="text-align: center;">
					<input type="button" value="팔로우하기" onclick="following()"
						class="frbutton"><br> <br> <input type="button"
						value="팔로워삭제" onclick="removeFollower()" class="frbutton"><br>
					<br> <input type="button" value="차단하기" onclick="block()"
						class="frbutton"><br> <br> <input type="button"
						value="그룹설정" onclick="settingGroup()" class="frbutton"><br>
					<br> <input type="button" value="취소하기" onclick="btn_cancle2()"
						class="frbutton"><br>
				</div>
			</div>


			<div id="navbar-blue">
				<nav class="navbar navbar-ct-blue" role="navigation">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<ul class="nav navbar-nav navbar-left">
							<li><a href="main.do"> <img
									src="assets_main/images/logo.svg" alt="" />

							</a></li>
							<li><a href="main.do">
									<h3>MARS</h3>

							</a></li>

						</ul>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">

							<ul class="nav navbar-nav navbar-right">

								<!-- 다운 음성인식 -->

								<li>
									<div id="speechbbbbox"></div>
									<button onClick="startConverting();" type="button" style="margin-top: 14px;">
										<i class="fa fa-microphone"></i>
									</button>
								</li>


								<script type="text/javascript">
						 
						function startConverting ()
						{
						        if('webkitSpeechRecognition'in window)
						        {
						        	 var mic = new webkitSpeechRecognition();
						        	   mic.continuous = true;
						        	   mic.interimResults = true;
						        	   mic.lang = 'ko-KR';
						        	   mic.start();
						        	   
						        	   mic.onresult = function(e) {
						        		   var b = '', c = false;
						        		   for(var i = e.resultIndex; i < e.results.length; ++i) {
						        		   b += e.results[i][0].transcript;
						        		   c = e.results[i].isFinal;
						        		   }
						        		   if($('#speechbbbbox .cning').length < 1) $('#speechbbbbox').append('<span class="cning" style="display:none"></span>');
						        		   $('#speechbbbbox .cning').text(b);
						        		   $("#searchForm").val(b);
						        		   if(c) $('#speechbbbbox .cning').removeClass('cning');
						        		   mic.stop();
						        		   };
						        		   
						        		mic.onend = function() {
						        		   $('#speechbbbbox').removeClass('on');
						        		   };
						        }
						        else{
						        	$('#speechbbbbox').html('<strong>지원하지 않는 브라우저입니다.</strong>');
						        }
						    }
						</script>




								<!--  -->

								<li style="margin-top: 15px;">
									<form name="search" action="membersearch.do">
										<input type="text" name="name" id='searchForm' value=""
											autocomplete="on" placeholder="Search...">
									</form>
								</li>
								<li><a href="#" id="mypage1"> <i class="pe-7s-home"></i>

								</a></li>
								<li><a href="javascript:void(0);" class="hidden-xs"
									id="friends1"> <i class="pe-7s-chat"></i>

								</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown"
									href="#" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> <i class="pe-7s-global"></i> <span
										class="badge badge-pill badge-warning">6 New</span> <span
										class="indicator text-warning d-none d-lg-block"> <i
											class="fa fa-fw fa-circle"></i>
									</span>
								</a>
									<div class="dropdown-menu" aria-labelledby="alertsDropdown">
										<h6 class="dropdown-header">New Alerts:</h6>

										<iframe src="main_feedList.do?idx=${sessionScope.useridx}"
											width="100%" height="100%" frameborder="0"></iframe>

										<div class="dropdown-divider"></div>
										<a class="dropdown-item small" href="#">View all alerts</a>
									</div></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown"
									href="#" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> <i class="pe-7s-mail"></i> <span
										class="d-lg-none"> <span
											class="badge badge-pill badge-primary">12 New</span>
									</span> <span class="indicator text-primary d-none d-lg-block">
											<i class="fa fa-fw fa-circle"></i>
									</span>
								</a>
									<div class="dropdown-menu" aria-labelledby="messagesDropdown">
										<h6 class="dropdown-header">New Messages:</h6>
										<%@include file="msgList.jsp"%>

										<div class="dropdown-divider"></div>
										<a class="dropdown-item small" href="#">View all messages</a>
									</div></li>


								<li>
									<div class="dropdown">
										<a class="btn btn-default dropdown-toggle"
											data-toggle="dropdown"> <i class="pe-7s-menu"></i> <span
											class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a
												href="infoSetting.do?idx=${sessionScope.useridx }">SETTINGS</a></li>
											<li><a
												href="serviceCenter.do?idx=${sessionScope.useridx }">CUSTOMER
													CENTER</a></li>
											<li><a href="#">Logout</a></li>
											<li><a href="#" id="msgTest1">MSGTEST</a></li>
											<li><a href="#" id="more1">MORETEST</a></li>

										</ul>
									</div>
								</li>
							</ul>
						</div>
						</li>
						</ul>


					</div>
					<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
			</nav>
		</div>
		<!--  end navbar -->
	</header>

	<section id="latest-works">
		<div class="container">
			<div class="row"></div>
			<div class="row text-center">
				<div class="works-category" data-sr='enter top, wait 0.2s'>
					<ul class="statistics">
						<li class="style1"><a href="#" data-filter="*"
							class="current">All</a></li>
						<li class="style2"><a href="# " data-filter=".photo">PHOTO</a></li>
						<li class="style3"><a href="#" data-filter=".video">VIDEO</a></li>
						<li class="style4"><a href="#" data-filter=".text">TEXT</a></li>
					</ul>
				</div>

				<!--  전체 피드 목록 -->
				<div class="works-area">
					<c:set var="list" value="${list }"></c:set>
					<c:if test="${empty list }"> 게시물 없음! </c:if>
					<c:forEach var="list" items="${list }">
						<!--사진  -->
						<c:if test="${list.category==1 }">
							<div class="col-md-4 col-sm-6 col-xs-12  photo">
								<div class="works" style="height: 431px;">
									<img src="myHomeFolder/content/${list.path }" alt="" style="width: 431px; height: 431px;">
									<div class="work-overlay text-center">
										<div class="overlay-caption">
											<h4>PHOTO</h4>
											<a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="${list.path }" onclick="openpic(${list.content_idx})"> 
											<input type="hidden" id="category_${list.content_idx }" value="${list.category }"> 
											<input type="hidden" id="path_${list.content_idx }" value="${list.path }"> 
											<input type="hidden" id="profile_${list.content_idx }" value="myHomeFolder/profile_img/${list.profile }">
											<input type="hidden" id="writer_${list.content_idx }" value="${list.writer }"> 
											<input type="hidden" id="content_${list.content_idx }" value="${list.content }">
											<input type="hidden" id="memberidx_${list.content_idx }" value="${list.member_idx }">
												<p>${list.writer}</p>
											</a>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						<!-- 동영상 -->
						<c:if test="${list.category==2 }">
							<div class="col-md-4 col-sm-6 col-xs-12  video">
								<div class="works" style="height: 431px;">
									<video autoplay="autoplay" loop="loop" style="width: 300px; height: 431px;">
										<source src="myHomeFolder/content/${list.path }"
											type="video/mp4">
									</video>
									<div class="work-overlay text-center">
										<div class="overlay-caption">
											<h4>VIDEO</h4>
											<a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="${list.path }" onclick="openpic(${list.content_idx})"> 
												<input type="hidden" id="category_${list.content_idx }" value="${list.category }"> 
												<input type="hidden" id="path_${list.content_idx }" value="myHomeFolder/content/${list.path }"> 
												<input type="hidden" id="writer_${list.content_idx }" value="${list.writer }"> 
												<input type="hidden" id="profile_${list.content_idx }" value="myHomeFolder/profile_img/${list.profile }">
												<input type="hidden" id="content_${list.content_idx }" value="${list.content }">
												<input type="hidden" id="memberidx_${list.content_idx }" value="${list.member_idx }">
												<p>${list.writer}</p>
											</a>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						<!-- 텍스트 -->
						<c:if test="${list.category==3 }">
						<div class="col-md-4 col-sm-6 col-xs-12  text">
								<div class="works" style="height: 431px;">
								<div style="background-color: white; height: 431px;">
								<label>${list.path }</label>
								</div>
									<div class="work-overlay text-center">
										<div class="overlay-caption">
											<h4>TEXT</h4>
											<a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="${list.path }" onclick="openpic(${list.content_idx})"> 
												<input type="hidden" id="category_${list.content_idx }" value="${list.category }"> 
												<input type="hidden" id="path_${list.content_idx }" value="myHomeFolder/content/${list.path }"> 
												<input type="hidden" id="writer_${list.content_idx }" value="${list.writer }"> 
												<input type="hidden" id="profile_${list.content_idx }" value="myHomeFolder/profile_img/${list.profile }">
												<input type="hidden" id="content_${list.content_idx }" value="${list.content }">
												<input type="hidden" id="memberidx_${list.content_idx }" value="${list.member_idx }">
												<p>${list.writer}</p>
											</a>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>

	</section>
	
	
	<!-- 다운 광고 추가  -->

	
	
	<section>
	<c:set var="list" value="${adList }"></c:set>
		<c:if test="${empty list }"> 선호 광고 없음 </c:if>
			<c:forEach var="list" items="${list }">
					
		<div class="col-md-4 col-sm-6 col-xs-12  photo">
			<div class="works" style="height: 431px;">
				<img src="${list.ad_content} " alt=""
										style="width: 431px; height: 431px;">
					<div class="work-overlay text-center">
						<div class="overlay-caption">
							<h4>Ad</h4>
							<a href="http://${list.link}">
							${list.ad_name}</a>
							
						</div>
					</div>
				</div>
			</div>
			</c:forEach>

	</section>
	
	
	
	<section>
		<div class="container">

			<div class="row">
				<div class="col-xs-12" style="text-align: center;">
					<div class="spinner" id="wait"></div>
				</div>
				<!-- 더보기 버튼 -->
				<div class="col-xs-12" style="text-align: center;">
					<button type="button" class="btn btn-primary" id="more">More
						List..</button>
				</div>
			</div>
		</div>

	</section>
	<!-- end main -->
	<input type="hidden" id="session_idx" value="${sessionScope.useridx }">
	<input type="hidden" id="session_name" value="${sessionScope.username }">
	<div id="galleryModal" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true" style="border: solid; overflow: auto; background-color: rgba(0, 0, 0, 0.2);">
		<div style="margin: 2% 10%;">
			<section id="viewForm" style="overflow: auto;">
				<div class="container" style="width: 100%; font-size: 15px; overflow: hidden;">
					<div class="row">
						<!-- 사진 -->
						<div class="col-xs-7"
							style="margin-top: 10px; float: left; margin-bottom: 10px; overflow: hidden;">
							<div id="jssor_1"
								style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 480px; height: 270px;; overflow: hidden; visibility: hidden;">
								<!-- Loading Screen -->
								<div data-u="loading" class="jssorl-009-spin" style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; text-align: center; background-color: rgba(0, 0, 0, 0.7);">
								</div>
								<div id="slide_div" data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 480px; height: 270px;">
							
								<!-- 사진 반복 -->
									<!-- <div>
										<img data-u="image" src="myHomeFolder/content/default_content.jpg" id="galleryImage" />
									</div>
									<div>
										<img data-u="image" src="myHomeFolder/content/default_content.jpg" id="galleryImage" />
									</div> -->
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
							<script type="text/javascript">jssor_1_slider_init();</script>
						</div>

						<!-- 내용 -->
						<input type="hidden" id="c_idx" value="">
						<div class="col-xs-5"
							style="margin-top: 10px; margin-bottom: 10px;">
							<div class="col-sm-12" id="cntInfoBar">
								<span class="avatar"> <img src="js/profile.png" alt="" id="pf" style="
                            border-radius: 70px;
                            -moz-border-radius: 70px;
                            -khtml-border-radius: 70px;
                            -webkit-border-radius: 70px;
                            "/>
								</span> <label id="c_writer"></label> <span>
									<button class="btn btn-info" id="myBtn"
										style="background: gray;">· · · </button> <!-- The Modal -->
									<div id="myModal2" class="modal2">

										<!-- Modal content // contentMore -->
										<div class="list-group" style="width: 20%; margin: 5% auto;"
											id="contentMore">
											<span class="close">&times;</span>
										</div>

									</div>
								</span>

							</div>
							

							<div class="col-sm-12" id="cntInfoBar"
								style="overflow: auto; height: 70px;">
								<span><label id="c_content"></label></span>
							</div>
							
							<div class="col-sm-12" id="cntInfoBar">
								<span><a href="#" onclick="like()">
				<img src="" id="like_Img" width="40px" height="40px;" style="margin-left: 15px; margin-top: 10px;"></a><input type="button" value="발자취" onclick="like()"></span>
							</div>

	
							<div class="col-sm-12" id="cntInfoBar"
								style="overflow: auto; height: 200px;">
								<div class="col-sm-12" id="reply_List">
									<span class="avatar"> 
									</span>
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

<script src="assets_main/js_1/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets_main/js_1/bootstrap.js" type="text/javascript"></script>
<script type="text/javascript" src="assets_main/js_1/main.js"></script>
<script src="assets_main/js_1/ct-navbar.js"></script>
<script type="text/javascript"
	src="assets_main/owl-carousel/owl.carousel.min.js"></script>

<!--Parallax-->
<script type="text/javascript"
	src="assets_main/js/jquery.stellar.min.js"></script>
<!--IsoTop-->
<script type="text/javascript" src="assets_main/js/isotope.pkgd.min.js"></script>
<!--Typed js-->
<script type="text/javascript" src="assets_main/js/typed.js"></script>
<!--Smooth Scroll-->
<script type="text/javascript" src="assets_main/js/smooth-scroll.js"></script>
<!--Reveal JS-->
<script type="text/javascript" src="assets_main/js/scrollReveal.min.js"></script>

<script type="text/javascript"
	src="assets_main/js/jquery.autocomplete.js"></script>

<script type="text/javascript"
	src="assets_main/js/jquery.autocomplete.min.js"></script>

<script type="text/javascript"
	src="assets_main/js/jquery.autocomplete.pack.js"></script>
</html>