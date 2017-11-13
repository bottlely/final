<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function clearText(field){
	if(field.defaultValue == field.value) field.value = '';
	else if(field.value == '') field.value = field.defaultValue;
}

function back(){
	window.opener.location.reload();
	window.close();
}
</script>
</head>
<body>
<h2>${writer}</h2>

<img src="myHomeFolder/profile_img/${profile}" width="50px" height="50px"/>

 <select name="coverage">
    <option value="0">전채공개</option>
    <option value="1">친구만</option>
    <option value="2">특정 대상</option>
    <option value="3">제외할 대상</option>
    <option value="4">나만</option>
	</select>

	<form action="uploadText.do" method="post">
		<input type="hidden" name="useridx" value="${sessionScope.useridx}">
		<input type="text" name="tag" value="태그란" onFocus="clearText(this)" onBlur="clearText(this)">
		<input type="text" name="title" value="제목란" onFocus="clearText(this)" onBlur="clearText(this)">
		<textarea name="content" onFocus="clearText(this)" onBlur="clearText(this)">내용입력하세요.</textarea>
		<input type="submit" value="업로드">
	</form>
	
	<input type="submit" value="back" onclick="back()"> 
</form>
</body>
</html>