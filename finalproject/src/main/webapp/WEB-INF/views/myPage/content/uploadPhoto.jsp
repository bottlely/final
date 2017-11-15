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

	input[type=file] {
        display: none;
  	}
  	
  	.imgs_wrap img {
        max-width: 150px;
        margin-left: 10px;
        margin-right: 10px;
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
 <script type="text/javascript" src="js/jquery-3.1.0.min.js" charset="utf-8"></script>
    <script type="text/javascript">
    
        // 이미지 정보들을 담을 배열
        var sel_files = [];
		
        //공개범위 사용자 정의 리스트
        var sel_list = [];
        
      //공개범위 사용자 정의 리스트(그룹)
        var sel_list_group = [];

        $(document).ready(function() {
            $("#input_imgs").on("change", handleImgFileSelect);
        }); 

        function fileUploadAction() {
            console.log("fileUploadAction");
            $("#input_imgs").trigger('click');
        }

        function handleImgFileSelect(e) {

            // 이미지 정보들을 초기화
            sel_files = [];
            $(".imgs_wrap").empty();

            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);

            var index = 0;
            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")) {
                    alert("확장자는 이미지 확장자만 가능합니다.");
                    return;
                }

                sel_files.push(f);
                console.log(f);

                var reader = new FileReader();
                reader.onload = function(e) {
                    var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
                    $(".imgs_wrap").append(html);
                    index++;

                }
                reader.readAsDataURL(f);
                
            });
        }



        function deleteImageAction(index) {
            console.log("index : "+index);
            console.log("sel length : "+sel_files.length);

            sel_files.splice(index, 1);

            var img_id = "#img_id_"+index;
            $(img_id).remove(); 
        }

        function submitAction() {
             
            if(sel_files.length < 1) {
                alert("한 개 이상의 파일을 선택해주세요.");
                return;
            }   
    			
    			 var data = new FormData();
    			
    			 for(var i=0, len=sel_files.length; i<len; i++) {
    	                var name = "image_"+i;
    	                data.append(name, sel_files[i]);
    	            }
    			 
    			 data.append("image_count", sel_files.length);
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
    			 //data.append("type",1);
    			 
    	        /* $.ajax({
    	            type : 'post',
    	            url : 'uploadPhoto.do',
    	            data : data ,
    	            processData : false,
    	            contentType : false
    	           }).error(function(msg) {
    	            	alert('error: 업로드할 수 없습니다.');
    	           }).done(function(msg) {
    	           
    	            if(msg==1){
    	             	alert('정상적으로 취소처리가 되었습니다. 리스트 페이지로 이동합니다.');
    	             	document.getElementById('frm').submit();
    	            }else{
    	             alert('취소처리가 되지 않았습니다. 잠시 후에 시도해 주십시오.');
    	            }

    	           }); */
    	           
		            var xhr = new XMLHttpRequest();
		            xhr.open("POST","uploadPhoto.do");
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
	<div class="row" style="padding-top:10px;">
		<div class="col-sm-12">
			<span class="avatar">
			<img src="myHomeFolder/profile_img/${profile}" alt="" id="pf"/>
			</span>
		    <label id="name">${writer}</label>
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
			<div class="col-sm-12">
				<div class="form-group">
					<textarea class="form-control" rows="5" id="content" name="content" placeholder="사진에 대해 이야기 해주세요 :)" onFocus="clearText(this)" onBlur="clearText(this)"></textarea>
				</div>
			</div>
		</div>
		<hr>
			
	<div class="row">
		<div class="col-md-12">	
	        <div class="input_wrap" style="margin-bottom:15px;">
	        	<input type="button" class="btn btn-primary" onclick="fileUploadAction();" value="사진 선택">
	            <input type="file" id="input_imgs" multiple/>
	        </div>
	
	        <div class="imgs_wrap">
	            <img id="img" />
	        </div>
    	</div>
    </div>
    <hr>
     
    <div class="row" style="padding-bottom:10px;">
    	<div class="col-sm-12">
			<input type="button" value="업로드" class="btn btn-success" onclick="submitAction();">
			<input type="submit" value="취소" class="btn btn-Info" onclick="back()">
	
	<!--   <form id="myHome" action="myHomeForm.do" method="post">
		<input type="hidden" name="useridx" value="${sessionScope.useridx}">
		<input type="submit" value="back">
		</form>
	-->
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
			<ul class="list-group" id="myList" style="border:;">
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
