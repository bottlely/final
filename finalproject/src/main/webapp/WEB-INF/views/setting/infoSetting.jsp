<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="dto" value="${dto }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
function checkOne(gender){
	var chk = document.getElementsByName("gender");
	  for(var i=0; i<chk.length; i++){
	        if(chk[i] != gender){
	        	chk[i].checked = false;
	        }
	    }

}
</script>
<body>
	<h1>Info_Setting</h1>
	<hr>
	<form name="infoSetting" action="infoSetting.do">
		<table>
			<tr>
				<th>Name</th>
				<td><input type="text" name="name" value="${dto.name}"></td>
			</tr>
			<tr>
				<th>E-Mail
				<td><input type="text" name="email" value="${dto.id}"></td>
			</tr>
			<tr>
				<th>Gender</th>
				<td><input type="checkbox" name="gender" value="1" onclick="checkOne(this);">Man
					<input type="checkbox" name="gender" value="2" onclick="checkOne(this);">Woman
				</td>
			</tr>
			<tr>
				<th>Birth</th>
				<td><input type="text" name="birth_y" value="${dto.birth_y}"> - 
				<input type="text" name="birth_m" value="${dto.birth_m}"> - 
				<input type="text" name="birth_d" value="${dto.birth_d}"></td>
			</tr>
			<tr>
				<th>Tel</th>
				<td><input type="text" name="tel" value="${dto.tel }"></td>
			</tr>
		</table>
		<h1>추가설정</h1>
		<hr>
		<table>
			<tr>
				<th>City</th>
				<td>
					<select name="city" id="city">
						<option value="seoul">Seoul</option>
						<option value="Incheon">Incheon</option>
						<option value="Suwon">Suwon</option>
						<option value="Ilsan">Ilsan</option>
						<option value="Daegu">Daegu</option>
						<option value="Daejeon">Daejeon</option>
						<option value="Busan">Busan</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>Favor</th>
				<td>
					<input type="checkbox" name="favor_movie" value="1">Movie
					<input type="checkbox" name="favor_sport" value="1">Sport
					<input type="checkbox" name="favor_fashion" value="1">Fashion
					<input type="checkbox" name="favor_beauty" value="1">Beauty
					<input type="checkbox" name="favor_travel" value="1">Travel
					<input type="checkbox" name="favor_musin" value="1">Music
					<input type="checkbox" name="favor_dance" value="1">Dance
					<input type="checkbox" name="favor_food" value="1">Food
				</td>
			</tr>
		</table>
		<p>
			<input type="submit" value="수정">
		</p>
	</form>
</body>
</html>