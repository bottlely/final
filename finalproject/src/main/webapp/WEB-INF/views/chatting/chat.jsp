<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chatting</title>

</head>
<body>
	<div id="messageWindow2" style="padding:10px 0;height: 20em; overflow: auto; background-color: #FBEFFB;">
		<%-- <div class="user-photo"><img src="myHomeFolder/profile_img/'+${user2_profile_img }+'"></div> --%>
		<p class="chat-message" id="from_text"></p>
	</div>
<!-- onkeydown을 통해서 엔터키로도 입력되도록 설정. -->
<textarea rows="2" cols="40" id="inputMessage" onkeydown="if(event.keyCode==13){send('${user2_name}');}" style="resize: none; float: left; wrap:off;"></textarea>
<input type="submit" value="send" onclick="send('${user2_name}');" style="height: 70px;" />

<link rel="stylesheet" href="assets_myPage/assets/css/main.css" />

<script type="text/javascript">
	//시간띄우기
	var now; 
	var nowHour;
	var nowMin;
	var ampm;
	var strTime;
	
	//웹소켓 설정 //ip
	var webSocket = new WebSocket('ws://192.168.20.174:9090/finalproject/broadcasting');
	//var webSocket = new WebSocket('ws://localhost:8080/프로젝트명/broadcasting');
	var inputMessage = document.getElementById('inputMessage');
	//같은 이가 여러번 보낼때 이름 판별할 변수
	var re_send = "";

	webSocket.onerror = function(event) {
		onError(event)
	};
	webSocket.onopen = function(event) {
		onOpen(event)
	};
	webSocket.onmessage = function(event) {
		onMessage(event)
	};

	//	OnClose는 웹 소켓이 끊겼을 때 동작하는 함수.
	function onClose(event){
		var div=document.createElement('div');
		
		//접속했을 때 접속자들에게 알릴 내용.
		webSocket.send(""+'${user2_name}'+" is DisConnected\n");
	}

	//	OnMessage는 클라이언트에서 서버 측으로 메시지를 보내면 호출되는 함수.
	function onMessage(event) {
		//시간띄우기
		now = new Date(); 
		nowHour = now.getHours();
		nowMin = now.getMinutes();
		ampm = nowHour>= 12 ? 'pm' : 'am';
		nowHour = nowHour%12;
		nowHour = nowHour?nowHour: 12;
		nowMin = nowMin<10 ? '0'+nowMin : nowMin;
		strTime = nowHour+":"+nowMin+' '+ampm;
		
		//클라이언트에서 날아온 메시지를 |\| 단위로 분리한다
		var message = event.data.split("|\|");
		
			//금방 보낸 이를 re_send에 저장하고,
			//금방 보낸 이가 다시 보낼경우 보낸이 출력 없도록 함.
			if(message[0] != re_send){
				
				re_send = message[0];
				
			}
			
			//div는 받은 메시지 출력할 공간.
			var time = document.createElement('div'); //시간
			var msg = document.createElement('div');
			var photo = document.createElement('img');
			var name = document.createElement('elem');
			var div = document.createElement('div');
			var table = document.createElement('table');
			var tr1 = document.createElement('tr');
			var tr2 = document.createElement('tr');
			var td1 = document.createElement('td');
			var td2 = document.createElement('td');
			var td3 = document.createElement('td');
			
			div.style["width"]="auto";
			div.style["word-wrap"]="break-word";
			div.style["background-color"]="#FBEFFB";
			div.style["padding"]="3px";
			div.style["align"]="middle";
			
			msg.style["width"]="auto";
			msg.style["word-wrap"]="break-word";
			msg.style["display"]="inline-block";
			msg.style["background-color"]="#FFFFFF";
			msg.style["padding"]="3px";
			msg.style["border-radius"]="3px";
			msg.style["margin-left"]="8px";
			msg.style["margin-right"]="3px";
			
			time.style["width"]="auto"; //시간
			time.style["word-wrap"]="break-word";
			time.style["display"]="inline-block";
			time.style["padding"]="3px";
			time.style["border-radius"]="3px";
			time.style["margin-right"]="3px";
			
			photo.setAttribute("src", "myHomeFolder/profile_img/"+'${user2_profile_img}');
			photo.setAttribute("width", "30px");
			photo.setAttribute("height", "25px");
			photo.setAttribute("background", "#ccc");
			photo.setAttribute("style", "margin-left: 7px; margin-right: 1px; border-radius: 50%; float: left; overflow: auto;");
			
			msg.innerHTML = message[1];
			time.innerHTML = strTime;
			name.innerHTML = '${user2_name}';
			
			table.appendChild(tr1);
			table.appendChild(tr2);
			tr1.appendChild(td1);
			tr1.appendChild(td2);
			tr2.appendChild(td3);
			
			div.appendChild(table);
			
			td1.appendChild(photo);
			td2.appendChild(name);
			td3.appendChild(msg);
			td3.appendChild(time);
			
			td1.setAttribute("rowspan","2");
			td1.setAttribute("valign","top");
			td2.setAttribute("style", "text-align: left; padding-left: 8px;");
			
			
			document.getElementById('messageWindow2').appendChild(div);
			
		//clear div 추가. 줄바꿈용.		
		var clear=document.createElement('div');
		clear.style["clear"]="both";
		document.getElementById('messageWindow2').appendChild(clear);
		
		//div 스크롤 아래로.
		messageWindow2.scrollTop = messageWindow2.scrollHeight;
		
	}

	//	OnOpen은 서버 측에서 클라이언트와 웹 소켓 연결이 되었을 때 호출되는 함수.
	function onOpen(event) {
		var now1 = new Date(); 
		
		var nowYear = now1.getFullYear();
		var nowMonth = now1.getMonth()+1;
		var nowDay = now1.getDate();
		
		var strDate = nowYear+"년 "+nowMonth+"월 "+nowDay+"일 ";
		
		//접속했을 때, 내 영역에 보이는 글.
		var div = document.createElement('div');
		div.style["text-align"]="center";
		div.innerHTML = strDate;
		document.getElementById('messageWindow2').appendChild(div);
		
		var clear=document.createElement('div');
		clear.style["clear"]="both";
		document.getElementById('messageWindow2').appendChild(clear);
		
		<%-- //접속했을 때 접속자들에게 알릴 내용.
		webSocket.send("<%=nick%>님이 접속하셨습니다."); --%>
	}

	//	OnError는 웹 소켓이 에러가 나면 발생을 하는 함수.
	function onError(event) {
		alert("chat_server connecting error " + event.data);
	}
	
	// send 함수를 통해서 웹소켓으로 메시지를 보낸다.
	function send(user2_name) {
		now = new Date(); 
		nowHour = now.getHours();
		nowMin = now.getMinutes();
		ampm = nowHour>= 12 ? 'pm' : 'am';
		nowHour = nowHour%12;
		nowHour = nowHour?nowHour: 12;
		nowMin = nowMin<10 ? '0'+nowMin : nowMin;
		strTime = nowHour+":"+nowMin+' '+ampm;
		
		//inputMessage가 있을때만 전송가능
		if(inputMessage.value!=""){
	        
			//	서버에 보낼때 날아가는 값.
			webSocket.send(""+'${user2_name}'+""+"|\|" + inputMessage.value);
			
			// 채팅화면 div에 붙일 내용
			var div1=document.createElement('div'); //시간
			var div=document.createElement('div');
			var bg_div = document.createElement('div');
			
			bg_div.style["width"]="auto";
			bg_div.style["margin-top"]="9px";
			bg_div.style["margin-left"]="5px";
			
			div.style["width"]="auto";
			div.style["word-wrap"]="break-word";
			div.style["float"]="right";
			div.style["display"]="inline-block";
			div.style["background-color"]="#FFFFFF";
			div.style["padding"]="3px";
			div.style["border-radius"]="3px";
			div.style["margin-left"]="5px";
			div.style["margin-right"]="10px";
			
			div1.style["width"]="auto"; //시간
			div1.style["word-wrap"]="break-word";
			div1.style["float"]="right";
			div1.style["display"]="inline-block";
			div1.style["padding"]="3px";
			div1.style["border-radius"]="3px";
			div1.style["margin-right"]="3px";
			
			//div에 innerHTML로 문자 넣기
			div1.innerHTML = strTime;
			div.innerHTML = inputMessage.value;
			bg_div.appendChild(div);
			document.getElementById('messageWindow2').appendChild(bg_div);
			document.getElementById('messageWindow2').appendChild(div1); //시간

			//clear div 추가
			var clear = document.createElement('div');
			clear.style["clear"] = "both";
			document.getElementById('messageWindow2').appendChild(clear);
			
			//	?
			//inputMessage.value = "";

			//	inputMessage의 value값을 지운다.
			inputMessage.value = '';

			//	textarea의 스크롤을 맨 밑으로 내린다.
			messageWindow2.scrollTop = messageWindow2.scrollHeight;
			
			//	금방 보낸 사람을 임시 저장한다.
			re_send = ${user2_name};
		}//inputMessage가 있을때만 전송가능 끝.
		
	}
</script>
</body>
</html>