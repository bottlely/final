<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

<style>
body {
   background-color:#f2fdff;
}

.container {
   margin-top: 20px;
}

#pf {
   width: 50px;
   heigth: 50px;
}

#name {
   width: 67%;
}

select {
    width: 100px;
    height: 30px;
    padding-left: 10px;
    font-size: 12px;
    color: #006fff;
    border: 1px solid #006fff;
    border-radius: 3px;
}

.mask{
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
	overflow:scroll;
}

</style>

<script type="text/javascript">

//공개범위 사용자 정의 리스트
var sel_list = [];

//공개범위 사용자 정의 리스트(그룹)
var sel_list_group = [];

function uploadText(){
	
	var title = document.getElementById("title").value;
	var content = document.getElementById("content").value;
	
	if(title == "" || content == ""){
		 alert("제목과 내용을 모두 작성해주세요 ;)");
         return;
	}
	
	var data = new FormData();
	data.append("useridx", '${sessionScope.useridx}'); 

	var htag =  document.getElementById("htag").value;
	 data.append("htag",htag);
	 
	 var mtag =  document.getElementById("mtag").value;
	 data.append("mtag",mtag);
	
	data.append("title", title);
	data.append("content",content);

	 var coverage_state = document.getElementById("coverage_state").value;
	 data.append("coverage_state",coverage_state);
	 
	 if(coverage_state == 2 || coverage_state == 3){
			data.append("coverage_list",sel_list);
			data.append("coverage_list_group",sel_list_group);
		 }
	 
     var xhr = new XMLHttpRequest();
     xhr.open("POST","uploadText.do");
     xhr.send(data);
     xhr.onload = function(e) {
          if(this.status == 200) {
            var jsonResponse = JSON.parse(e.currentTarget.responseText);
           if(jsonResponse["result"] > 0){
              alert('업로드 완료!');
              window.opener.location.reload();
            window.close();
           }else{
              alert('업로드 실패!');
           }
           }
      }
     
}

function back(){
	window.opener.location.reload();
	window.close();
}


function fflist(e){
	
	var sel = e.options[e.selectedIndex].value;
	if(sel == 2 || sel == 3){
		 wrapWindowByMask();
	}
 }

function sel_coverage(idx,Flag){
	
	var color = document.getElementById(idx).color;
	        	
	if(color == "gray"){
	      document.getElementById(idx).color = "007bff";
	      if(!Flag){
	      	sel_list.push(idx);
	      }else{
	    	  sel_list_group.push(idx);
	      }
	}else{
	     document.getElementById(idx).color = "gray";
	     
	     if(!Flag){
	  		for(var i=0, len=sel_list.length; i<len; i++) {
		 		 if(idx == sel_list[i]){
			  		sel_list.splice(i, 1);
				 }
			}
		}else{
			for(var i=0, len=sel_list_group.length; i<len; i++) {
   		 		 if(idx == sel_list_group[i]){
   		 			sel_list_group.splice(i, 1);
   				 }
				}
	      	}
	}
}
//암막 function
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

$('.window .close').click(function (e) {
    e.preventDefault();
    $('.mask, .window').hide();
});

$('.mask').click(function () {
    $(this).hide();
    $('.window').hide();
});
});

//친구검색
$(document).ready(function(){
	  $("#myInput").on("keyup", function() {
	    var value = $(this).val().toLowerCase();
	    $("#myList li").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	  });
	});

</script>
</head>
<body>

<div class="container" style="background-color: white;">
   <div class="row" style="padding-top:10px;">
      <div class="col-sm-12">
         <span class="avatar">
         <img src="myHomeFolder/profile_img/${profile}" alt="" id="pf"/>
         </span>
          <label id="name">${cdto.writer}</label>
          <select id="coverage_state" name="coverage" onclick="fflist(this)">
             <option value="0">전체공개</option>
             <option value="1">친구만</option>
             <option value="2">특정 대상</option>
             <option value="3">제외할 대상</option>
             <option value="4">나만</option>
         </select>
      </div>
   </div>
   <hr>
   <form id="uploadForm" method="post">
      <div class="row">
         <div class="col-sm-12">
				<input type="text" class="form-control" id="mtag" name="mtag"
					placeholder="친구태그" onFocus="clearText(this)" onBlur="clearText(this)">
			</div>
			<div class="col-sm-12">
				<input type="text" class="form-control" id="htag" name="htag"
					placeholder="해시태그" onFocus="clearText(this)" onBlur="clearText(this)">
			</div>
         <div class="col-sm-12">
            <input type="text" id="title" name="title" class="form-control" placeholder="제목" required value="${cdto.path}"> 
         </div>
         <hr>
         <div class="col-sm-12">
            <div class="form-group">
               <textarea class="form-control" rows="5" id="content" name="content" placeholder="이야기 해주세요 :)" required >
               {cdto.content}
               </textarea>
            </div>
         </div>
      </div>
      
      <div class="row" style="padding-bottom:10px;">
          <div class="col-sm-12">
            <input type="button" value="업로드" class="btn btn-success" onclick="uploadText()">
            <input type="button" value="취소" class="btn btn-Info" onclick="back()">
         </div>
   </div>
   </form>
</div>
<div class="mask"></div>
	<div class="window"
		style="width: 300px; height: 400px; overflow: auto;">
		<div class="container" style="overflow: auto;">
			<h6 align="center">친구 검색</h6>
			<input class="form-control" id="myInput" type="text"
				placeholder="Search.."> <br>
			<ul class="list-group" id="myList">
				<c:forEach var="follower_list" items="${followerList}">
					<li class="list-group-item"
						onclick="sel_coverage(${follower_list.member_idx},false)"><img
						src="myHomeFolder/profile_img/${follower_list.profile_img}" alt=""
						width="20" height="20" style="border-radius: 50%"> <font
						id="${follower_list.member_idx}" color="gray"><strong>${follower_list.name}</strong></font>
					</li>
				</c:forEach>
				<hr>
				<c:forEach var="group" items="${groupList}">
						<li class="list-group-item" 
							onclick="sel_coverage('${groupList_idx[group.key]}',true)">
						<font id="${groupList_idx[group.key]}" color="gray"><strong>${group.key}</strong></font>
						</li>
						<c:forEach var="member" items="${group.value}">
							<li class="list-group-item">
								<font color="lightgray"><strong>${member.name}</strong></font>
							</li>
						</c:forEach>
					<hr>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>