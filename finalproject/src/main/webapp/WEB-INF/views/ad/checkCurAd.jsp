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

function showCur(){
	sendRequest('showCur.do', null, showCurResult, 'GET');
}

function showCurResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var data = XHR.responseText;
			var lists = eval('('+data+')');
			var p1 = document.all.abc;
			var str='';
		
			if(lists.list.length==0){
				str = '신청한 광고가 없습니다.'
				p1.innerHTML = str;
			}
			else{
				for(var i=0; i<lists.list.length; i++){
					var l = lists.list[i];
					str += l.ad_name+'<hr>';
				}
				p1.innerHTML = str;
			}
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
     	 <div id="abc"></div>
      </div>
    </div>
    
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">하루 평균 광고 도달 수</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body"></div>
    </div>
    
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">광고 수치로 분석</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body"></div>
    </div>
    
    
  </div> 
</div>

</body>
</html>