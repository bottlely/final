<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Websocket Client</title>
<script type="text/javascript" src="<c:url value="/resources/jquery-2.1.4.min.js"/>"></script>
<script type="text/javascript">
$(function () {
    //var ws = new WebSocket("ws://192.168.8.32:8888/MavenWeb/chat");
    // 인터셉터에 파라미터를 전달하려는 경우에는 아래처럼 할 수도 있다
    var ws = new WebSocket("ws://192.168.43.171:8888/finalproject/webcam/chat?id=1234");
    ws.onopen = function () {
        $('#chatStatus').text('Info: connection opened.');
 
        $('input[name=chatInput]').on('keydown', function(evt){
            if(evt.keyCode==13){
                var msg = $('input[name=chatInput]').val();
                ws.send(msg);
                $('input[name=chatInput]').val('');
            }
        });
    };
    ws.onmessage = function (event) {
        $('textarea').eq(0).prepend(event.data+'\n');
    };
    ws.onclose = function (event) {
        $('#chatStatus').text('Info: connection closed.');
    };
});
</script>
</head>
<body>
<p>
<div id='chatStatus'></div>
<textarea name="chatMsg" rows="5" cols="40"></textarea>
<p>
메시지 입력 : <input type="text" name="chatInput">
 
</body>
</html>
