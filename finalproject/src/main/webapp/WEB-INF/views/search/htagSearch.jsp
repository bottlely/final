<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
		function hash(name){
			location.href='htagSearch.do?name='+name;
		}
		
		function member(name){
			location.href='membersearch.do?name='+name;
		}
	</script>
</head>
<body>
<c:set var="txtfind" value="${find }" /> 
<form name="reSearch" action="membersearch.do">
<input type="text" name="name" value="${name }"><input type="submit" value="검색"><br>
	<table>
		<c:if test="${empty find }">
			<tr>
				<input type="button" value="사람" onclick="member('${name}')">
				<input type="button" value="해시" onclick="hash('${name}')">
				<td colspan="4" align="center">찾으시는 해시태그가 존재하지 않습니다.</td>
			</tr>
		</c:if>
		<c:forEach var="find" items="${find }">
			<tr>
				<input type="button" value="사람" onclick="member('${name}')">
				<input type="button" value="해시" onclick="hash('${name}')">
				<td>${find.content}</td>
			</tr>
		</c:forEach>
	</table>
	</form>
</body>
</html>