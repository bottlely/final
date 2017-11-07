<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="list" value="${param.list }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="addGroup" action="addGroup.do">
		<input type="text" name="group_name" placeholder="GroupName">
		<ul>
			<c:if test="${empty list }">
				<li>친구가 존재하지 않습니다.</li>
			</c:if>
			<c:forEach var="list" items="${list }">
				<li><input type="checkbox" name="frlist" value="${list }">
					${list}</li>
			</c:forEach>
		</ul>
		<input type="submit" value="생성하기">
	</form>
</body>
</html>