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
		
	<c:if test="${empty profile}">
		<img width="250" height="150" src="">
    </c:if>
    
	<form action="moreMyHomeForm.do" method="post">
		<input type="submit" value="...">
	</form>
</form>
</body>
</html>