<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="introUpload.do" method="post">
		<input type="hidden" name="member_idx" value="3">	<!-- 수정 필요 -->
		소개글:<input type="text" name="intro">
		<input type="submit" value="업로드">
	</form>
</body>
</html>