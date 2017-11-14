<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
 
	input[type=file] {
	        display: none;
	 } 
</style>
 <script type="text/javascript" src="js/previewmodule.js" charset="utf-8"></script>
 <script type="text/javascript">
 
 
function back(){
    window.opener.location.reload();
    window.close();
 }
function uploadData(flag){
	
	var data = new FormData();
	
	if(flag){
		var pr = document.getElementById("profile").files[0];
	
	if(pr == null){
		 alert("한 개 이상의 파일을 선택해주세요.");
         return;
	}
	}else{
		var bg = null;
	}
	
	data.append("useridx", '${sessionScope.useridx}'); 
	data.append("profile",pr);
	 
     var xhr = new XMLHttpRequest();
     xhr.open("POST","profileUpload.do");
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
</script>
</head>
<body>

	<div class="container">
		<h2>프로필 사진 변경</h2>
		<button type="button" class="btn btn-warning btn-block"
			onclick="document.getElementById('profile').click();">사진 선택</button>
		<div id="preview" class="col-sm-12" style="margin: 1% 35%;"></div>
		<button type="button" class="btn btn-info btn-block"
			onclick="uploadData(true)">프로필 설정</button>
		<button type="button" class="btn btn-info btn-block"
			onclick="uploadData(false)">기본 사진으로 설정</button>
		<button type="button" class="btn btn-info btn-block" onclick="back()">취소</button>
	</div>

	<input type="file" id="profile"
		onchange="previewImage(this,'preview','150','150')">

</body>
</html>