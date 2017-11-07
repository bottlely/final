<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style>
#confirmpwd {
	color: red;
	font-size: 12px;
}

#checkpwd {
	color: red;
	font-size: 12px;
}

section {
	width: 1000px;
	margin: 0 auto;
}

.join {
	width: 800px;
	margin: 0 auto;
	cell-spacing: 0px;
	font-size: 14px;
	border-top: 2px solid #e5e5e5;
	border-left: 2px solid #e5e5e5;
	border-right: 2px solid #e5e5e5;
	border-bottom: 2px solid #e5e5e5;
}

.join th {
	width: 150px;
	height: 50px;
	text-align: left;
	border-right: 1px solid #e5e5e5;
	border-bottom: 1px solid #e5e5e5;
	padding-left: 20px;
	font-weight: normal;
}

.join td {
	padding-left: 20px;
	border-bottom: 1px solid #e5e5e5;
}

.join textarea {
	float: left;
	width: 360px;
	height: 130px;
}

.joinbtn {
	width: 100px;
	border-radius: 0px;
	font-family: Arial;
	color: #ffffff;
	font-size: 12px;
	background: #000000;
	padding: 5px 10px 5px 10px;
	border: solid #a8a8a8 1px;
	text-decoration: none;
}

.joinbtn:hover {
	color: #000000;
	background: #ffffff;
	text-decoration: none;
}

.idjoinbtn {
	width: 100px;
	border-radius: 0px;
	font-family: Arial;
	color: #000000;
	font-size: 12px;
	background: #ffffff;
	padding: 5px 10px 5px 10px;
	border: solid #a8a8a8 1px;
	text-decoration: none;
}

.idjoinbtn:hover {
	background: #dbdbdb;
	text-decoration: none;
}
</style>

<script type="text/javascript" src="js/httpRequest.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>

	function checkpwd() {
		var u_id = window.join.id.value;
		var u_pwd = window.join.pwd.value;

		if (!u_pwd.match(/[a-zA-Z0-9]*[^a-zA-Z0-9\n]+[a-zA-Z0-9]*$/)) {
			document.getElementById('checkpwd').style.color = "red";
			document.getElementById('checkpwd').innerHTML = "비밀번호는 문자, 숫자, 특수문자의 조합으로 6~16자리로 입력해주세요.";

		} else {
			document.getElementById('checkpwd').style.color = "blue";
			document.getElementById('checkpwd').innerHTML = "사용가능한 비밀번호 입니다.";
		}
	}
	function confirmPwd() {
		var f1 = document.forms[0];
		var pw1 = f1.pwd.value;
		var pw2 = f1.pwd_check.value;
		if (pw1 != pw2) {
			document.getElementById('confirmpwd').style.color = "red";
			document.getElementById('confirmpwd').innerHTML = "동일한 암호를 입력하세요.";
		} else {
			document.getElementById('confirmpwd').style.color = "blue";
			document.getElementById('confirmpwd').innerHTML = "암호가 확인 되었습니다.";
		}
	}
	function oneCheckbox(cb) {
		var obj = document.getElementsByName("agree");
		for (var i = 0; i < obj.length; i++) {
			if (obj[i] != cb) {
				obj[i].checked = false;
			}
		}
	}
	
	
	function idCheck() {
		var id = 'id='+document.join.id.value;
		sendRequest('idCheck.do',id,showResult,'GET');
		
	}
	
	
	function showResult() {
		if(XHR.readyState == 4) {
			if(XHR.status == 200) {
				var data = XHR.responseText;
				alert(data);
			}
		}
	}
	
</script>
</head>
<body>


	<section>
		<form name="join" action="ecForm.do" method="post">
			<div
				style='width: 900px; margin: 0 auto; height: 70px; padding-top: 20px; padding-bottom: 0px;'>
				<h3 align="center">Sign in</h3>
			</div>
			<table class="join">
				<tr>
					<th>이름 <span style="color: red; font-weight: bolder;">*</span></th>
					<td><input type="text" name="name" required></td>
				</tr>
				<tr>
					<th scope="row">아이디 <span
						style="color: red; font-weight: bolder;">*</span></th>
					<td><input type="email" name="id" required placeholder="Email형식"></td>
					<td><input type="button" value="중복확인" onclick="idCheck()"></td>
				</tr>
				<tr>
					<th>비밀번호 <span style="color: red; font-weight: bolder;">*</span></th>
					<td><input type="password" name="pwd" onkeyup="checkpwd()" required>
						<div id="checkpwd" ></div></td>
				</tr>
				<tr>
					<th>비밀번호 확인 <span style="color: red; font-weight: bolder;">*</span></th>
					<td><input type="password" name="pwd_check"
						onkeyup="confirmPwd()" required>
						<div id="confirmpwd"></div></td>
				</tr>
				<tr>
					<td colspan="2" align="center">가입하면 Mars의 약관 및 개인정보처리방침에 동의하게 됩니다.</td>
				</tr>



			</table>
			<div
				style="margin-top: 20px; margin-bottom: 20px; text-align: center;">
				<input type="submit" value="회원가입" class="joinbtn">&nbsp;&nbsp;
				<input type="reset" value="다시작성" class="idjoinbtn">
			</div>

		</form>
	</section>

</body>
</html>