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
	window.alert(n1);
	window.alert(n2);
	location.href='following.do?user1_idx='+n1+'&user2_idx='+n2;
}
function unfollowing(n1, n2) {
	window.alert(n1);
	window.alert(n2);
	location.href='deleteFriend.do?user1_idx='+n1+'&user2_idx='+n2;
}
function removeFollower(n1, n2) {
	window.alert(n1);
	window.alert(n2);
	location.href='deleteFriend.do?user1_idx='+n2+'&user2_idx='+n1;
}
</script>
</head>
<body>
<h2>following TEST[팔로잉 /팔로잉 취소]</h2>
<form name="test" action="following.do">
<c:if test="${empty followingList }">
follower 친구없음
</c:if>
<c:forEach var="list" items="${followingList }">
<ul>
	<li>${sessionScope.useridx }&nbsp;${list.name }&nbsp;${list.idx }&nbsp;
	<input type="hidden" value="${sessionScope.useridx }" name="user1_idx">
	<input type="hidden" value="${list.idx }" name="user2_idx">
	<input type="button" value="Follow" onclick="following('${sessionScope.useridx}','${list.idx }')">
	<input type="button" value="Unfollow" onclick="unfollowing('${sessionScope.useridx}','${list.idx }')">
	</li>
</ul>
</c:forEach>
</form>
<hr>
<h2>follower TEST[팔로워 삭제]</h2>
<c:if test="${empty followerList }">
following 친구없음
</c:if>
<c:forEach var="list" items="${followerList }">
<ul>
	<li>${list.name }&nbsp;${list.idx }&nbsp;${sessionScope.useridx }&nbsp;
	<input type="hidden" value="${sessionScope.useridx }" name="user1_idx">
	<input type="hidden" value="${list.idx }" name="user2_idx">
	<input type="button" value="remove follower" onclick="removeFollower('${sessionScope.useridx}','${list.idx }')">
	</li>
</ul>
</c:forEach>
</body>
</html>