<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="reportUserForm.do" method="post">
		<input type="hidden" name="toIdx" value="${ffidx}">
		<input type="hidden" name="toId" value="${ffid}">
	<input type="submit" value="신고하기 ">
	</form>
	<form action="#" method="post">
		<input type="submit" value="차단하기 또는 차단취소하기">
	</form>
	<form action="#" method="post">
		<input type="submit" value="팔로우하기 또는 언팔로우하기">
	</form>
	<form action="myHomeForm.do" method="post">
		<input type="hidden" name="useridx" value="${ffidx}">
		<input type="submit" value="back">
	</form>
</body>
</html>