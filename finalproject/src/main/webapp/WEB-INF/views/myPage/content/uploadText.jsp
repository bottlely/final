<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
text
<form action="myHomeForm.do" method="post">
	<input type="hidden" name="useridx" value="${sessionScope.useridx}">
	<input type="submit" value="back">
</form>
</body>
</html>