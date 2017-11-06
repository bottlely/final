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
	<form action="profileUpload.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="useridx" value="${sessionScope.useridx}">
		프로필 :<input type="file" name="profile">
		<input type="submit" value="업로드">
	</form>
	<form action="profileUpload.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="useridx" value="${sessionScope.useridx}">
		<input type="submit" value="기본 프로필 설정">
	</form>
	<form action="myHomeForm.do" method="post">
		<input type="hidden" name="useridx" value="${sessionScope.useridx}">
		<input type="submit" value="back">
	</form>
</body>
</html>