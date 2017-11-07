<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>

<style>
section {
	margin: 0 auto;
	width: 800px;
	height: 300px;
}

table {
	margin: 0 auto;
}

h2 {
	text-align: center;
}
</style>

<script>
	var XHR = null;

	function getXHR() {
		if (window.ActiveXObject) {
			return new ActiveXObject('Msxml1.XMLHTTP');
		} else if (window.XMLHttpRequest) {
			return new XMLHttpRequest();
		} else {
			return null;
		}
	}

	function sendRequest(url, params, callback, method) {

		XHR = getXHR();

		//1.접속방식의 검증
		var httpUrl = url;
		var httpMethod = method ? method : 'GET';
		if (httpMethod != 'GET' && httpMethod != 'POST') { //오타인지 확인하기 위해
			httpMethod = 'GET';
		}

		//2.파라미터 검증
		var httpParams = (params == null || params == '') ? null : params;

		//3.접속방식에 따른 파라미터 처리
		if (httpMethod == 'GET' && httpParams != null) {
			httpUrl = url + '?' + httpParams;
		}

		XHR.onreadystatechange = callback;
		XHR.open(httpMethod, httpUrl, true);
		XHR.setRequestHeader('Content-Type',
				'application/x-www-form-urlencoded');
		XHR.send(httpMethod == 'POST' ? httpParams : null);
	}
	
	
	//이메일 인증 보내기
	
	function sendEmail() {
		var id = 'id=' + document.fm.id.value;
		window.alert('서버 사정에 따라 몇 분이 소요될 수 있습니다.');
		sendRequest('sendEmail.do', id, showResult, 'GET');
	}

	function showResult() {
		if (XHR.readyState == 4) {
			if (XHR.status == 200) {
				window.alert('메일발송 성공');
				window.location.reload();
			} else {
				window.alert('메일발송 실패');
			}
		}
	}
	
	function checkJoinCode() {
		var joinCode = '${sessionScope.joinCode}';
		var usercode = document.fm.usercode.value;
		
		if(joinCode==usercode) {
			window.alert('인증코드 확인완료');
		}else {
			window.alert('인증코드가 틀렸습니다. 다시 확인해 주세요.');
		}
		
	}

	
	
</script>

<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
int usertype = Integer.parseInt(request.getParameter("usertype"));
int company_number = 0;
if(request.getParameter("company_number")==null||request.getParameter("company_number")=="") {
	company_number = 0;
} else {
	company_number = Integer.parseInt(request.getParameter("company_number"));
}
%>

</head>
<body>
	<section>
		<h2>이메일 인증</h2>

		<form name="fm" action="join.do">
			<input type="hidden" name="name" value="<%=name%>">
			<input type="hidden" name="pwd" value="<%=pwd%>">
			<input type="hidden" name="usertype" value="<%=usertype%>">
			<input type="hidden" name="company_number" value="<%=company_number%>">
			<table>
				<tr>
					<th>이메일</th>
					<td><input type="email" name="id" value="<%=id%>"></td>
					<td><input type="button" value="인증번호 받기" onclick="sendEmail()">
				</tr>
				<tr>
					<th>인증번호</th>
					<td><input type="text" name="usercode"></td>
					<td><input type="button" value="확인"
						onclick="checkJoinCode()"></td>
				</tr>
				<tr>
					<td colspan="3" align="center">
					<input type="submit" value="회원가입 완료">
					</td>
			</table>

		</form>

	</section>
</body>
</html>