<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2 align="center">광고 주문서</h2><hr>

<form name="applyAd" action="applyAd.do" method="post">
<table>
<tr>
	<th>Company</th>
	<td><input type="text" name="name"></td>
</tr>
<tr>
	<th>Ad_Name</th>
	<td><input type="text" name="ad_name"></td>
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
	<td><input type="file" name="ad_content"></td>
</tr>



<tr>
	<th>기간</th>
	<td>
	<input type="text" value="17-11-07" name="s_date" size="6">부터 
	<input type="text" value="17-11-07" name="e_date" size="6">까지
	</td>
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
			<input type="checkbox" name="favor_movie" value="1"> movie
			<input type="checkbox" name="favor_sport" value="1"> sport
			<input type="checkbox" name="favor_fashion" value="1"> fashion
			<input type="checkbox" name="favor_beauty" value="1" > beauty
			<hr>
			<input type="checkbox" name="favor_travel" value="1" > travel
			<input type="checkbox" name="favor_music" value="1" > music
			<input type="checkbox" name="favor_dance" value="1" > dance
			<input type="checkbox" name="favor_food" value="1" > food
		</fieldset>
	</td>
</tr>

<tr>
	<td><input type="submit" value="submit"></td>
	<td><input type="reset" value="reset"></td>
</tr>

</table>
</form>

</body>
</html>