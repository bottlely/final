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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="js/httpRequest.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<title>MARS</title>
<!--     Font Awesome     -->
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">

<link href='http://fonts.googleapis.com/css?family=Grand+Hotel'
	rel='stylesheet' type='text/css'>
<script
	src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
<style>

.rounded {
	border-radius: 100em !important;
}

.darkGrey {
	background: #595770;
	color: #fff;
	border: none;
	font-size: 15px;
	width: 80px;
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


</style>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"> 

var nameList = new Array();

<c:forEach var="nameList" items="${nameList }">
	nameList.push(JSON.parse('"${nameList}"'));
</c:forEach>

		function showList(){
			  var dd = document.getElementById("content").value;
			  window.alert(dd);
	
			}

			/**해쉬태그*/

	$(document).ready(function() {
		  $("#searchForm").autocomplete(nameList, {
		    matchContains: true,
		    minChars: 0,
		   width: 120,
		   max: 10,
		   multiple: false,
		   scroll: true,
		   scrollHeight: 300,
		    selectFirst: false
		     }
		   );
	});
			
	/* $(document).ready(function() {
		  $("#content").autocomplete(nameList, {
		    matchContains: true,
		    minChars: 0,
		   width: 120,
		   max: 10,
		   multiple: false,
		   scroll: true,
		   scrollHeight: 300,
		   selectFirst: false
		     }
		   );
			
	}); */
	

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
             var date = document.getElementById('date_'+content_idx).value;
             var profile = document.getElementById('profile_'+content_idx).value;
             var session_idx = '${sessionScope.useridx}';
             var htag;
            
            if(document.getElementById('htag_'+content_idx)==null){
            	 htag='';
             }else{
            	 htag= document.getElementById('htag_'+content_idx).value;
             }
			             
             var writer = document.getElementById('writer_'+content_idx).value;
             var content = document.getElementById('content_'+content_idx).value;
             
             var detail_media = document.getElementById('detail_media');
            
            sendRequest('likeList.do?session_idx='+session_idx+'&content_idx='+content_idx, null, likeList, 'GET');
         
            
            if(category==1){
            	//사진
            	if($('#detail_media').children().size()>0){
            		$('#detail_media').children().remove();
            	}
            
            	var img_slide = document.createElement('img');
            	img_slide.src = path;
            	img_slide.id='detail';
            	detail_media.appendChild(img_slide);
             }else if(category==2){
            	 //동영상
            	 if($('#detail_media').children().size()>0){
            		 $('#detail_media').children().remove();
             	}
            	 
            	 var video_slide = document.createElement('video');
            	 var source = document.createElement('source');
            	 video_slide.id='detail';
            	 video_slide.autoplay=true;
            	 video_slide.loop=true;
            	 video_slide.muted=true;
            	 
            	 source.src = path;
            	 source.type = "video/mp4";
            	 
            	 video_slide.appendChild(source);
            	 detail_media.appendChild(video_slide);
             }else if(category==3){
            	 //텍스트
            	 if($('#detail_media').children().size()>0){
            		 $('#detail_media').children().remove();
             	}
            	 
            	 var h3 = document.createElement('h3');
                 h3.style.backgroundColor = 'pink';
                 h3.style.height='400px';
                 h3.style.width='800px';
                 h3.innerHTML = content;
                 detail_media.appendChild(h3); 
            	 
             }
          		document.getElementById('c_content').innerHTML = category==3? path:content;
                document.getElementById('c_writer').innerHTML = writer;
                document.getElementById('c_date').innerHTML = date;
                document.getElementById('c_htag').innerHTML = '#'+htag;
                
                $('#c_htag').attr("href",'membersearch.do?name='+htag);
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
                               str += '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;">'
                               + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px; font-size:20px; font-color:red;" readonly> '
                               + '<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px; font-size:20px; font-color:red;" readonly>'
                               +'<input type="button" id="' + l.idx + 'update_ok" value="수정" style="display: none;" onclick="update_Reply(' + l.idx + ')">'
                               + '<br>'
                               + '<input type="text" id="'+l.idx+'text" style="display: none;"><input type="button" value="작성" id="'+l.idx+'btn" onclick="re_Reply('+l.idx+')"  style="display: none;">'
                               + '<input type="button" value="답글" onclick="ondisplay('+l.idx+')">'
                               + '<input type="button" value="수정" onclick="updateDisplay('+l.idx+')">'
                               + '<input type="button" value="삭제" onclick="delete_Reply('+l.idx+')">'
                               + '<hr>';   
                            }else{
                               str += '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;">'
                               + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px; font-size:20px; font-color:red;" readonly>'
                               + '<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px; font-size:20px; font-color:red;" readonly>'
                               + '<br><input type="text" id="'+l.idx+'text" style="display: none;"><input type="button" value="작성" id="'+l.idx+'btn" onclick="re_Reply('+l.idx+')"  style="display: none;">'
                               + '<input type="button" value="답글" onclick="ondisplay('+l.idx+')">'
                               + '<hr>';
                            }
                            
                         }else{
                            if(l.name == userName){
                               str += '=>'
                               + '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;">'
                               + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px;" readonly>'
                               +'<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px;" readonly>'
                               +'<input type="button" id="' + l.idx + 'update_ok" value="수정" style="display: none;" onclick="update_Reply(' + l.idx + ')">'
                               + '<br>' + '<input type="button" value="수정" onclick="updateDisplay('+l.idx+')">' 
                               + '<input type="button" value="삭제" onclick="delete_Reply('+l.idx+')">'
                               + '<hr>';
                            }else{
                               str += '=>'
                               + '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;">'
                               + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px;" readonly> '
                               + '<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px;" readonly>'
                               + '<hr>';
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
                  
               }
         
            function addReply(){
                var session_idx = document.getElementById('session_idx').value;
                var c_idx = document.getElementById('c_idx').value;
                var content = document.getElementById('content').value;
                   
                sendRequest("reply.do?content="+content+"&content_idx="+c_idx+"&session_idx="+session_idx, null, replyList, 'GET');
                
                document.getElementById("content").value = "";
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
             
             $(document).ready(function(){
                 $("#alertsDropdown").click(function(){
                	 document.getElementById('activity_iframe').src="activityListForm.do?idx=${sessionScope.useridx}";
                 });
             });
             
             function ActivityCount() {
            	 
            	 var data = new FormData();
                 
                 data.append("idx", '${sessionScope.useridx}');
                 
            	 var xhr = new XMLHttpRequest();
                 xhr.open("POST","activityCount.do");
                 xhr.send(data);
                 xhr.onload = function(e) {
                     if(this.status == 200) {
                        var jsonResponse = JSON.parse(e.currentTarget.responseText);
                         if(jsonResponse["count"] > 0){
                        	var div = document.createElement('div');
                        	div.innerHTML=jsonResponse["count"];
                            document.getElementById('count').appendChild(div);
                         }else{
                            
                         }
                     }
                 }
             }
</script>
</script>
<body onload="reply_List(${content_idx})">
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
					style="background: #935d8c; height: 100%; width: 34%; position: absolute; float: left; display: none; z-index: 4">
					<div
						style="background-color: white; align-content: center; text-align: right;">
						<a href="#" id="cl1">Close <i class="pe-7s-close"></i></a>
						
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
						<a href="#" id="cl2">Close <i class="pe-7s-close"></i></a>
					</div>
					<iframe src="myHomeForm.do?useridx=${sessionScope.useridx}"
						width="100%" height="100%" name="ppp" id="ppp" frameborder="0"></iframe>
				</div>
			</span>

			<!-- 개인설정 창 부분(more)___followingList -->
			<div id="more2"
				style="background: #f2fdff; height: 50%; width: 20%; position: absolute; float: right; display: none; z-index: 6; margin-top: 10%; margin-left: 10%; border:0.3px solid gray;">

				<div style="text-align: center; border: thick; margin-top:20px;">
					<img src="" id="following_img_id" alt=""
						style="border-radius: 50%; width: 50px; height:50px;">
				</div>
				<br>
				<p
					style="text-align: center; font-size: 8pt; font-family: Sans-Serif;"
					id="following_name_id"></p>
				<div style="text-align: center;">
				<button type="button" class="btn btn-success" onclick="unfollowing()" style="background-color:green; width:150px;">팔로우취소</button>
					<br> <br> 
					<button type="button" class="btn btn-success" onclick="settingGroup()" style="background-color:green; width:150px;">그룹설정</button>
					<br>
					<br>
					<button type="button" class="btn btn-success" onclick="btn_cancle1()" style="background-color:green; width:150px;">닫기</button>
					 <br>
				</div>
			</div>

			<!-- 개인설정 창 부분(more)___followerList -->
			<div id="more3"
				style="background: #f2fdff; height: 20%; width: 20%; position: absolute; float: right; display: none; z-index: 6; margin-top: 10%; margin-left: 10%; border:0.3px solid gray;">

				<div style="text-align: center; border: thick; margin-top:20px;">
					<img src="" id="follower_img_id" alt=""
						style="border-radius: 50%; width: 50px; height:50px;">
				</div>
				<br>
				<p
				dropdown-toggle	style="text-align: center; font-size: 8pt; font-family: Sans-Serif;"
					id="follower_name_id"></p>
				<div style="text-align: center;">
					<button type="button" class="btn btn-success" onclick="following()" style="background-color:green; width:150px;">팔로우</button>
					
					<br> <br> 
					<button type="button" class="btn btn-success" onclick="removeFollower()" style="background-color:green; width:150px;">팔로워 삭제</button>
					<br> <br> 
					<button type="button" class="btn btn-success" onclick="block()" style="background-color:green; width:150px;">차단하기</button>
					<br> <br>
					<button type="button" class="btn btn-success" onclick="settingGroup()" style="background-color:green; width:150px;">그룹설정</button>
					<br> <br> 
					<button type="button" class="btn btn-success" onclick="btn_cancle2()" style="background-color:green; width:150px;">닫기</button>
					<br>
				</div>
			</div>


			<div id="navbar-blue">
				<nav class="navbar navbar-ct-blue" role="navigation">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<ul class="nav navbar-nav navbar-left">
							<li><a href="main.do?idx=${sessionScope.useridx }"> <img
									src="assets_main/images/logo.svg" alt="" />

							</a></li>
							<li><a href="main.do?idx=${sessionScope.useridx }">
									<h3>MARS</h3>

							</a></li>

						</ul>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">

							<ul class="nav navbar-nav navbar-right">

								<!-- 다운 음성인식 -->



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

			<li>
									<form name="search" action="membersearch.do"
                      class="navbar-form navbar-right navbar-search-form">
 							<div id="speechbbbbox"></div>
								<a href="#" onClick="startConverting();">
										<i class="pe-7s-micro"></i>
									</a>	
                      <div class="form-group">
                         <input type="text" name="name" class="form-control" id='searchForm' autocomplete="on" value=""
                            placeholder="Search...">
 							
 
                      </div>
 						
                   </form>
                   	
                   </li>
								 <li><a href="javascript:void(0);" data-toggle="search"
                           class="hidden-xs"> <i class="pe-7s-search"></i>
                           </a>
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
										class="badge badge-pill badge-warning"><div id="count"></div>New</span> <span
										class="indicator text-warning d-none d-lg-block">
									</span>
								</a>
									<div id="total_activity_iframe" class="dropdown-menu" aria-labelledby="alertsDropdown" style="width: 400px; border: 6px; text-align: center;">
										<h6 class="dropdown-header">New Alerts:</h6>
										<!-- 활동내역 -->
										<iframe id="activity_iframe" src=""
											width="380px" height="100%" frameborder="0" align="middle" border-top="10px"></iframe>

										<!-- <div class="dropdown-divider"></div>
										<a class="dropdown-item small" href="#">View all alerts</a> -->
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


	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav"></div>
			<div class="col-sm-8 text-center" style="background: #f4f4f4;">
				<div style="text-align: left;">
					<img src="assets_main/images/logo.svg"
						style="width: 60px; height: 60px; border-radius: 50%; margin: 10px;">
					<font color="blue" size="3px;"><b>${content.writer }</b></font> <font>님의
						게시물</font>
				</div>
			</div>
			<div class="col-sm-2 sidenav"></div>
		</div>
		<c:if test="${content.category==1 }">
			<div class="row content">
				<div class="col-sm-2 sidenav"></div>
				<div class="col-sm-8 text-center" style="background-color: white;">
					<div style="text-align: left; margin: 10px;">
						<font size="3px;"><b>${content.content }</b></font>
					</div>
					
					<hr>
					<img src="myHomeFolder/content/${content.path }" alt="" style="margin: 1%; width: 600px;height: 600px;"
						class="img-thumbnail" >
				</div>
				<div class="col-sm-2 sidenav"></div>
			</div>
		</c:if>
				<c:if test="${content.category==2 }">
			<div class="row content">
				<div class="col-sm-2 sidenav"></div>
				<div class="col-sm-8 text-center" style="background-color: white;">
					<div style="text-align: left; margin: 10px;">
						<font size="3px;"><b>${content.content }</b></font>
					</div>
					<hr>
			<video autoplay="autoplay" loop="loop" style="width: 600px; height:600px;">
										<source src="myHomeFolder/content/${content.path }" type="video/mp4">
										</video>
				</div>
				<div class="col-sm-2 sidenav"></div>
			</div>
		</c:if>
		<c:if test="${content.category==3 }">
			<div class="row content">
				<div class="col-sm-2 sidenav"></div>
				<div class="col-sm-8 text-center" style="background-color: white;">
					<div style="text-align: left; margin: 10px;">
						<font size="3px;"><b>${content.content }</b></font>
					</div>
					<hr>
		   <div style="background-color: white; height: 431px; width:100%; display: table; ">
                       					 <h3 style="display: table-cell; vertical-align: middle;">${content.path }</h3>
                       				 </div>
				</div>
				<div class="col-sm-2 sidenav"></div>
			</div>
		</c:if>
		<div class="row content">
			<div class="col-sm-2 text-center"></div>
			<div class="col-sm-8 text-left" style="background:white;float:left;position:relative;">
				<a href="#" onclick="like(${content_idx})">
				<img src="" id="like_Img" width="40px" height="40px;" style="margin-left: 30px;"></a>
				<input type="text" id="likeCount" value="" readonly style="border: 0px; font-size:14px;">
				<%-- <img src=""><input type="button" value="발자취"
					onclick="like(${content_idx})"> --%>
			</div>
			<div class="col-sm-2 text-center"></div>
		</div>
		<div class="row content">
			<div class="col-sm-2 sidenav"></div>
			<div class="col-sm-8 text-center" style="background: white;">

				<input type="hidden" id="content_idx" name="content_idx"
					value="${content_idx  }">
				<div class="input-group">
					<input id="content" type="text" class="form-control" name="content"
						placeholder="댓글을 입력하세요." style="width:500px;float:right;"> <label class="input-group-addon"
						onclick="addReply()">작성</label>
				</div>
				<br>
				<hr>
				
				<div id="reply_List" style="height:500px; overflow:auto;"></div>
				
				<input type="hidden" id="session_idx" value="${sessionScope.useridx }">
				<input type="hidden" id="session_name" value="${sessionScope.username }">
			</div>
			<div class="col-sm-2 sidenav"></div>
		</div>
		<div class="row content">
			<div class="col-sm-2 sidenav"></div>
			<div class="col-sm-8 text-left"
				style="background: #f4f4f4; text-align: left;">
				<script>
				function like(content_idx){
		            var session_idx = document.getElementById("session_idx").value;

		            sendRequest('like.do?session_idx='+session_idx+'&content_idx='+content_idx, null, likeList, 'GET');
		         }
		         
		         function likeList(){
		             if(XHR.readyState==4){
		               if(XHR.status==200){
		                  var data = XHR.responseText;
		                  var lists = eval('('+data+')');
		                  var like_List = document.all.like_List;
		                  var content_idx = '${content_idx}';

		                  document.getElementById('like_Img').src=lists.img_Path;
		                  
		                  sendRequest('likeCount.do?content_idx='+content_idx, null, likeCount, 'GET');
		               }
		            } 
		         }
		         
		         function likeCount(){
		        	 if(XHR.readyState==4){
			               if(XHR.status==200){
			                  var data = XHR.responseText;
			                  var lists = eval('('+data+')');

			                  document.getElementById('likeCount').value = '발자취 ' + lists.count + '개';
			               }
			            } 
		         }
		         
		         function reply_List(content_idx,session_idx){
		            sendRequest('replyList.do?content_idx=' + content_idx, null, replyList, 'GET');
		         }
		         
		         function addReply(){
		            var content_idx = document.getElementById("content_idx").value;
		            var session_idx = document.getElementById("session_idx").value;
		            var content = document.getElementById("content").value;
		            
		            sendRequest('reply.do?content='+content+"&content_idx="+content_idx+"&session_idx="+session_idx, null, replyList,'GET');
		         }
		         
		         function replyList(){
	                   if(XHR.readyState==4){
	                      if(XHR.status==200){
	                         var data = XHR.responseText;
	                         var lists = eval('('+data+')');
	                         var reply_list = document.all.reply_List;
	                         var str='';
	                         var userName = document.getElementById("session_name").value;
	                         var content_idx = '${content_idx}';
	                         var likeResult = ${result};
	                         if(likeResult == 0){
	                            document.getElementById('like_Img').src='likeImg/unlike.png';
	                         }else{
	                            document.getElementById('like_Img').src='likeImg/like.png';
	                         }

	                         if(lists.replyList.length==0){
	                             str = '댓글 없습니다.'
	                             reply_list.innerHTML = str;
	                          }else{
	                             for(var i=0; i<lists.replyList.length; i++){
	                                var l = lists.replyList[i];
	                                
	                                if(l.lev == 0){
	                                   if(l.name == userName){
	                                      str += '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;float:left;margin-left:20px;">' + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px;font-size:13px;float:left;width:70px;" readonly> ' + '<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px;font-size:15px;float:left;" readonly>'+'<input type="button" id="' + l.idx + 'update_ok" value="수정" style="display: none;border: solid 1px #c8cccf;float:left;" onclick="update_Reply(' + l.idx + ')">' + '<br>' + '<input type="text" id="'+l.idx+'text" style="display: none;float:left;"><input type="button" value="작성" id="'+l.idx+'btn" onclick="re_Reply('+l.idx+')"  style="display: none;border-color: #ff7496;color: #ff7496 !important;background-color:#ffff;width:45px;height:25px;font-size:12px;padding:0;float:right;">' + '<input type="button" value="답글" style="border-color: #ff7496;color: #ff7496 !important;background-color:#ffff;width:45px;height:25px;font-size:12px;padding:0;float:right;" onclick="ondisplay('+l.idx+')">' + '<input type="button" value="수정" style="border-color: #ff7496;color: #ff7496 !important;background-color:#ffff;width:45px;height:25px;font-size:12px;padding:0;float:right;" onclick="updateDisplay('+l.idx+')">' + '<input type="button" value="삭제" style="border-color: #ff7496;color: #ff7496 !important;background-color:#ffff;width:45px;height:25px;font-size:12px;padding:0;float:right;" onclick="delete_Reply('+l.idx+')">' + '<br><hr>';   
	                                   }else{
	                                      str += '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;float:left;margin-left:20px;">' + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px;font-size:13px;float:left;width:70px;" readonly>' + '<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px;font-size:15px;float:left;" readonly>' + '<br><input type="text" id="'+l.idx+'text" style="display: none;float:left;"><input type="button" value="작성" id="'+l.idx+'btn" onclick="re_Reply('+l.idx+')"  style="display: none;border-color: #ff7496;color: #ff7496 !important;background-color:#ffff;width:45px;height:25px;font-size:12px;padding:0;float:right;">' + '<input type="button" value="답글"  style="border-color: #ff7496;color: #ff7496 !important;background-color:#ffff;width:45px;height:25px;font-size:12px;padding:0;float:right;margin:0;" onclick="ondisplay('+l.idx+')">' + '<br><hr>';
	                                   }
	                                   
	                                }else{
	                                   if(l.name == userName){
	                                      str += '<i class="material-icons" style="float:left;margin-left:40px;">subdirectory_arrow_right</i>' + '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;float:left;">' + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px;font-size:13px;float:left;width:70px;" readonly>'+'<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px;font-size:15px;float:left;width:200px;" readonly>'+'<input type="button" id="' + l.idx + 'update_ok" value="수정" style="display: none;border-color: #ff7496;color: #ff7496 !important;background-color:#ffff;width:45px;height:25px;font-size:12px;padding:0;margin:0;float:right;" onclick="update_Reply(' + l.idx + ')">' + '<br>' + '<input type="button" value="수정" style="border-color: #ff7496;color: #ff7496 !important;background-color:#ffff;width:45px;height:25px;font-size:12px;padding:0;float:right;" onclick="updateDisplay('+l.idx+')">' + '<input type="button" value="삭제" onclick="delete_Reply('+l.idx+')" style="border-color: #ff7496;color: #ff7496 !important;background-color:#ffff;width:45px;height:25px;font-size:12px;padding:0;float:right;">' + '<br><hr>';
	                                   }else{
	                                      str += '<i class="material-icons" style="float:left;margin-left:40px;">subdirectory_arrow_right</i>' + '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;float:left;">'+ '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px;font-size:13px;float:left;width:70px;" readonly> ' + '<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px;font-size:15px;float:left;width:200px;;" readonly>' + '<hr>';
	                                   }
	                                }
	                             }
	                             reply_list.innerHTML = str;
	                             
	                             sendRequest('likeCount.do?content_idx='+content_idx, null, likeCount, 'GET');
	                          }
	                      }
	                   }
	                }
		         
		         function re_Reply(idx){
		            var content = document.getElementById(idx+"text").value;
		            var content_idx = document.getElementById("content_idx").value;
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
		             var content_idx = document.getElementById("content_idx").value;
		             
		             sendRequest('update_Reply.do?reply_idx='+idx+'&content='+content+'&content_idx='+content_idx, null, replyList,'GET');
		          } 
		         
		         function delete_Reply(idx){
		             var content_idx = document.getElementById('content_idx').value;
		              
		             sendRequest('delete_Reply.do?reply_idx='+idx+'&content_idx='+content_idx, null, replyList,'GET');
		         }
         
         
      </script>

			</div>
			<div class="col-sm-2 sidenav"></div>
		</div>

	</div>

	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>



</body>

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
</html>