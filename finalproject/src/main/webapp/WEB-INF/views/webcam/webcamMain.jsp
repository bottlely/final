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
	 
	/*  
	 var video = $("#live").get()[0];
	 var options = {
	        "video" : true
	 };
	                     
	 // use the chrome specific GetUserMedia function
	 navigator.webkitGetUserMedia(options, function(stream) {
	        video.src = webkitURL.createObjectURL(stream);
	 }, function(err) {
	        console.log("Unable to get video stream!")
	 })  */
</script>
</head>
<body>
	<h1>webcamMain.jsp</h1>
	<input type="button" value="제발" onclick="send()">
	<!-- <div>
		<video width="320px" height="240px" autoplay="autoplay"></video>
	</div> -->
	<!-- 	<iframe width="1000" height="800" src="http://192.168.25.32:8888">
	
	</iframe>
	<button id="start" onclick="gonode();">시작하기</button>
	 -->
	<script>
		var webSocket = new WebSocket(
				'ws://192.168.20.179:8888/finalproject/websocket');

		webSocket.onopen = function(event) {

			onOpen(event)

		};

		function onOpen(event) {
			window.alert('hi');
			
		}
		
		function send(){
			webSocket.send('ㅎㅎㅎㅎ');
		}
	</script>

</body>
</html>