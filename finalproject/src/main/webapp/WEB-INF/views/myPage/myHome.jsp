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
	background-color: #ffffff;
}

#pf {
	width: 50px;
	heigth: 50px;
}

#pf2 {
	width: 50px;
	height: 50px;
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
	background-color:blue;
	margin: auto;
	padding: 0;
	
	box-shadow:none;
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

/*   ===========================================================
   06. Latest Works
   =========================================================== */
.works-category {
   margin-bottom: 65px;
}

.works-category li {
   font-size: 16px;
   padding-left: 12px;
   padding-right: 12px;
}

.works-category li .current {
   color: #C0301C;
   text-decoration: none;
}

.works {
   margin-top: 30px;
   position: relative;
}

.work-overlay {
   opacity: 0;
   background: rgba(255, 255, 255, 0.5);
   position: absolute;
   left: 0;
   right: 0;
   top: 0;
   bottom: 0;
   /*to Centralize*/
   display: flex;
   justify-content: center;
   flex-direction: column;

   -webkit-transition: 400ms;
   -moz-transition: 400ms;
   -ms-transition: 400ms;
   -o-transition: 400ms;
   transition: 400ms;
}

.overlay-caption {
   margin: 0 auto;
   color: #fff;
}

.overlay-caption p {
   font-size: 12px;
}

.overlay-caption {
   padding-top: 10px;
   -webkit-transition: 300ms ease-in-out;
   -moz-transition: 300ms ease-in-out;
   -ms-transition: 300ms ease-in-out;
   -o-transition: 300ms ease-in-out;
   transition: 300ms ease-in-out;
}

a.btn-view {
   font-family: 'Roboto Slab', serif;
   text-align: left;
   padding-left: 26px;
   font-size: 14px;
   width: 100px;
   height: 40px;
   line-height: 40px;
   border: 1px solid #fff;
   display: block;
   letter-spacing: 1px;
   -webkit-transition: 20ms;
   -moz-transition: 20ms;
   -ms-transition: 20ms;
   -o-transition: 20ms;
   transition: 20ms;

}

.btn-view i {
   font-size: 17px;
   -webkit-transition: 300ms;
   -moz-transition: 300ms;
   -ms-transition: 300ms;
   -o-transition: 300ms;
   transition: 300ms;

}

.works:hover .work-overlay {
   opacity: 1;
}

.works:hover .overlay-caption {
   padding-top: 0px;
   margin-bottom: 10px;
}

.btn-view:hover {
   background: #fff;
   color: #c0301c;
}

.btn-view:hover i {
   padding-left: 5px;
   opacity: 1;
}

/* Statistics */

   .statistics {
      display: -moz-flex;
      display: -webkit-flex;
      display: -ms-flex;
      display: flex;
      width: 100%;
      margin: 0 0 3em 0;
      padding: 0;
      list-style: none;
      cursor: default;
   }

      .statistics li {
         -moz-flex: 1;
         -webkit-flex: 1;
         -ms-flex: 1;
         flex: 1;
         padding: 1.5em;
         color: #ffffff;
         text-align: center;
      }

         .statistics li.style1 {
            background-color: #efa8b0;
         }

         .statistics li.style2 {
            background-color: #c79cc8;
         }

         .statistics li.style3 {
            background-color: #a89cc8;
         }

         .statistics li.style4 {
            background-color: #9bb2e1;
         }

         .statistics li.style5 {
            background-color: #8cc9f0;
         }

         .statistics li strong, .statistics li b {
            display: block;
            font-size: 2em;
            line-height: 1.1;
            color: inherit !important;
            font-weight: 300;
            letter-spacing: -0.025em;
         }

         .statistics li:first-child {
            border-top-left-radius: 8px;
            border-bottom-left-radius: 8px;
         }

         .statistics li:last-child {
            border-top-right-radius: 8px;
            border-bottom-right-radius: 8px;
         }

         .statistics li .icon {
            display: inline-block;
         }

            .statistics li .icon:before {
               font-size: 2.75rem;
               line-height: 1.3;
            }

      @media screen and (max-width: 980px) {

         .statistics li strong, .statistics li b {
            font-size: 1.5em;
         }

      }

      @media screen and (max-width: 736px) {

         .statistics {
            display: block;
            width: 20em;
            max-width: 100%;
            margin: 0 auto 2em auto;
         }

            .statistics li:first-child {
               border-bottom-left-radius: 0;
               border-top-right-radius: 8px;
            }

            .statistics li:last-child {
               border-top-right-radius: 0;
               border-bottom-left-radius: 8px;
            }

            .statistics li .icon:before {
               font-size: 3.75rem;
            }

            .statistics li strong, .statistics li b {
               font-size: 2.5em;
            }
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
         		table.setAttribute("id", "myfeedtable");
         		table.style.cellSpacing="10px";
         		table.style.margin="0px auto";
         	var tr=document.createElement('tr');
         	table.appendChild(tr);
         	var count=0;
         	for(var i=0; i<data.list.length; i++){
         		count++;
         		var td=document.createElement('td');
         			td.style.marginRight="10px";
         		var patharr=data.list[i].path.split('?');
        			var img=document.createElement('img');
        				img.setAttribute("src", "myHomeFolder/content/"+patharr[0]);
        				img.setAttribute("width", "200px");
        				img.setAttribute("height", "200px");
        			td.appendChild(img);
        			tr.appendChild(td);
        				
        			}myFeedDiv.appendChild(table); 
       
         }
      }
   }
}
</script>
<script>
//상세보기function
function openpic(content_idx){
        	 document.getElementById('c_idx').value=content_idx;
             var category = document.getElementById('category_'+content_idx).value;
             var path = document.getElementById('path_'+content_idx).value;
             var date = document.getElementById('date_'+content_idx).value;
             var profile = document.getElementById('profile_'+content_idx).value;
             var session_idx = '${sessionScope.useridx}';
            // var htag;
            
           /*  if(document.getElementById('htag_'+content_idx)==null){
            	 htag='';
             }else{
            	 htag= document.getElementById('htag_'+content_idx).value;
             } */
			             
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
            	img_slide.setAttribute("width", "550px");
            	img_slide.setAttribute("height", "480px");
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
            	 video_slide.setAttribute("width", "550px");
             	 video_slide.setAttribute("height", "480px");
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
               // document.getElementById('c_htag').innerHTML = '#'+htag;
                
              //  $('#c_htag').attr("href",'membersearch.do?name='+htag);
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
                               str += '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px; margin-right:10px; float:left;">'
                               + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px; font-size:13px; float:left;" size="10" readonly >' 
                               + '<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px; font-size:13px; float:left;"  readonly>'
                               +'<input type="button" id="' + l.idx + 'update_ok" value="수정" style="display: none;" onclick="update_Reply(' + l.idx + ')">' 
                               + '<br>' + '<input type="text" id="'+l.idx+'text" style="display: none;"><input type="button" value="작성" id="'+l.idx+'btn" onclick="re_Reply('+l.idx+')"  style="display: none;">' 
                               + '<input type="button" value="답글" onclick="ondisplay('+l.idx+')">' + '<input type="button" value="수정" onclick="updateDisplay('+l.idx+')">' 
                               + '<input type="button" value="삭제" onclick="delete_Reply('+l.idx+')">' + '<hr>';   
                            }else{
                               str += '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;  margin-right:10px; float:left;">' 
                               + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px; font-size:13px; float:left;" size="10" readonly>' 
                               + '<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px; font-size:13px;" readonly>' 
                               + '<br><input type="text" id="'+l.idx+'text" style="display: none;"><input type="button" value="작성" id="'+l.idx+'btn" onclick="re_Reply('+l.idx+')"  style="display: none;">' 
                               + '<input type="button" value="답글" onclick="ondisplay('+l.idx+')">' 
                               + '<hr>';
                            }
                            
                         }else{
                            if(l.name == userName){
                               str += '=>' 
                               + '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;  margin-right:10px; float:left;">' 
                               + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px; font-size:13px; width:30px; float:left;" size="10" readonly>'
                               +'<input type="text" id="' + l.idx + 'update_content" value="'+l.content+'" style="border: 0px; font-size:13px; width:100px;" readonly>'
                               +'<input type="button" id="' + l.idx + 'update_ok" value="수정" style="display: none;" onclick="update_Reply(' + l.idx + ')">'
                               + '<br>' + '<input type="button" value="수정" onclick="updateDisplay('+l.idx+')">' 
                               + '<input type="button" value="삭제" onclick="delete_Reply('+l.idx+')">' 
                               + '<hr>';
                            }else{
                               str += '=>'
                               + '<img src="myHomeFolder/profile_img/'+l.profile_img+'" style="border-radius: 50%; height: 30px; width: 30px;  margin-right:10px; float:left;">'
                               + '<input type="text" name="reply_name" value="'+l.name+'" style="border: 0px; font-size:13px; width:50px; float:left;" size="10" readonly> ' 
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
          <c:if test="${block ne -1}">
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
<c:if test="${sessionScope.useridx eq mhdto.getMember_idx()}">
<span id="plusicon">

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
</c:if>
</div>


<!-- 캘린더아이콘 -->
<div class="calendaricon" style="width:300px;height:50px;">
   <input type='text' name="calendar" class="datepicker-here" style="width: 150px; float: left;">
   <button style="dispaly:flex;margin-left:-100px;border:0px;padding: none;border-color: #ffffff;" onclick="contentDate()">
   <i class="fa fa-calendar" style="font-align: center;font-size: 25px;color: #BDBDBD;padding: none;"></i></button>
</div>


                     
<!-- 아이디,한줄소개 -->
   <h1>${mhdto.getName()}</h1><br>
   <h3>${mhdto.getIntro()}</h3>
   
</header>
</section>
   <!-- 내피드 -->         
  <div class="container">
    <div class="row"></div>
     <div class="row text-center" >
      <div class="works-category" data-sr='enter top, wait 0.2s'>
        <ul class="statistics">
          <li class="style1"><a href="#" data-filter="*" class="current">All</a></li>
          <li class="style2"><a href="# " data-filter=".photo">PHOTO</a></li>
          <li class="style3"><a href="#" data-filter=".video">VIDEO</a></li>
          <li class="style4"><a href="#" data-filter=".text">TEXT</a></li>
         </ul>
       </div>


<!--  전체 피드 목록 -->
      <div class="works-area" id="myfeed">
  <div id="myfeedtable">
               
      <c:if test="${empty contentList}"><div style="margin-left: 330px;">게시글 없음</div></c:if>
     
       <c:if test="${!empty contentList}">
        <c:forEach var="contentList" items="${contentList }">

<!--사진  -->
        <c:if test="${contentList.category==1 }">        
         <div class="col-md-4 col-sm-4 col-xs-4  photo">
           <div class="works" style="height: 200px;">
            <a href="#myModal" data-toggle="modal" data-target="#myModal" data-src="${contentList.path }" onclick="openpic(${contentList.content_idx})">
            <img src="myHomeFolder/content/${contentList.path}" alt="" style="width: 200px; height: 200px;">
               <div class="work-overlay text-center">
                <div class="overlay-caption">
                <h4>PHOTO</h4>
                 <input type="hidden" id="category_${contentList.content_idx }" value="${contentList.category }"> 
                 <input type="hidden" id="date_${contentList.content_idx }" value="${contentList.writetime }"> 
				 <input type="hidden" id="path_${contentList.content_idx }" value="myHomeFolder/content/${contentList.path }"> 
				 <input type="hidden" id="profile_${contentList.content_idx }" value="myHomeFolder/profile_img/${contentList.profile }">
				 <input type="hidden" id="writer_${contentList.content_idx }" value="${contentList.writer }"> 
				 <input type="hidden" id="content_${contentList.content_idx }" value="${contentList.content }">
				 <input type="hidden" id="memberidx_${contentList.content_idx }" value="${contentList.member_idx }">            
                 <p>${contentList.content}</p> 
                </div>
                </div>                
               </a>
             </div>
             </div>
            </c:if>  
             
<!-- 동영상 -->
         <c:if test="${contentList.category==2 }">
		  <div class="col-md-4 col-sm-4 col-xs-4  video">
			<div class="works" style="height: 200px;">
			<a href="#myModal" data-toggle="modal" data-target="#myModal" data-src="${contentList.path }" onclick="openpic(${contentList.content_idx})">
             <video autoplay="autoplay" loop="loop" style="width:200px; height:200px;">
				<source src="myHomeFolder/content/${contentList.path }" type="video/mp4">
			 </video>
			<div class="work-overlay text-center">
			<div class="overlay-caption">
				<h4>VIDEO</h4>
				<input type="hidden" id="category_${contentList.content_idx }" value="${contentList.category }"> 
                 <input type="hidden" id="date_${contentList.content_idx }" value="${contentList.writetime }"> 
				<input type="hidden" id="path_${contentList.content_idx }" value="myHomeFolder/content/${contentList.path }"> 
				<input type="hidden" id="writer_${contentList.content_idx }" value="${contentList.writer }"> 
				<input type="hidden" id="profile_${contentList.content_idx }" value="myHomeFolder/profile_img/${contentList.profile }">
				<input type="hidden" id="content_${contentList.content_idx }" value="${contentList.content }">
				<input type="hidden" id="memberidx_${contentList.content_idx }" value="${contentList.member_idx }">
				<p>${contentList.content}</p>
			</div>
			</div>
			</a>
		   </div>
		   </div>
		</c:if>
		
<!-- 텍스트 -->
		<c:if test="${contentList.category==3 }">
						<div class="col-md-4 col-sm-4 col-xs-4  text">
								<div class="works" style="height: 200px;">
								<a href="#myModal" data-toggle="modal" data-target="#myModal" data-src="${contentList.path }" onclick="openpic(${contentList.content_idx})">
								      <div style="background-color: gray; height: 200px; width:200px; display: table; ">
                       					 <h3 style="display: table-cell; vertical-align: middle;">${contentList.path }</h3>
                       				 </div>
									<div class="work-overlay text-center">
										<div class="overlay-caption">
											<h4>TEXT</h4>
											 <input type="hidden" id="category_${contentList.content_idx }" value="${contentList.category }"> 
                 <input type="hidden" id="date_${contentList.content_idx }" value="${contentList.writetime }"> 
											 <input type="hidden" id="path_${contentList.content_idx }" value="${contentList.path }"> 
											 <input type="hidden" id="writer_${contentList.content_idx }" value="${contentList.writer }"> 
											 <input type="hidden" id="profile_${contentList.content_idx }" value="myHomeFolder/profile_img/${contentList.profile }">
											 <input type="hidden" id="content_${contentList.content_idx }" value="${contentList.content }">
											 <input type="hidden" id="memberidx_${contentList.content_idx }" value="${contentList.member_idx }">
										
										</div>
									</div>
										</a>
								</div>
							</div>
						</c:if>
        </c:forEach>
        </c:if>
        </div>
        </div>
       </div>
       </div>       

	<!-- The Modal 상세보기 -->
	<input type="hidden" id="session_idx" value="${sessionScope.useridx }">
	<input type="hidden" id="session_name" value="${sessionScope.username }">
	
	 <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-hidden="true" style="border: solid; overflow: auto; background-color: rgba(0, 0, 0, 0.2);">
	  <div style="margin: 20% 10%;">
		<section id="viewForm" style="overflow: auto;height:auto;">
			<div class="container" style="width: 100%; font-size: 15px; overflow: hidden;">
			
		<!-- 사진 -->
		<div style="margin:10px auto;float: middle;overflow: hidden;" id="detail_media"></div>

		<!-- 내용 -->
		<input type="hidden" id="c_idx" value="">
		<div class="col-xs-12" style="margin-bottom: 10px;">
		 <div class="col-sm-12" id="cntInfoBar" style="width:100%;height:80px;text-align:left;margin-bottom:0;padding-top:10px;">
			<!-- 프로필사진 -->
			<span class="avatar"> 
			<img src="js/profile.png" alt="" id="pf" style="border-radius: 50%;-moz-border-radius: 50%;-khtml-border-radius: 50%;
                            -webkit-border-radius: 50%;float:left;width:50px;height:55px;"/>
			</span> &nbsp;
			
			<!-- 작성자 -->
			<label id="c_writer" style="float:left; width:80px;margin:0;padding-left:15px;padding-top:10px;"></label> 
			
			<!-- 날짜 -->
			<label id="c_date" style="float:left;margin-bottom:0;margin-left:80px;padding-top:10px;"></label><span>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="btn btn-info" id="myBtn" style="background: #ffff;padding-top:10px;">· · · </button> <!-- The Modal -->
			<div id="myModal2" class="modal2">

			<!-- Modal content // contentMore -->
			<div class="list-group" style="width: 20%; margin: 5% auto;" id="contentMore">
			<span class="close">&times;</span>
			</div>
			</div>
			</span>
			</div>
		
		
			<!-- 본문 -->
	  		<div class="col-sm-12" id="cntInfoBar" style="overflow: auto;">
			<span><label id="c_content" style="margin-bottom:0;padding-top:30px; height: 80px;"></label></span>
							</div>
							
							<div class="col-sm-12" id="cntInfoBar">
								<span><a href="#" onclick="like()">
				<img src="" id="like_Img" width="30px" height="30px;"></a></span>
							</div>

	
							<div class="col-md-4 col-sm-12 col-xs-12" id="cntInfoBar"
								style="overflow: auto; height: 200px;width:100%;float:left;">
								<div class="col-sm-12" id="reply_List" style="width:100%;float:left;padding:0;margin:0;">
									<span class="avatar" style="width:100%;float:left;"> 
									</span>
								</div>


							</div>

							<div class="col-md-4 col-sm-12 col-xs-12">
								<div class="input-group">
									<input id="content" type="text" class="form-control"
										name="content" placeholder="댓글 입력"> <label
										class="input-group-addon" onclick="addReply()"
										onkeydown="showList()">작성</label>
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

//When the user clicks the button, open the modal 
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
<script type="text/javascript"
   src="assets_main/owl-carousel/owl.carousel.min.js"></script>
<script type="text/javascript" src="assets_main/js_1/main.js"></script>
<script type="text/javascript"
   src="assets_main/js/jquery.stellar.min.js"></script>


<script src="assets_main/js_1/ct-navbar.js"></script>
<!--Parallax-->
<!--IsoTop-->
<script type="text/javascript" src="assets_main/js/isotope.pkgd.min.js"></script>
<!--Typed js-->
<script type="text/javascript" src="assets_main/js/typed.js"></script>
<!--Smooth Scroll-->
<script type="text/javascript" src="assets_main/js/smooth-scroll.js"></script>
<!--Reveal JS-->
<script type="text/javascript" src="assets_main/js/scrollReveal.min.js"></script>
</html>