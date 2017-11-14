<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function back(){
    window.opener.location.reload();
    window.close();
 }
</script>
<body>
<form action="reportUser.do" method="post">
신고자 : ${sessionScope.username}
신고할 대상 : ${toName}
신고 이유 :<input type="text" name="report">
<input type="hidden" name="toIdx" value="${toIdx}">
<input type="hidden" name="fromIdx" value="${sessionScope.userid}">
<input type="submit" value="보내기">
</form>
<input type="button" value="back" onclick="back()">
</body>
</html>