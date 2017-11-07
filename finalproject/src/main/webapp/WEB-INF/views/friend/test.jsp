<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function following(n1, n2) {
	location.href='following.do?user1_idx='+n1+'&user2_idx='+n2;
}
</script>
</head>
<body>
<form name="test" action="following.do">
<c:if test="${empty followerList }">
친구 없음
</c:if>
<c:forEach var="list" items="${followerList }">
<ul>
	<li>${list.name }&nbsp;${list.idx }&nbsp;
	<input type="hidden" value="${sessionScope.useridx }" name="user1_idx">
	<input type="hidden" value="${list.idx }" name="user2_idx">
	<input type="button" value="following" onclick="following('${sessionScope.useridx}','${list.idx }')"></li>
</ul>
</c:forEach>
</form>
</body>
</html>