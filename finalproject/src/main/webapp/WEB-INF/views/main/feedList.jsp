<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script type="text/javascript" src="js/httpRequest.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.feedList img{
        border-radius: 50%;
        width:10px;
        height:10px;
        
        }
</style>

<script>
function openContent(content_idx, useridx) {
	parent.openContent(content_idx, useridx);
}
function sender() {
	alert('hi');
	sendRequest('activityList.do?idx=${sessionScope.useridx}', null, activityList, 'GET');
}
function activityList() {
	if(XHR.readyState==4){
		if(XHR.status==200){
			var data = XHR.responseText;
			var lists = eval('('+data+')');
			var div = document.fr.feedList_table;
			//var str = '';
			alert(aaa);
			if(lists.feed.length == 0){
				alert(aaa);
			}
		}
	}
} 
</script>
</head>
<body onload="sender()">
<form name="fr">
	<!-- 
	to_idx를 기준으로 피드를 불러와서 거기서 그냥 쌓아야해
	 -->
	<div class="total_feedList">
		<table id="feedList_table">
		
		</table>
    </div>
</form>
</body>



<!--Parallax-->

</html>