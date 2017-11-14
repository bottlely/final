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
	
	var report = document.getElementById("report").value;
	
	if(report == ""){
		 alert("신고 이유를 작성해주세요 ;)");
        return;
	}
	
	var data = new FormData();
	
	data.append("fromIdx", '${sessionScope.useridx}'); 
	data.append("toIdx", '${toIdx}'); 
	data.append("report",report);
	 
     var xhr = new XMLHttpRequest();
     xhr.open("POST","reportUser.do");
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
신고자 : ${sessionScope.username}
신고할 대상 : ${toName} / ${toIdx}
신고 이유 :<input type="text" id="report">
<input type="button" value="보내기" onclick="uploadData()">
<input type="button" value="back" onclick="back()">
</body>
</html>