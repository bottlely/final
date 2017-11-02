<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="backgroundUpload.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="member_idx" value="3">	<!-- 수정 필요 -->
		배경 사진 :<input type="file" name="background">
		<input type="submit" value="업로드">
	</form>
</body>
</html>