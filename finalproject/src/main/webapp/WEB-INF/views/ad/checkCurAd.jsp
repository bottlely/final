<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<script type="text/javascript" src="js/httpRequest.js"></script>
<script>

(function imme(){
	
	if("${i}"==""){
		//alert("시작하자마자 날 보게 될거야");
	}
	else{
		//alert(${i});
		showAve();
	}
})()


function showCur(){
	sendRequest('showCur.do', null, showCurResult, 'GET');
}

function showCurResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var data = XHR.responseText;
			var lists = eval('('+data+')');
			var p1 = document.all.cur;
			var str='';
		
			if(lists.list.length==0){
				str = '신청한 광고가 없습니다.'
				p1.innerHTML = str;
			}
			else{
				for(var i=0; i<lists.list.length; i++){
					var l = lists.list[i];
					str += '<a href="showAve.do?ad_idx='+l.ad_idx+'">'+l.ad_name+'</a><hr>';
				}
				p1.innerHTML = str;
			}
		}
	}
}

function showAve(){
	var i = "${i}";
	var str = "${str}";
	alert(i);
	alert(str);
	alert('111'); 
//	alert(str);
//	alert(data);
//	var data = XHR.responseText;
//	var lists = eval('('+data+')');
//	alert(list);
}

function showAveResult(){
	if(XHR.readyState==4){

	//	alert(XHR.status);
		if(XHR.status==200){
		//	var data = XHR.responseText;
		//	alert(data);
		}
	}
	
}
</script>


<div class="container">
<h2>Group Name</h2>
  <div class="panel-group" id="accordion">
  
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" onclick="showCur()" href="#collapse1">광고 신청 현황</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
      <div class="panel-body">
     	 <div id="cur"></div>
      </div>
    </div>
    
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" onclick="showAve()" href="#collapse2">위에서 클릭하면 넘어오게! 진행중이면 진행중 아니면, 광고 통계</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">
          <div id="ave"></div>
        </div>
    </div>
    
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">광고 수치로 분석</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">
        
        </div>
    </div>
    
    
  </div> 
</div>

</body>
</html>