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
	var p1 = document.all.ave;
	var strGo='';
//	alert(i);
//	alert(str);
	
	if(str==""){
		//저장된 정보가 없음. 즉 status!=3
		strGo='등록된 게시물이 아닙니다!';
	}
	else{
		var arr = str.split('/');
		var leng = arr.length;
		
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth()+1;
	
		
		if(leng<8){ //게시한지 7일이 안됨
			for(var i=(leng-1); i>=0; i--){
				strGo += (mm+'/'+dd+'.      '+arr[i]+'회'+'<hr>');
				dd = dd-1;
			}
		}
		else{
			for(var i=(leng-1); i>=(leng-7); i--){
				strGo += (mm+'/'+dd+'.      '+arr[i]+''+'<hr>');
				dd = dd-1;
			}
		}	

	}
	p1.innerHTML = strGo;
	location.href='#collapse2';
	//바로 위치 이동 !
}

function showNum(){	
	sendRequest('showNum.do', null, showNumResult, 'GET');
}

function showNumResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			
			var data = XHR.responseText;
			var lists = eval('('+data+')');
			var p1 = document.all.num;
			var str='';
		
			if(lists.list.length==0){
				str = '신청한 광고가 없습니다.'
				p1.innerHTML = str;
			}
			else{
				//alert(lists.list.length);
				var newArr = new Array(lists.list.length);
				var nameArr = new Array(lists.list.length);
				
				for(var i=0; i<lists.list.length; i++){
					var l = lists.list[i];
				//	alert(l.num_amount);
					newArr[i] = l.num_amount;
				//	nameArr[i] = l.ad_name;
//					alert(newArr[i]);
					//str += '<a href="showAve.do?ad_idx='+l.ad_idx+'">'+l.ad_name+'</a><hr>';
				}
//				alert('2');
				newArr.sort(function(a, b){
					return b-a;
				});
//				alert('3');
				
				for(var i=0; i<lists.list.length; i++){
//					alert('d');
					var cnt=0;
					while(true){
						var l = lists.list[cnt];
						if(newArr[i]==l.num_amount){
							nameArr[i] = l.ad_name;
							break;
						}
						cnt = cnt+1;
					}
				}
				
				for(var i=0; i<newArr.length; i++){
					str += (i+1)+'위.      '+nameArr[i]+'의 현재까지 총 유입량?  '+newArr[i]+'<hr>';
					//str += (i+1)+'.  의 현재까지 총 유입량?  '+newArr[i].num_amount+'<hr>';
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
     	 <div id="cur"></div>
      </div>
    </div>
    
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" onclick="showAve()" href="#collapse2">광고 통계</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body" >
          <div id="ave"></div>
        </div>
    </div>
    
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" onclick="showNum()" href="#collapse3">광고 수치로 분석</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">
        	<div id="num"></div>
        </div>
    </div>
    
    
  </div> 
</div>

</body>
</html>