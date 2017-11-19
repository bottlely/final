<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
   
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charser=UTF-8" http-equiv="Content-Type">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
</head>
<style>
body {
	background-color:white;
}

</style>
<body>

<c:forEach var="o" items="${list}">
<div class="container" style="margin-top:10px;">
<div >
    <div class="card-body"><h3>${o.name}.Company <small> 광고 요청서</small></h3></div>
	
</div>
<table class="table">
	<tr class="success">
		<th>Ad_Name</th>
		<td>${o.ad_name }</td>
	</tr>
	<tr class="danger">
		<th>Type</th>
		<td>${o.type }</td>
	</tr>
	<tr class="info">
		<th>Link</th>
		<td>${o.link }</td>
	</tr>
	<tr class="warning">
		<th>Fee</th>
		<td>${o.fee }</td>
	</tr>
	<tr class="success">
		<th>From</th>
		<td>${o.s_date }</td>
	</tr>
	<tr class="danger">
		<th>To</th>
		<td>${o.e_date }</td>
	</tr>
	<tr class="table-info">
		<td colspan="2" align="center">
			<input type="button" value="승인" onclick="ok()" class="btn btn-primary">
			<input type="button" value="거절" onclick="no()" class="btn btn-primary">
		</td>
	
</table>
</div>
<script>


function no(){
	window.location="insertNoSign.do?ad_idx="+${o.ad_idx}+"&member_idx="+${o.member_idx};
}
function ok(){

	window.location="insertOkSign.do?ad_idx="+${o.ad_idx}+"&member_idx="+${o.member_idx};
	
}
</script>

	
</c:forEach>

</body>
</html>