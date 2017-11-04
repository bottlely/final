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

	<img width="250" height="150" src="myHomeFolder/profile_img/${mhdto.getProfile_img()}">
	<img width="250" height="150" src="myHomeFolder/background_img/${mhdto.getBackground_img()}">
	<b>내 소개 : ${mhdto.getIntro()}</b>
	<b>today : ${mhdto.getVisitor_today()}</b>
	<b>total : ${mhdto.getVisitor_total()}</b>
    
    <c:if test="${sessionScope.useridx eq mhdto.getMember_idx()}">
	    <form action="moreMyHomeForm.do" method="post">
	    	<input type="hidden" name="useridx" value="${sessionScope.useridx}">
			<input type="submit" value="...">
		</form>
		
		<form action="contentCategory.do" method="post">
			<input type="submit" value="+">
		</form>
	</c:if>

	
	<c:if test="${sessionScope.useridx ne mhdto.getMember_idx()}">
		<form action="moreFFHomeForm.do" method="post">
			<input type="hidden" name="ffidx" value="${mhdto.getMember_idx()}">
			<input type="hidden" name="ffid" value="${mhdto.getName()}">
			<input type="submit" value="...">
		</form>
	</c:if>
	
</form>
</body>
</html>