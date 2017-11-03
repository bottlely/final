<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<script src="https://webrtc.github.io/adapter/adapter-latest.js"></script>
<script src="webrtc.js"></script>
</head>
<body>
	<h1>webcamMain.jsp</h1>
	<video id="localVideo" autoplay muted style="width: 40%;"></video>
	<video id="remoteVideo" autoplay style="width: 40%;"></video>
	<br />

        <input type="button" id="start" onclick="start(true)" value="Start Video"></input>

        <script type="text/javascript">
            pageReady();
        </script>
</body>
</html>