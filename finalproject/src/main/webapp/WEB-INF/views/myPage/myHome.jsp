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
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script type="text/javascript" src="js/httpRequest.js"></script>
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

<!-- datepicker -->

<link href="assets_myPage/dist/css/datepicker.min.css" rel="stylesheet" type="text/css">
<script src="assets_myPage/dist/js/datepicker.min.js"></script>
<!-- Include English language -->
<script src="assets_myPage/dist/js/i18n/datepicker.en.js"></script>

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
          <c:if test="${block eq 0}">
          <tr onclick="UserHomeMore('friend_block_mypage')"><td>차단하기</td></tr>
          </c:if>
          <c:if test="${block eq 1}">
          <tr onclick="UserHomeMore('friend_unblock_mypage')"><td>차단해제</td></tr>
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
            <tr>
               <td style="background-color:blue;"></td>
               <td style="background-color:blue;"></td>
               <td style="background-color:blue;"></td>
            </tr>
         </table>
      </div>   
      
</section>

</body>
</html>