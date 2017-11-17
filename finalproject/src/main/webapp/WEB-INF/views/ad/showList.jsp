<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
   
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charser=UTF-8" http-equiv="Content-Type">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  
</head>
<style>
body {
	background-color:#f2fdff;
}

</style>
<body>

<c:forEach var="o" items="${list}">
<div class="container" style="margin-top:10px;">
<div class="card bg-success text-white">
    <div class="card-body"><h5>${o.name}.Company 광고 요청서</h5></div>

</div>
<table class="table">
	<tr class="table-primary">
		<th>Ad_Name</th>
		<td>${o.ad_name }</td>
	</tr>
	<tr class="table-info">
		<th>Type</th>
		<td>${o.type }</td>
	</tr>
	<tr class="table-primary">
		<th>Link</th>
		<td>${o.link }</td>
	</tr>
	<tr class="table-info">
		<th>Fee</th>
		<td>${o.fee }</td>
	</tr>
	<tr class="table-primary">
		<td  colspan="2">During</td>
	</tr>
	<tr class="table-info">
		<th>From</th>
		<td>${o.s_date }</td>
	</tr>
	<tr class="table-primary">
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

//(function imme(){
	
//	if("${ok}"==""){
//		alert('1');
//	}
//	else if("${ok}"==="1"){
//		alert('2');
//		close();
//	}
//})()

function no(){
	window.location="insertNoSign.do?ad_idx="+${o.ad_idx}+"&member_idx="+${o.member_idx};
}
function ok(){

	window.location="insertOkSign.do?ad_idx="+${o.ad_idx}+"&member_idx="+${o.member_idx};
	
	
	//setTimeout('window.close()',10000);
}

//function close(){
//	alert('come');
//	window.close();
//}
</script>

	
</c:forEach>

</body>
</html>