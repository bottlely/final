<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="profileUploadForm.do" method="post" enctype="multipart/form-data">
		<input type="submit" value="프로필 ">
	</form>
	<form action="backgroundUploadForm.do" method="post" enctype="multipart/form-data">
		<input type="submit" value="커버 이미지">
	</form>
	<form action="introUploadForm.do" method="post">
		<input type="submit" value="내 소개">
	</form>
</body>
</html>