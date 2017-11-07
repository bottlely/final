
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table>
		<c:if test="${empty htagFind }">
			<tr>
				<td colspan="4" align="center">찾으시는 해시태그가 존재하지 않습니다.</td>
			</tr>
		</c:if>
		<c:forEach var="htagFind" items="${htagFind }">
			<tr>
				<td>${htagFind.name }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>