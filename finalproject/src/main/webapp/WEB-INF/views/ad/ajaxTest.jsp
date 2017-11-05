<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script>
function show(){
	var p1=document.all.p1;
	//window.alert(p1.innerHTML);
	p1.innerHTML='<font color="blue">앗! 화면이 바뀌었네~!</font>';
}
</script>
</head>
<body>
<p id="p1"><b>참 쉬워요 ajax</b><br>
<font color="blue">동적으로 화면 변경하기!</font></p>
<input type="button" value="확인하기" onclick="show()">
</body>
</html>