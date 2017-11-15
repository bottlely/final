<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
   
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charser=UTF-8" http-equiv="Content-Type">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="o" items="${list}">
	
<h2>${o.name}.Company 광고 요청서</h2>

<table>
	<tr>
		<th>Ad_Name</th>
		<td>${o.ad_name }</td>
	</tr>
	<tr>
		<th>Type</th>
		<td>${o.type }</td>
	</tr>
	<tr>
		<th>Link</th>
		<td>${o.link }</td>
	</tr>
	<tr>
		<th>Fee</th>
		<td>${o.fee }</td>
	</tr>
	<tr colspan="2">
		<td>During</td>
	</tr>
	<tr>
		<th>From</th>
		<td>${o.s_date }</td>
	</tr>
	<tr>
		<th>To</th>
		<td>${o.e_date }</td>
	</tr>
	
</table>

<script>

(function imme(){
	
	if("${ok}"==""){
	}
	else{
		window.close();
	}
})()

function no(){
	window.close();
}
function ok(){
	window.location="insertOkSign.do?ad_idx="+${o.ad_idx};
	//setTimeout('window.close()',10000);
}
</script>
<input type="button" value="승인" onclick="ok()">
<input type="button" value="거절" onclick="no()">
	
</c:forEach>

</body>
</html>