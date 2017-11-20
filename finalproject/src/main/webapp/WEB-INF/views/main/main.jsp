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
     <style type="text/css">
 /* Button */

  .btn_more_ohk{
      
      -moz-transition: background-color 0.2s ease-in-out, border-color 0.2s ease-in-out, color 0.2s ease-in-out;
      -webkit-transition: background-color 0.2s ease-in-out, border-color 0.2s ease-in-out, color 0.2s ease-in-out;
      -ms-transition: background-color 0.2s ease-in-out, border-color 0.2s ease-in-out, color 0.2s ease-in-out;
      transition: background-color 0.2s ease-in-out, border-color 0.2s ease-in-out, color 0.2s ease-in-out;
      display: inline-block;
      height: 2.75em;
      line-height: 2.75em;
      padding: 0 1.5em;
      background-color: transparent;
      border-radius: 4px;
      border: solid 1px #c8cccf;
      color: #414f57 !important;
      cursor: pointer;
      text-align: center;
      text-decoration: none;
      white-space: nowrap;
   }
 {
         border-color: #ff7496;
         color: #ff7496 !important;
      }
{
         padding-left: 1.35em;
      }
{
            margin-right: 0.5em;
         }
{
         display: block;
         width: 100%;
         margin: 0 0 0.75em 0;
      }

      {
         font-size: 0.8em;
      }
{
         font-size: 1.35em;
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
                               str += '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px; margin-right:10px;">'
                               + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px; font-size:13px; width:50px;" readonly >' 
                               + '<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px; font-size:15px; width:150px;"  readonly>'
                               +'<input type="button" id="' + l.idx + 'update_ok" value="수정" style="display: none; background:#ffffff;" onclick="update_Reply(' + l.idx + ')">' 
                               + '<br>' + '<input type="text" id="'+l.idx+'text" style="display: none; "><input type="button" background:#ffffff; value="작성" id="'+l.idx+'btn" onclick="re_Reply('+l.idx+')"  style="display: none;">' 
                               + '<input type="button" value="답글" style= "background:#ffffff; border-radius:  25px 0 0 25px ;    " onclick="ondisplay('+l.idx+')">' + '<input type="button" value="수정" style="background:#ffffff;   " onclick="updateDisplay('+l.idx+')">' 
                               + '<input type="button" value="삭제" style=" background:#ffffff; border-radius: 0 25px 25px 0;   " onclick="delete_Reply('+l.idx+')">' + '<hr>';   
                            }else{
                               str += '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;  margin-right:10px;">' 
                               + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px; font-size:13px; width:50px;" readonly>' 
                               + '<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px; font-size:15px; width:150px;" readonly>' 
                               + '<br><input type="text" id="'+l.idx+'text" style="display: none;"><input type="button" value="작성" id="'+l.idx+'btn" onclick="re_Reply('+l.idx+')"  style="display: none; background:#ffffff;  ">' 
                               + '<input type="button" value="답글" style="background:#ffffff;     " onclick="ondisplay('+l.idx+')">' 
                               + '<hr>';
                            }
                            
                         }else{
                            if(l.name == userName){
                               str += '=>' 
                               + '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;  margin-right:10px;">' 
                               + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px; font-size:13px; width:50px;" readonly>'
                               +'<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px; font-size:15px; width:150px;" readonly>'
                               +'<input type="button" id="' + l.idx + 'update_ok" value="수정" style="display: none;" onclick="update_Reply(' + l.idx + ')">'
                               + '<br>' + '<input type="button" value="수정" onclick="updateDisplay('+l.idx+')">' 
                               + '<input type="button" value="삭제" onclick="delete_Reply('+l.idx+')">' 
                               + '<hr>';
                            }else{
                               str += '=>'
                               + '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;  margin-right:10px;">'
                               + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px; font-size:13px; width:50px;" readonly> ' 
                               + '<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px; font-size:15px; width:150px;" readonly>' 
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
<body onload="ActivityCount()">
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
				<button type="button" class="btn_more_ohk" onclick="unfollowing()" style="width:150px;">팔로우취소</button>
					<br> <br> 
					<button type="button" class="btn_more_ohk" onclick="settingGroup()" style="width:150px;">그룹설정</button>
					<br>
					<br>
					<button type="button" class="btn_more_ohk" onclick="btn_cancle1()" style="width:150px;">닫기</button>
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
					<button type="button" class="btn_more_ohk" onclick="following()" style="width:150px;">팔로우</button>
					
					<br> <br> 
					<button type="button" class="btn_more_ohk" onclick="removeFollower()" style="width:150px;">팔로워 삭제</button>
					<br> <br> 
					<button type="button" class="btn_more_ohk" onclick="block()" style="width:150px;">차단하기</button>
					<br> <br>
					<button type="button" class="btn_more_ohk" onclick="settingGroup()" style="width:150px;">그룹설정</button>
					<br> <br> 
					<button type="button" class="btn_more_ohk" onclick="btn_cancle2()" style="width:150px;">닫기</button>
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


								<!-- d -->
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
											<li><a href="logout.do">Logout</a></li>
										

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
						<li class="style2"><a href="# " data-filter=".photo, .ad">PHOTO</a></li>
						<li class="style3"><a href="#" data-filter=".video, .ad">VIDEO</a></li>
						<li class="style4"><a href="#" data-filter=".text, .ad">TEXT</a></li>
					</ul>
				</div>

				<!--  전체 피드 목록 -->
				<div class="works-area">
					<c:set var="list" value="${list }"></c:set>
					<c:if test="${empty list }"></c:if>
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
											<input type="hidden" id="date_${list.content_idx }" value="${list.writetime }">
											<input type="hidden" id="path_${list.content_idx }" value="myHomeFolder/content/${list.path }"> 
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
								<div class="works" style="height: 431px; background-color: white; max-width: 431px;">
                        		   <video autoplay="autoplay" muted loop="loop" style="width:100%; height:100%;  ">
										<source src="myHomeFolder/content/${list.path }"
											type="video/mp4">
									</video>
									<div class="work-overlay text-center">
										<div class="overlay-caption">
											<h4>VIDEO</h4>
											<a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="${list.path }" onclick="openpic(${list.content_idx})"> 
												<input type="hidden" id="category_${list.content_idx }" value="${list.category }"> 
												<input type="hidden" id="date_${list.content_idx }" value="${list.writetime }">
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
								      <div style="background-color: white; height: 431px; width:100%; display: table; ">
                       					 <h3 style="display: table-cell; vertical-align: middle;">${list.path }</h3>
                       				 </div>
									<div class="work-overlay text-center">
										<div class="overlay-caption">
											<h4>TEXT</h4>
											<a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="${list.path }" onclick="openpic(${list.content_idx})"> 
												<input type="hidden" id="category_${list.content_idx }" value="${list.category }"> 
												<input type="hidden" id="date_${list.content_idx }" value="${list.writetime }">
												<input type="hidden" id="path_${list.content_idx }" value="${list.path }"> 
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
					<c:set var="hlist" value="${hlist }"></c:set>
					<c:forEach var="hlist" items="${hlist }">
					<input type="hidden" id="htag_${hlist.content_idx }" value="${hlist.content }">
					</c:forEach>
					
					<c:set var="list" value="${adList }"></c:set>
		<c:if test="${empty list }"> 
		<div class="col-md-4 col-sm-6 col-xs-12  photo">
			<div class="works" style="height: 431px;">
			
			<img src="adFolder/default.jpg " alt="" style="width: 431px; height: 431px;">
										
				<div class="work-overlay text-center">
				<div class="overlay-caption">
				<a href="infoSetting.do?idx=${sessionScope.useridx }" style="color: white">선호도 조사를 먼저 해주세요~ 
				선호에 맞는 광고를 추천해 드립니당!^^</a>
				</div>
				</div>
			</div>
		</div>
		</c:if>
			<c:forEach var="list" items="${list }">
					
		<div class="col-md-4 col-sm-4 col-xs-4  ad">
			<div class="works" style="height: 431px;">
				<img src="${list.ad_content} " alt="" style="width: 431px; height: 431px;">
					<div class="work-overlay text-center">
						<div class="overlay-caption">
							<h4>Ad</h4>
							<h2><a href="${list.link}" onclick="goCount(${list.ad_idx})">
							${list.ad_name}</a></h2>
							
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
				</div>
			</div>
		</div>

	</section>
	
	
	<!-- 다운 광고 추가  -->
	
	<script>
	
	function goCount(data){

		
		var xhr = new XMLHttpRequest();
		xhr.open("POST","goCount.do?data="+data);
        xhr.send(data);
        
       
	}
	</script>

	
	
	
	
	
<!-- 	
	<section>
		<div class="container">

			<div class="row">
				<div class="col-xs-12" style="text-align: center;">
					<div class="spinner" id="wait"></div>
				</div>
				더보기 버튼
				<div class="col-xs-12" style="text-align: center;">
					<button type="button" class="btn btn-primary" id="more">More
						List..</button>
				</div>
			</div>
		</div>

	</section> -->
	<!-- end main -->
	<input type="hidden" id="session_idx" value="${sessionScope.useridx }">
	<input type="hidden" id="session_name" value="${sessionScope.username }">
	<div id="galleryModal" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true" style="border: solid; overflow: auto; background-color: rgba(0, 0, 0, 0.2);">
		<div style="margin: 10% 10%;">
				<div class="container" style="width: 100%; height:100%; font-size: 15px; overflow: hidden; background-color:white;">
					<div class="row">
						<!-- 사진 -->
						<div class="col-xs-7" align="center"
							style="margin-top: 10px; float: left; margin-bottom: 10px; overflow: hidden;" id="detail_media">
							
						</div>

						<!-- 내용 -->
						<input type="hidden" id="c_idx" value="">
						<div class="col-xs-5"
							style="margin-top: 10px; margin-bottom: 10px;">
							<div class="col-sm-12" id="cntInfoBar">
								<span class="avatar">
								<img src="js/profile.png" alt="" id="pf" style="
								border-radius: 70px; 
								-moz-border-radius: 70px;
								-khtml-border-radius: 70px;
								-webkit-border-radius: 70px;
								width:50px; height:50px;
								"/>
								
							</span> <label id="c_writer" style="width:50px;"></label> <label id="c_date" style="width:100px; margin-left:10px;"></label><span>
                           <button class="btn btn-info" id="myBtn"
                              style="background: #6368ff;">· · · </button> <!-- The Modal -->
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
							
							<div class="col-sm-12" id="cntInfoBar"
								style="overflow: auto; height: 70px;">
								<span><a id="c_htag"></a></span>
							</div>
							
							<div class="col-sm-12" id="cntInfoBar">
								<span><a href="#" onclick="like()">
				<img src="" id="like_Img" width="40px" height="40px;" style="margin-left: 15px; margin-top: 10px; width: 30px; height: 30px;"></a></span>
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