<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
function checkPwd(){
	var pwd = document.getElementById("pwd").value;
	var pwdCheck = document.getElementById("pwdCheck").value;
	var btn_ok = document.getElementById("btn_ok");
	
	if(pwd!=pwdCheck){
		document.getElementById("pwsame").innerHTML = '비밀번호가 일치하지 않습니다.';
		btn_ok.disabled='disabled';
	}else{
		document.getElementById("pwsame").innerHTML = '비밀번호가 일치합니다.';
		btn_ok.disabled=false;
	}
}
</script>
<body>
	<h1>Pwd Setting</h1>
	<form name="pwdSetting" action="pwdSetting.do" method="post">
		<table>
			<tr>
				<th>현재 비밀번호</th>
				<td><input type="password" name="cur_pwd"></td>
			</tr>
			<tr>
				<th>새 비밀번호</th>
				<td><input type="password" id="pwd" name="ch_pwd" onkeyup="checkPwd()"></td>
			</tr>
			<tr>
				<th>새 비밀번호 재입력</th>
				<td><input type="password" id="pwdCheck" onkeyup="checkPwd()"></td>
			</tr>
			<tr>
				<td colspan="2" align="center" id="pwsame"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="수정하기" id="btn_ok" disabled="disabled">   <input type="reset" value="다시 작성"></td>
			</tr>
		</table>
	</form>
</body>
</html>