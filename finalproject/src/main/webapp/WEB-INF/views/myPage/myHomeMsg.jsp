<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<c:url var="myHomeUrl" value="myHomeForm.do">
		<c:if test="${empty ffIdx}">
			<c:param name="useridx" value="${sessionScope.useridx}"/>
		</c:if>
		<c:if test="${!empty ffIdx}">
			<c:param name="useridx" value="${ffIdx}"/>
		</c:if>
	</c:url>
<script>
	window.alert('${msg}');
	location.href='${myHomeUrl}';
</script>