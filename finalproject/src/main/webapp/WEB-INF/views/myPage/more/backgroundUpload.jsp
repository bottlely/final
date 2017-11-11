<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
 
	input[type=file] {
	        display: none;
	 } 
</style>
 <script type="text/javascript" src="js/previewmodule.js" charset="utf-8"></script>
</head>
<body>
	<form action="backgroundUpload.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="useridx" value="${sessionScope.useridx}">	<!-- 수정 필요 -->
		<label>
			배경사진 
			<input type="file" name="background" onchange="previewImage(this,'preview','150','150')">
		</label>
		<div id="preview">
		</div>
		<input type="submit" value="업로드">
	</form>
	
	<form action="backgroundUpload.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="useridx" value="${sessionScope.useridx}">
		<input type="submit" value="기본 배경 사진 설정">
	</form>
		<form action="myHomeForm.do" method="post">
		<input type="hidden" name="useridx" value="${sessionScope.useridx}">
		<input type="submit" value="back">
	</form>
</body>
</html>