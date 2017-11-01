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
<body>
	<h1>Info_Setting</h1>
	<hr>
	<form name="infoSetting" action="infoSetting.do" method="post">
		<table>
			<tr>
				<th>Name</th>
				<td><input type="text" name="name" value="${dto.name}"></td>
			</tr>
			<tr>
				<th>E-Mail
				<td><input type="text" name="email" value="${dto.emil}"></td>
			</tr>
			<tr>
				<th>Gender</th>
				<td><input type="checkbox" name="gender_info" value="Man">Man
					<input type="checkbox" name="gender_info" value="Woman">Woman
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
				<td><select>
						<option value="seoul">Seoul</option>
						<option value="Incheon">Incheon</option>
						<option value="Suwon">Suwon</option>
						<option value="Ilsan">Ilsan</option>
						<option value="Busan">Busan</option>
						<option value="Daegu">Daegu</option>
						<option value="Daejeon">Daejeon</option>
				</select></td>
			</tr>
			<tr>
				<th>Favor</th>
				<td><input type="checkbox" name="favor_info" value="movie">Movie
					<input type="checkbox" name="favor_info" value="sport">Sport
					<input type="checkbox" name="favor_info" value="fashion">Fashion
					<input type="checkbox" name="favor_info" value="beauty">Beauty
					<input type="checkbox" name="favor_info" value="travel">Travel
					<input type="checkbox" name="favor_info" value="music">Music
					<input type="checkbox" name="favor_info" value="dance">Dance
					<input type="checkbox" name="favor_info" value="food">Food
				</td>
			</tr>
		</table>
		<p>
			<input type="submit" value="수정">
		</p>
	</form>
</body>
</html>