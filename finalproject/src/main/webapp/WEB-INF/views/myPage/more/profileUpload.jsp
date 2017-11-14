<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
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
		<label>
			프로필 
			<input type="file" id="profile" onchange="previewImage(this,'preview','150','150')">
		</label>
		<div id="preview">
		</div>
		<input type="button" value="업로드" onclick="uploadData(true)">
		<input type="button" value="기본 프로필 설정" onclick="uploadData(false)">
		<input type="button" value="back" onclick="back()">
	
</body>
</html>