<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>webcamMain.jsp</h1>
	<video autoplay="autoplay" width="300px" height="300px">
	
	</video>
	<script>
	
	if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
		// Not adding `{ audio: true }` since we only want video now
		navigator.mediaDevices.getUserMedia({
			video : true
		}).then(function(stream) {
			video.src = window.URL.createObjectURL(stream);
			video.play();
		});
	}
	
	var webSocket = new WebSocket('ws://192.168.20.179:8888/finalproject/websocket');
	</script>
</body>
</html>