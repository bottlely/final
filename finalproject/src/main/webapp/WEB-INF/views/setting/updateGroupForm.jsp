<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="list" value="${list}"></c:set>
<c:set var="idx_ff" value="${idx_ff }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <script type="text/javascript" src="js/httpRequest.js"></script>
<script>
function checkMember(){
	sendRequest('showGroup.do?idx_ff=${idx_ff}', null, memberList, 'GET');
}

function memberList(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var data = XHR.responseText;
			var lists = eval('('+data+')');
			window.alert(lists.memberList.length);
			document.getElementById('group_name').value = '${lists.memberList[0].group_name}';
			window.alert('${lists.memberList[0].group_name}');
			
			if(lists.memberList.length==0){
				
			}else{
				for(var i=0; i<lists.memberList.length; i++){
					var l = lists.memberList[i];
					var idx = l.idx_to;
					if(cbox==idx){
						cbox.innerHTML = ' checked';
					}
				}
			}
		}
	}
}
</script>
</head>
<body onload="checkMember()">
	<form name="updateGroup" action="updateGroup.do">
		<input type="text" name="group_name" placeholder="GroupName" id="group_name" value="">
		<ul>
			<c:if test="${empty list }">
				<li>친구가 존재하지 않습니다.</li>
			</c:if>
			<c:forEach var="list" items="${list }">
				<li><input type="checkbox" name="idx_to" value="${list.idx}">
					${list.name}</li>
			</c:forEach>
		</ul>
		<input type="submit" value="수정하기">
	</form>
</body>
</html>