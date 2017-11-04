<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<a href="contentUploadForm.do?useridx=${sessionScope.useridx}&type=1">
<img width="150" height="150" src="myHomeFolder/category/photoIcon.png"></a>

<a href="contentUploadForm.do?useridx=${sessionScope.useridx}&type=2">
<img width="150" height="150" src="myHomeFolder/category/videoIcon.png"></a>

<a href="contentUploadForm.do?useridx=${sessionScope.useridx}&type=3">
<img width="150" height="150" src="myHomeFolder/category/textIcon.png"></a>

<a href="contentUploadForm.do?useridx=${sessionScope.useridx}&type=4">
<img width="150" height="150" src="myHomeFolder/category/shootIcon.png"></a>

<form action="myHomeForm.do" method="post">
	<input type="hidden" name="useridx" value="${sessionScope.useridx}">
	<input type="submit" value="back">
</form>
</body>
</html>