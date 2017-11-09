<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function replyList(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var data = XHR.responseText;
			var lists = eval('('+data+')');
			var content_writer = '박연수';
			var content_content = '하이하이';
			var reply_list = document.all.reply_List;
			var str='';

			if(lists.replyList.length==0){
				str = '댓글 없습니다.'
				reply_list.innerHTML = str;
			}else{
				for(var i=0; i<lists.replyList.length; i++){
					var l = lists.replyList[i];
					str += l.profile_img + " : " + l.name + " : " + l.content + '<hr>';
				}
				reply_list.innerHTML = str;
			}
		}
	}
}


</script>
</head>
<body>


<div>
<img src="assets_main/images/아이유6.jpg" style="width: 25px; height: 25px; border-radius: 50%; float: left;">
<p style="color: blue;">&nbsp;<b>양진모</b>&nbsp; <font style="color: black;">
댓글내용1
</font>
<p> 
<hr>
</div>

<div>
<img src="assets_main/images/아이유6.jpg" style="width: 25px; height: 25px; border-radius: 50%; float: left;">
<p style="color: blue;">&nbsp;<b>양진모</b>&nbsp; <font style="color: black;">
댓글내용1
</font>
<p> 
<hr>
</div>
<div>
<img src="assets_main/images/아이유6.jpg" style="width: 25px; height: 25px; border-radius: 50%; float: left;">
<p style="color: blue;">&nbsp;<b>양진모</b>&nbsp; <font style="color: black;">
대박 중박 소박 시박 명박이도 인정하는 각 지리고요 오지고요 고요고요 고요한 밤이고요 실화냐? 다큐냐? 맨큐냐? 오지고 지리고 렛잇고 오졌따리 오졌따 쿵쿵따리 쿵쿵따 산기슭이 인정하는 바이고요 슭곰발이 인정하는 바입니다 이거레알 반박불가 빼박캔트 버벌진트 버캔스탁인 부분 팩트체크 들어가 샘오취리도 놀라서 에취하고요 오지고요 지리고요 오지고요 지리고요 오지고요 지리고요 오지고 지리고 오지고 지리고 오지고 지리고 오지고 지리고 오지고 지리고 
</font>
<p> 
<hr>
</div>
<div>
<img src="assets_main/images/아이유6.jpg" style="width: 25px; height: 25px; border-radius: 50%; float: left;">
<p style="color: blue;">&nbsp;<b>양진모</b>&nbsp; <font style="color: black;">
댓글내용1
</font>
<p> 
<hr>
</div>
<div>
<img src="assets_main/images/아이유6.jpg" style="width: 25px; height: 25px; border-radius: 50%; float: left;">
<p style="color: blue;">&nbsp;<b>양진모</b>&nbsp; <font style="color: black;">
댓글내용1
</font>
<p> 
<hr>
</div>
<div>
<img src="assets_main/images/아이유6.jpg" style="width: 25px; height: 25px; border-radius: 50%; float: left;">
<p style="color: blue;">&nbsp;<b>양진모</b>&nbsp; <font style="color: black;">
댓글내용1
</font>
<p> 
<hr>
</div>


</body>
</html>