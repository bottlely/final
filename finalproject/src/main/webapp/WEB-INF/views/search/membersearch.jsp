<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
		function htag(name){
			window.alert(name);
			location.href='htagSearch.do?name='+name;
		}
	</script>
</head>
<body>
<c:set var="txtfind" value="${find }" /> 

  
 <c:forEach var="txtfind" items="${txtfind }" begin="0" end="0"> 
	<input type="button" value="사람" onclick="mtag()">
	<input type="button" value="hash" onclick="htag('${name}')">
	
 </c:forEach> 
	<table border="1px">
		<c:if test="${empty find }">
			<input type="button" value="사람1">
			<input type="button" value="해시태그1" onclick="htag('${name}')">
			<tr>
				<td colspan="4" align="center">찾으시는 사람이 존재하지 않습니다.</td>
			</tr>
		</c:if>
		<c:forEach var="find" items="${find }">
			<tr>
				<td>${find.name }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>