<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="profileUpload.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="user_idx" value="3">	
		<input type="file" name="profile"><br>
		<input type="submit" value="전송">
	</form>
</form>
</body>
</html>