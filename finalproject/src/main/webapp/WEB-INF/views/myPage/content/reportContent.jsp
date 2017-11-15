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
function uploadData(){
	
	var report = document.getElementById("report").value;
	
	if(report == ""){
		 alert("신고 이유를 작성해주세요 ;)");
        return;
	}
	
	var data = new FormData();
	
	data.append("fromIdx", '${sessionScope.useridx}'); 
	data.append("toIdx", '${toIdx}'); 
	data.append("report",report);
	data.append("category", category);
	 
     var xhr = new XMLHttpRequest();
     xhr.open("POST","report.do");
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

<div class="container" style="margin-top:10px;">
  	<h2> 게시물 신고 </h2>
    <div class="panel panel-info">
      <div class="panel-heading">신고자</div>
      <div class="panel-body">${sessionScope.username}</div>
    </div>
    <div class="panel panel-info">
      <div class="panel-heading">게시물 작성자</div>
      <div class="panel-body">${toName}</div>
    </div>
    <div class="panel panel-info">
      <div class="panel-heading">신고 사유</div>
      <div class="panel-body">
      <input type="text" class="form-control" id="report"  style="overflow:auto;">
      </div>
    </div>
	<button type="button" class="btn btn-info btn-block" onclick="uploadData()">보내기</button>
		<button type="button" class="btn btn-info btn-block" onclick="back()">취소</button>
   
</div>
</body>
</html>