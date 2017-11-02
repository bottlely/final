<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<img width="250" height="150" src="${profile}">
	<img width="250" height="150" src="${background}">
	<b>${intro}</b>
    
    <c:if test="${sessionScope.useridx eq mhdto.getMember_idx()}">
	    <form action="moreMyHomeForm.do" method="post">
			<input type="submit" value="...">
		</form>
	</c:if>
	
	<c:if test="${sessionScope.useridx ne mhdto.getMember_idx()}">
		<form action="moreFFHomeForm.do" method="post">
			<input type="hidden" name="ffidx" value="${mhdto.getMember_idx()}">
			<input type="hidden" name="ffid" value="${mhdto.getName()}">
			<input type="submit" value="...">
		</form>
	</c:if>
	
</form>
</body>
</html>