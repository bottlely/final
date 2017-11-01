<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>광고 주문서</h2>
<table>
<tr>
	<th>Name</th>
	<td><input type="text" name="name"></td>
</tr>
<tr>
	<th>BusinessType</th>
	<td><input type="text" name="type"></td>
</tr>
<tr>
	<th>Link</th>
	<td><input type="text" name="link"></td>
</tr>
<tr>
	<th>File</th>
	<td><input type="file"></td>
</tr>

<tr>
	<th>기간</th>
	<td><input type="text" name="기간"></td>
</tr>

<tr>
	<th>Fee</th>
	<td><input type="text" name="fee"></td>
</tr>

<tr>
	<th>Keyword</th>
	<td>
		<fieldset>
			<legend>Check Your Interest!</legend>
			<input type="checkbox" name="movie" value="movie" id="movie">
			<input type="checkbox" name="sport" value="sport" id="sport">
			<input type="checkbox" name="fashion" value="fashion" id="fashion">
			<input type="checkbox" name="beauty" value="beauty" id="beauty">
			<input type="checkbox" name="travel" value="travel" id="travel">
			<input type="checkbox" name="music" value="music" id="music">
			<input type="checkbox" name="dance" value="dance" id="dance">
			<input type="checkbox" name="food" value="food" id="food">
		</fieldset>
	</td>
</tr>

</table>


</body>
</html>