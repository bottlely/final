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
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <link href="assets_main/css/jquery.autocomplete.css" rel="stylesheet" />
<script type="text/javascript" src="js/httpRequest.js"></script>

  
  <title>MARS</title>
    <!--     Font Awesome     -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

    <link href='http://fonts.googleapis.com/css?family=Grand+Hotel' rel='stylesheet' type='text/css'>
    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
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
        #peoplesearch .peoplesearchtable{
          width:645px;
        margin:0px auto;
        }
        #peoplesearch .peoplesearchtable tr{
       
       border-bottom: 1px solid #ddd;
        }
        #peoplesearch .peoplesearchtable tr td{
        height: 70px;
        width:100px;
        font-size:12px;
        text-align: left;
        padding-left:20px;
        }
        #peoplesearch .peoplesearchtable tr td img{
        border-radius: 100%;
        width:60px;
        height:60px;
        
        }
    </style>
</head>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script> 
         function shome(d){
             document.getElementById('ppp').src='myHomeForm.do?useridx='+d;
              var div = $("#mypage2");
               div.animate({right: '0px'}, "fast");
               div.animate({height: '100%'}, "slow");
               div.animate({width:'toggle'}, "slow");
          }
         
         function htag(name){
            var htagSearch = document.getElementById("htagSearch");
            var peopleSearch = document.getElementById("peoplesearch");
            
            htagSearch.style.display = 'block';
            peopleSearch.style.display = 'none';
            
            sendRequest("search.do?name="+name, null, search, 'GET');
         }
         
         function mtag(name){
            var htagSearch = document.getElementById("htagSearch");
             var peopleSearch = document.getElementById("peoplesearch");
             
             htagSearch.style.display = 'none';
             peopleSearch.style.display = 'block';
             
             sendRequest("mtagSearch.do?name="+name, null, memberSearch, 'GET');
         }

         function memberSearch(){
            if(XHR.readyState==4){
                 if(XHR.status==200){
                    var data = XHR.responseText;
                    var lists = eval('('+data+')');
                    var table = document.getElementById('peopleTable');
                    var str = '<tr><td>프로필 사진</td><td>이름(한줄소개)</td><td>생년월일</td><td>성별</td><td></td></tr>';
                   
                    if(lists.find.length == 0){
                        str += '<tr><td colspan="5" style="text-align: center;">찾으시는 회원이 존재하지 않습니다.</td></tr>';
                    }else{
                       for(var i = 0; i < lists.find.length; i++) {
                          var l = lists.find[i];
                          if(l.gender == 1){
                        	  if(l.intro != null){
                              str +=  '<tr><td><img src="myHomeFolder/profile_img/' + l.profile_img + '"></td><td>' + l.name + '<br>' + l.intro + '</td><td>' + l.birth_y + '년 ' + l.birth_m + '월 ' + l.birth_d + '일</td><td>남자</td><td><input type="button" value="View" id="shome" onclick="shome('+ l.idx +')"></td></tr>'  
                        	  }else{
                        		  str +=  '<tr><td><img src="myHomeFolder/profile_img/' + l.profile_img + '"></td><td>' + l.name + '<br>' + ' ' + '</td><td>' + l.birth_y + '년 ' + l.birth_m + '월 ' + l.birth_d + '일</td><td>남자</td><td><input type="button" value="View" id="shome" onclick="shome('+ l.idx +')"></td></tr>'  
                        	  }
                          }else{
                        	  if(l.intro != null){
                             str +=  '<tr><td><img src="myHomeFolder/profile_img/' + l.profile_img + '"></td><td>' + l.name + '<br>' + l.intro + '</td><td>' + l.birth_y + '년 ' + l.birth_m + '월 ' + l.birth_d + '일</td><td>여자</td><td><input type="button" value="View" id="shome" onclick="shome('+ l.idx +')"></td></tr>'
                        	  }else{
                        		  str +=  '<tr><td><img src="myHomeFolder/profile_img/' + l.profile_img + '"></td><td>' + l.name + '<br>' + ' ' + '</td><td>' + l.birth_y + '년 ' + l.birth_m + '월 ' + l.birth_d + '일</td><td>여자</td><td><input type="button" value="View" id="shome" onclick="shome('+ l.idx +')"></td></tr>'
                        	  }
                          }
                       }
                    }
                    
                    table.innerHTML = str;
                 }
            }
         }
         
         function search(){
             if(XHR.readyState==4){
                  if(XHR.status==200){
                     var data = XHR.responseText;
                     var lists = eval('('+data+')');
                     var div = document.all.htagSearch;
                     var str = '';
                     
                     if(lists.find.length == 0){
                        str = "찾으시는 해시태그가 존재하지 않습니다.";
                     }else{
                        for(var i = 0; i < lists.find.length; i++){
                           var l = lists.find[i];
                          
                           
                           if(l.category == 1){
                         	  str += '<input type="hidden" id="category_'+ l.content_idx +'" value="'+l.category+'"><input type="hidden" id="date_'+ l.content_idx +'" value="'+l.writetime+'"><input type="hidden" id="path_'+l.content_idx+'" value="myHomeFolder/content/'+l.path+'"><input type="hidden" id="profile_'+l.content_idx+'" value="myHomeFolder/profile_img/'+l.profile+'"><input type="hidden" id="writer_'+l.content_idx+'" value="'+l.writer+'"><input type="hidden" id="content_'+l.content_idx+'" value="'+l.content+'"><input type="hidden" id="memberidx_'+ l.content_idx +'" value="'+l.member_idx+'"> <div class="col-md-4 col-sm-4 col-xs-12"> <div class="works" style="height: 431px; width:360px;"> <img src="myHomeFolder/content/' + l.path + ' alt="" style="width: 431px; height: 431px;"> <div class="work-overlay text-center"> <div class="overlay-caption"> <h4>HASH</h4> <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="' + l.path + '" onclick="openpic(' + l.content_idx + ')"><p>' + l.content + '</p></a></div></div></div> </div> ';
                          }else if(l.category == 2){
                         	 str += '<input type="hidden" id="category_'+ l.content_idx +'" value="'+l.category+'"><input type="hidden" id="date_'+ l.content_idx +'" value="'+l.writetime+'"><input type="hidden" id="path_'+l.content_idx+'" value="myHomeFolder/content/'+l.path+'"><input type="hidden" id="profile_'+l.content_idx+'" value="myHomeFolder/profile_img/'+l.profile+'"><input type="hidden" id="writer_'+l.content_idx+'" value="'+l.writer+'"><input type="hidden" id="content_'+l.content_idx+'" value="'+l.content+'"><input type="hidden" id="memberidx_'+ l.content_idx +'" value="'+l.member_idx+'"> <div class="col-md-4 col-sm-4 col-xs-12"> <div class="works" style="height: 431px; width:360px;"><video autoplay="autoplay" muted loop="loop" style="width:100%; height:100%;  "><source src="myHomeFolder/content/'+l.path+'"type="video/mp4"></video> <div class="work-overlay text-center"> <div class="overlay-caption"> <h4>HASH</h4> <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="' + l.path + '" onclick="openpic(' + l.content_idx + ')"><p>' + l.content + '</p></a></div></div></div> </div> ';
                          }else if(l.category == 3){
                         	 str += '<input type="hidden" id="category_'+ l.content_idx +'" value="'+l.category+'"><input type="hidden" id="date_'+ l.content_idx +'" value="'+l.writetime+'"><input type="hidden" id="path_'+l.content_idx+'" value="myHomeFolder/content/'+l.path+'"><input type="hidden" id="profile_'+l.content_idx+'" value="myHomeFolder/profile_img/'+l.profile+'"><input type="hidden" id="writer_'+l.content_idx+'" value="'+l.writer+'"><input type="hidden" id="content_'+l.content_idx+'" value="'+l.content+'"><input type="hidden" id="memberidx_'+ l.content_idx +'" value="'+l.member_idx+'"> <div class="col-md-4 col-sm-4 col-xs-12"> <div class="works" style="height: 431px; width:360px;"><div style="background-color: white; height: 431px; width:100%; display: table; "><h3 style="display: table-cell; vertical-align: middle; text-align: center;">'+l.path+'</h3></div> <div class="work-overlay text-center"> <div class="overlay-caption"> <h4>HASH</h4> <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="' + l.path + '" onclick="openpic(' + l.content_idx + ')"><p>' + l.content + '</p></a></div></div></div> </div> ';
                          } 
                    }
                     
                     
                  }
                     div.innerHTML = str;
             }
          }
         }
         
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
                        
                        document.getElementById('c_writer').innerHTML = writer;
                        document.getElementById('c_content').innerHTML = content;
                        document.getElementById('c_date').innerHTML = date;
                        
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
                           var content_idx = document.getElementById("c_idx").value;

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
         

</script> 
<body onload="htag('${name}')">
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
					style="background: #935d8c; height: 100%; width: 28%; position: absolute; float: left; display: none; z-index: 4">
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
								

										</ul>
									</div>
								</li>
								
               </ul>


        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>
</div><!--  end navbar -->
</header>




   <section id="latest-works">
   <div class="container">
      <div class="row">

      </div>
      <div class="row text-center">
         <div class="works-category"  data-sr='enter top, wait 0.2s'>
            <ul class="statistics" style="width:700px;height:70px;margin:0px auto;">
               <li class="style1"><a href="#" data-filter=".photo" onclick="mtag('${name}')" >PEOPLE</a></li>
               <li class="style2"><a href="#" data-filter=".viedeo" onclick="htag('${name}')">HASH</a></li>
            </ul>
         </div>

            <div class="works-area" >
            <c:set var="txtfind" value="${find }" /> 
<%-- <form name="reSearch" action="membersearch.do">
<input type="text" name="name" value="${name}"><input type="submit" value="검색"><br>
 <c:forEach var="txtfind" items="${txtfind }" begin="0" end="0"> 
   <input type="button" value="사람" onclick="mtag('${name}')">
   <input type="button" value="hash" onclick="htag('${name}')">
   
 </c:forEach> 
   <table border="1px">
      <c:if test="${empty find}">
         <input type="button" value="사람" onclick="mtag('${name}')">
         <input type="button" value="해시태그" onclick="htag('${name}')">
         <tr>
            <td colspan="4" align="center">찾으시는 사람이 존재하지 않습니다.</td>
         </tr>
      </c:if>
      <c:forEach var="find" items="${find}">
         <tr onclick="pageOpen(${find.idx})">
            <td>${find.name}</td>
         </tr>
      </c:forEach>
   </table>
</form>
             --%>

         </div> 
      </div>
      </div>
      
      <!-- 서치결과뜨는곳(사람) -->
      <div id="peoplesearch">
      
      <table class="peoplesearchtable" id="peopleTable">
         <tr>
            <td>프로필 사진</td>
            <td>이름 (한줄 소개)</td>
            <td>생년월일</td>
            <td>성별</td>
            <td></td>
         </tr>
      </table>
      </div>
     
         <div id="htagSearch" style="display:none; margin-left: 80px; ">
            <!-- 결과사진 foreach로 뿌려주세요 -->
            
            
            
         </div>
    
</section>
  <section>
  <div class="container">
   
    </div>
</div>
  
  </section>
<!-- end main -->
<!-- 
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
		<div style="margin: 2% 10%;">
			<section id="viewForm" style="overflow: auto;">
				<div class="container" style="width: 100%; font-size: 15px; overflow: hidden;">
					<div class="row">
						<!-- 사진 -->
						<div class="col-xs-7"
							style="margin-top: 10px; float: left; margin-bottom: 10px; overflow: hidden; height:440px;" id="detail_media">
							
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
								</span> &nbsp;<label id="c_writer"></label> &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label id="c_date">2017</label><span>
									&nbsp;&nbsp;<button class="btn btn-info" id="myBtn"
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
				<img src="" id="like_Img" width="40px" height="40px;" style="margin-left: 15px; margin-top: 10px;"></a><input type="button" value="발자취" onclick="like()"><input type="text" id="likeCount" value="" readonly style="border: 0px;"></span>
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
