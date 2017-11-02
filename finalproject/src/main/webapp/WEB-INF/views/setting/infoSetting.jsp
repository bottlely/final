<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="dto" value="${dto }"/>
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
	<form name="infoSetting" action="infoSetting.do" method="post">
	<input type="hidden" name="idx" value="${dto.idx }">
		<table>
			<tr>
				<th>Name</th>
				<td><input type="text" name="name" value="${dto.name}"></td>
			</tr>
			<tr>
				<th>E-Mail
				<td><input type="text" name="id" value="${dto.id}"></td>
			</tr>
			<tr>
				<th>Gender</th>
				<td><input type="checkbox" name="gender" value="1" onclick="checkOne(this);" ${dto.gender==1? 'checked':'' }>Man
					<input type="checkbox" name="gender" value="2" onclick="checkOne(this);" ${dto.gender==2? 'checked':''}>Woman
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
						<option value="seoul" ${dto.city eq 'Seoul'?'selected':'' }>Seoul</option>
						<option value="Incheon" ${dto.city eq 'Incheon'?'selected':'' }>Incheon</option>
						<option value="Suwon" ${dto.city eq 'Suwon'?'selected':'' }>Suwon</option>
						<option value="Ilsan" ${dto.city eq 'Ilsan'?'selected':''} >Ilsan</option>
						<option value="Daegu" ${dto.city eq 'Daegu'?'selected':'' }>Daegu</option>
						<option value="Daejeon" ${dto.city eq 'Daejeon'?'selected':''} >Daejeon</option>
						<option value="Busan" ${dto.city eq 'Busan'?'selected':'' }>Busan</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>Favor</th>
				<td>
					<input type="checkbox" name="favorite_movie" value="1" ${dto.favorite_movie==1? 'checked':''}>Movie
					<input type="checkbox" name="favorite_sport" value="1" ${dto.favorite_sport==1? 'checked':''}>Sport
					<input type="checkbox" name="favorite_fashion" value="1" ${dto.favorite_fashion==1? 'checked':''}>Fashion
					<input type="checkbox" name="favorite_beauty" value="1" ${dto.favorite_beauty==1? 'checked':''}>Beauty
					<input type="checkbox" name="favorite_travel" value="1" ${dto.favorite_travel==1? 'checked':''}>Travel
					<input type="checkbox" name="favorite_musin" value="1" ${dto.favorite_music==1? 'checked':''}>Music
					<input type="checkbox" name="favorite_dance" value="1" ${dto.favorite_dance==1? 'checked':''}>Dance
					<input type="checkbox" name="favorite_food" value="1" ${dto.favorite_food==1? 'checked':''}>Food
				</td>
			</tr>
		</table>
		<p>
			<input type="submit" value="수정">
		</p>
	</form>
</body>
</html>