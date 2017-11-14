<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="arr" value="${arr }"></c:set>
<c:set var="groupName" value="${groupName }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="updateGroup" action="updateGroup.do">
		<input type="text" name="group_name" placeholder="GroupName"
			value="${groupName }">
		<ul>
			<c:if test="${empty arr }">
				<li>친구가 존재하지 않습니다.</li>
			</c:if>
			<c:forEach var="arr" items="${arr }">
				<c:if test="${arr.checked eq true }">
					<li><input type="checkbox" name="idx_to" value="${arr.idx}" checked="checked">${arr.name}</li>
				</c:if>
				<c:if test="${arr.checked eq false }">
					<li><input type="checkbox" name="idx_to" value="${arr.idx}">${arr.name}</li>
				</c:if>
			</c:forEach>
		</ul>
		<input type="submit" value="수정하기">
	</form>
</body>
</html>