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
</head>
<script type="text/javascript">
function back(){
    window.opener.location.reload();
    window.close();
 }
function uploadData(flag){
	
	var data = new FormData();
	
	data.append("useridx", '${sessionScope.useridx}'); 
	data.append("intro",document.getElementById("intro").value);
	 
     var xhr = new XMLHttpRequest();
     xhr.open("POST","introUpload.do");
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
<body>
<div class="container">
  <h3>소개글</h3>
  
    <div class="input-group" style="margin-bottom:20px;">
      <span class="input-group-addon">소개글</span>
      <input type="text" class="form-control input-lg" id="intro" placeholder="간단한 글로 자신을 소개해 보세요 :)">
    </div>
    <button type="button" class="btn btn-info btn-block"
			onclick="uploadData(true)">소개글 변경</button>
		<button type="button" class="btn btn-info btn-block"
			onclick="back())">취소</button>
  
</div>
	
</body>
</html>