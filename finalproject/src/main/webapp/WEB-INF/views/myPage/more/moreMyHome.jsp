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
	<form action="profileUploadForm.do" method="post" enctype="multipart/form-data">
		<input type="submit" value="프로필 ">
	</form>
	<form action="backgroundUploadForm.do" method="post" enctype="multipart/form-data">
		<input type="submit" value="커버 이미지">
	</form>
	<form action="introUploadForm.do" method="post">
		<input type="submit" value="내 소개">
	</form>
	
	<c:if test="${mhdto.getOpen_coverage() eq 0}">
		<form action="openCoverage.do" method="post">
			<input type="hidden" name="useridx" value="${sessionScope.useridx}">
			<input type="hidden" name="range" value="1">
			<input type="submit" value="비공개  설정하기">
		</form>
	</c:if>
	
	<c:if test="${mhdto.getOpen_coverage() eq 1}">
		<form action="openCoverage.do" method="post">
			<input type="hidden" name="useridx" value="${sessionScope.useridx}">
			<input type="hidden" name="range" value="0">
			<input type="submit" value="비공개  해제하기">
		</form>
	</c:if>
	
	<form action="myHomeForm.do" method="post">
		<input type="hidden" name="useridx" value="${sessionScope.useridx}">
		<input type="submit" value="back">
	</form>
</body>
</html>