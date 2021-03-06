<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="list" value="${list}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<script>
	/* function submit(){
	 var group_name = document.getElementById("group_name").value;
	 window.alert(group_name);
	 if(group_name == ""){
	 window.alert('그룹이름을 입력해주세요');
	 location.href='addGroupForm.do';
	 }else{
	 window.opener.document.forms['addGroup'].submit();
	 window.close();
	 }
	 /* window.close();
	 opener.location.href='addGroup.do'; */
</script>
</head>
<body>
	<form name="addGroup" action="addGroup.do">
	<input type="hidden" name="idx_from" value="${idx_from }">
		<input type="text" name="group_name" placeholder="GroupName"
			id="group_name" required>
		<ul>
			<c:if test="${empty list}">
				<li>친구가 존재하지 않습니다.</li>
			</c:if>
			<c:forEach var="list" items="${list}">
				<li><input type="checkbox" name="idx_to" value="${list.idx}">
					${list.name}</li>
			</c:forEach>
		</ul>
		<input type="submit" value="생성하기">
	</form>
</body>
</html>