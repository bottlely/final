<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function back(){
    window.opener.location.reload();
    window.close();
 }
function uploadData(){
	
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
		소개글:<input type="text" id="intro">
		<input type="button" value="업로드" onclick="uploadData()">
		<input type="button" value="back" onclick="back()">
	
</body>
</html>