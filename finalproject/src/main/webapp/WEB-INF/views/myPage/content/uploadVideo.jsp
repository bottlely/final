<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style type="text/css">
 
	input[type=file] {
	        display: none;
	 } 
	.file_input label{
		position:relative;
		cursor:pointer;
		display:inline-block;
		vertical-align:middle;
		overflow:hidden;
		width:100px;
		height:30px;
		text-align:center;
		line-height:30px;
	}
	.file_input label input{
		position:absolute;
		width:0;
		height:0;
		overflow:hidden;
	}

</style>
<script src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript">
    
   var not_upload = [];
   var sel = "";
  
   function Search(e){
	   
    		 var f = e.files[0];
    		 
	              if(!f.type.match("video/mp4")) {
	                  alert("확장자는 mp4,webm,ogg 동영상 확장자만 가능합니다.");
	                  return;
	              }
	              
	              if(f.size > 104857600){
	              	alert("업로드 용량을 초과하였습니다.");
	                  return;
	              }
	            
	          	var data = new FormData();
	          	data.append("video", f);
	          	data.append("useridx", '${sessionScope.useridx}');
			            
	          	var xhr = new XMLHttpRequest();
		            xhr.open("POST","videoThumbnail.do");
		            xhr.send(data);
		            xhr.onload = function(e) {
		                if(this.status == 200) {
		                	var jsonResponse = JSON.parse(e.currentTarget.responseText);
		                	
		                	console.log(jsonResponse["fileName"]);
		 		        	var source = document.getElementById('src');
		 		        	source.src = "myHomeFolder/content/"+jsonResponse["fileName"];
		 		        	
		 		        	not_upload.push(jsonResponse["fileName"]);
		                	sel = jsonResponse["fileName"];
		 		        	
		 		        	var player = document.getElementById('player');
		 		         	player.load();
		 		           	player.play();
		 		           	player.loop = true;
		                }
		            }
    		}
        
        function submitAction() {
        	
        	 var data = new FormData();
        	 
        	 data.append("useridx", '${sessionScope.useridx}');
        	 
        	 var tag =  document.getElementById("tag");
			 data.append("tag",tag);
        	 
			 var content =document.getElementById("content");
			 data.append("content",content);
			 
             data.append("not_upload",not_upload);
             data.append("sel",sel);
             
             var xhr = new XMLHttpRequest();
 	        xhr.open("POST","uploadVideo.do");
 	        xhr.send(data);
 	          xhr.onload = function(e) {
 	             if(this.status == 200) {
 	               var jsonResponse = JSON.parse(e.currentTarget.responseText);
 	              if(jsonResponse["result"] > 0){
                  	alert('업로드 완료!');
                  	document.getElementById('myHome').submit();
                  }else{
                  	alert('업로드 실패!');
                  }
 	              }
 	         }
        
        }
        
        function play(){
        	console.log("play");
         	var player = document.getElementById('player');
         	player.load();
           	player.autoplay();
        }

        function clearText(field){
        	if(field.defaultValue == field.value) field.value = '';
        	else if(field.value == '') field.value = field.defaultValue;
        }
    </script>
</head>

<body>
	<h2>${writer}</h2>
    
   <img src="myHomeFolder/profile_img/${profile}" width="50px" height="50px"/>
    
     <select name="coverage">
    <option value="0">전채공개</option>
    <option value="1">친구만</option>
    <option value="2">특정 대상</option>
    <option value="3">제외할 대상</option>
    <option value="4">나만</option>
	</select>
	
    <div class="file_input">
    	<label>
    		파일 찾기
    		<input type="file" id="video" onchange="Search(this)">
    	</label>
    </div>
    
    <input id="tag" type="text" value="태그" onFocus="clearText(this)" onBlur="clearText(this)">
    <textarea id="content" onFocus="clearText(this)" onBlur="clearText(this)">내용입력하세요.</textarea>

	<a href="javascript:" class="my_button" onclick="submitAction();">업로드</a>
	
	<form id="myHome" action="myHomeForm.do" method="post">
		<input type="hidden" name="useridx" value="${sessionScope.useridx}">
		<input type="submit" value="back">
	</form>
	
	 <video id="player" width="320" height="240">
      <source id="src" src="" type="video/mp4" onchange="play()"/>
	</video>
</body>
</html>
