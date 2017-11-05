<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
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

	/* Legacy code below: getUserMedia f
	 else if(navigator.getUserMedia) { // Standard
	 navigator.getUserMedia({ video: true }, function(stream) {
	 video.src = stream;
	 video.play();
	 }, errBack);
	 } else if(navigator.webkitGetUserMedia) { // WebKit-prefixed
	 navigator.webkitGetUserMedia({ video: true }, function(stream){
	 video.src = window.webkitURL.createObjectURL(stream);
	 video.play();
	 }, errBack);
	 } else if(navigator.mozGetUserMedia) { // Mozilla-prefixed
	 navigator.mozGetUserMedia({ video: true }, function(stream){
	 video.src = window.URL.createObjectURL(stream);
	 video.play();
	 }, errBack);
	 }
	 */
	 
	 function gonode(){
		 alert("goNode");
		 location.href="localhost:3000";
	 }
</script>
</head>
<body>
	<h1>webMain.jsp</h1>
	<video id="video" width="640" height="480" autoplay></video>
	<button id="start" onclick="gonode();">시작하기</button>
</body>
</html>