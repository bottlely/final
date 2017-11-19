<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script type="text/javascript" src="js/httpRequest.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.feedList img{
        border-radius: 50%;
        width:10px;
        height:10px;
        
        }
</style>

<script>
function openContent(content_idx, useridx) {
	alert('hi');
	var con_idx = document.getElementById('content_idx').value;
	parent.openContent(con_idx, '${sessionScope.useridx}');
}
function sender() {
	sendRequest('activityList.do?idx=${sessionScope.useridx}', null, activityList, 'GET');

}
function activityList() {
	if(XHR.readyState==4){
		if(XHR.status==200){
			var data = XHR.responseText;
            var lists = eval('('+data+')');
            var big_div = document.createElement('div');
           
           	for(var i=0; i < lists.feed.length; i++) {
           		if(lists.feed[i].flag==1) { //like
           			if(lists.feed[i].to_idx=='${sessionScope.useridx}') {
           				var txt = document.createTextNode(lists.feed[i].name+'님이 좋아요를 눌렀습니다.');
           				var div = document.createElement('div');
           				var table = document.createElement('table');
           				var tr = document.createElement('tr');
               			var td1 = document.createElement('td');
               			var td2 = document.createElement('td');
            			var img = document.createElement('img');
            			
            			big_div.style["width"]="auto";
            			big_div.style["padding"]="3px";
            			big_div.style["margin-top"]="5px";
            			
            			txt.innerHTML='<a href="javascript: openContent(lists.feed[i].content_idx, ${sessionScope.useridx})">'+lists.feed[i].name+'님이 댓글을 남겼습니다. "'+lists.feed[i].content+'"'+'</a>';
            			
            			td1.setAttribute("valign", "middle");
            			td1.setAttribute("colspan", "2");
            			td2.setAttribute("valign", "middle");
            			img.setAttribute("src", "myHomeFolder/profile_img/"+lists.feed[i].profile_img);
            			img.setAttribute("width", "30px");
            			img.setAttribute("height", "30px");
            			img.setAttribute("style", "border-radius: 50%;");
            			
            			table.appendChild(tr);
            			tr.appendChild(td1);
            			tr.appendChild(td2);
            			td1.appendChild(img);
            			td2.appendChild(txt);
            			div.appendChild(table);
            			big_div.appendChild(div);
           			}
           		}
           		
           		
           		if(lists.feed[i].flag==2) { //reply
           			if(lists.feed[i].to_idx=='${sessionScope.useridx}') {
           				var txt = document.createTextNode(lists.feed[i].name+'님이 댓글을 남겼습니다. "'+lists.feed[i].content+'"');
           				var div = document.createElement('div');
           				var table = document.createElement('table');
           				var tr = document.createElement('tr');
               			var td1 = document.createElement('td');
               			var td2 = document.createElement('td');
            			var img = document.createElement('img');
            			
            			big_div.style["width"]="auto";
            			big_div.style["padding"]="3px";
            			big_div.style["margin-top"]="5px";
            			
            			txt.innerHTML='<a href="javascript: openContent(lists.feed[i].content_idx, ${sessionScope.useridx})">'+lists.feed[i].name+'님이 댓글을 남겼습니다. "'+lists.feed[i].content+'"'+'</a>';
            			
            			td1.setAttribute("valign", "middle");
            			td1.setAttribute("colspan", "2");
            			td2.setAttribute("valign", "middle");
            			img.setAttribute("src", "myHomeFolder/profile_img/"+lists.feed[i].profile_img);
            			img.setAttribute("width", "30px");
            			img.setAttribute("height", "30px");
            			img.setAttribute("style", "border-radius: 50%;");
            			
            			table.appendChild(tr);
            			tr.appendChild(td1);
            			tr.appendChild(td2);
            			td1.appendChild(img);
            			td2.appendChild(txt);
            			div.appendChild(table);
            			big_div.appendChild(div);
           			}
           		}
           		
           		if(lists.feed[i].flag==3) { //follow
           			if(lists.feed[i].to_idx=='${sessionScope.useridx}') {
           				var txt = document.createTextNode(lists.feed[i].name+'님이 회원님을 팔로우하기 시작했습니다.');
           				var div = document.createElement('div');
           				var table = document.createElement('table');
           				var tr = document.createElement('tr');
               			var td1 = document.createElement('td');
               			var td2 = document.createElement('td');
            			var img = document.createElement('img');
            			
            			big_div.style["width"]="auto";
            			big_div.style["padding"]="3px";
            			big_div.style["margin-top"]="5px";
            			
            			txt.innerHTML='<a href="javascript: openContent(lists.feed[i].content_idx, ${sessionScope.useridx})">'+lists.feed[i].name+'님이 댓글을 남겼습니다. "'+lists.feed[i].content+'"'+'</a>';
            			
            			td1.setAttribute("valign", "middle");
            			td1.setAttribute("colspan", "2");
            			td2.setAttribute("valign", "middle");
            			img.setAttribute("src", "myHomeFolder/profile_img/"+lists.feed[i].profile_img);
            			img.setAttribute("width", "30px");
            			img.setAttribute("height", "30px");
            			img.setAttribute("style", "border-radius: 50%;");
            			
            			table.appendChild(tr);
            			tr.appendChild(td1);
            			tr.appendChild(td2);
            			td1.appendChild(img);
            			td2.appendChild(txt);
            			div.appendChild(table);
            			big_div.appendChild(div);
           			}
           		}
           		
           	}
           	document.getElementById('total_feedList').appendChild(big_div);
		}
	} 
	
} 
</script>
</head>
<body onload="sender()">
	<!-- 
	to_idx를 기준으로 피드를 불러와서 거기서 그냥 쌓아야해
	 -->
	<div id="total_feedList">
		
    </div>
</body>



<!--Parallax-->

</html>