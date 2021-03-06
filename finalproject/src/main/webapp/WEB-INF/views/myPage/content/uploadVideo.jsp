<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>


<style type="text/css">
body {
   background-color: #f2fdff;
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

input[type=file] {
   display: none;
}

.file_input label {
   position: relative;
   cursor: pointer;
   display: inline-block;
   vertical-align: middle;
   overflow: hidden;
   width: 100px;
   height: 30px;
   text-align: center;
   line-height: 30px;
}

.file_input label input {
   position: absolute;
   width: 0;
   height: 0;
   overflow: hidden;
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
<script src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript">
    
   var not_upload = [];
   var sel = "";
   
    //공개범위 사용자 정의 리스트
   var sel_list = [];
 
 	//공개범위 사용자 정의 리스트(그룹)
   var sel_list_group = [];
 
   function Search(e){
      
           var f = e.files[0];
           
                 if(!f.type.match("video/mp4")) {
                     alert("확장자는 mp4 동영상 확장자만 가능합니다.");
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
                        player.width = "320";
                        player.height = "240";
                        player.load();
                        player.play();
                        player.loop = true;
                      }
                  }
          }
        
        function submitAction() {
           
           if(not_upload.length < 1 || sel == "") {
                alert("한 개 이상의 파일을 선택해주세요.");
                return;
            } 
           
            var data = new FormData();
            
            data.append("useridx", '${sessionScope.useridx}');
            
            var htag =  document.getElementById("htag").value;
			 data.append("htag",htag);
       	 
			 var mtag =  document.getElementById("mtag").value;
			 data.append("mtag",mtag);
            
          var content =document.getElementById("content").value;
          data.append("content",content);
          
          var coverage_state = document.getElementById("coverage_state").value;
			 data.append("coverage_state",coverage_state);
			 
			 if(coverage_state == 2 || coverage_state == 3){
 				data.append("coverage_list",sel_list);
 				data.append("coverage_list_group",sel_list_group);
 			 }
			 
			 var profile = '${profile}';
			 data.append("profile",profile);
          
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
                     window.opener.location.reload();
                   	 window.close();
                  }else{
                     alert('업로드 실패!');
                  }
                  }
             }
        
        }
        
        function clearText(field){
           if(field.defaultValue == field.value) field.value = '';
           else if(field.value == '') field.value = field.defaultValue;
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
      <div class="row" style="padding-top: 10px;">
         <div class="col-sm-12">
            <span class="avatar"> <img
					src="myHomeFolder/profile_img/${profile}" alt="" id="pf"
					style="border-radius: 70px; -moz-border-radius: 70px; -khtml-border-radius: 70px; -webkit-border-radius: 70px; width: 50px; height: 50px;" />
				</span> <label id="name">${writer}</label> 
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
      <div class="row">
         <div class="col-sm-12">
				<input type="text" class="form-control" id="mtag" name="mtag"
					placeholder="친구태그" onFocus="clearText(this)" onBlur="clearText(this)">
			</div>
			<div class="col-sm-12">
				<input type="text" class="form-control" id="htag" name="htag"
					placeholder="해시태그" onFocus="clearText(this)" onBlur="clearText(this)">
			</div>
         <hr>
         <div class="col-sm-12">
            <div class="form-group">
               <textarea class="form-control" rows="5" id="content" name="content"
                  placeholder="동영상에 대해 이야기 해주세요 :)" onFocus="clearText(this)"
                  onBlur="clearText(this)"></textarea>
            </div>
         </div>
      </div>
      <hr>

      <div class="row">
         <div class="col-md-12">
            <div class="file_input" style="margin-bottom: 15px;">
            <input type="button" class="btn btn-primary" value="파일 선택" onclick="document.getElementById('video').click();">
               <label><input type="file" id="video"
                  onchange="Search(this)" class="btn btn-primary">
               </label>               
            </div>
         </div>
      </div>

      <video id="player" width="1" height="1">
         <source id="src" src="" type="video/mp4"/>
      </video>
      
      <hr>
      
      <div class="row" style="padding-bottom: 10px;">
         <div class="col-sm-12">
            <input type="button" value="업로드" class="btn btn-success"
               onclick="submitAction()"> <input type="button" value="취소"
               class="btn btn-Info" onclick="back()">
         </div>
      </div>
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
						id="${follower_list.member_idx}" color="gray"><strong>${follower_list.name}</font>
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