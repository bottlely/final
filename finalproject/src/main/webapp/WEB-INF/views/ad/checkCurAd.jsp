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

<h2>Group Name</h2>

<div class="container1">
  <button type="button" class="btn1" data-toggle="collapse" data-target="#demo1">광고 신청 현황</button>
  <div id="demo1" class="collapse">
	<!-- 광고 상태에 따라 %다르게 주기 값을 받아오기 -->  
    <div class="progress-bar progress-bar-success" role="progressbar" style="width:25%">
      광고 신청
    </div>
    <div class="progress-bar progress-bar-info" role="progressbar" style="width:25%">
      심사중
    </div>
    <div class="progress-bar progress-bar-warning" role="progressbar" style="width:25%">
      결제 확인 중
    </div>
    <div class="progress-bar progress-bar-danger" role="progressbar" style="width:25%">
      광고물 게시 완료
    </div>
   </div> 

</div>

<div class="container2">  
  <button type="button" class="btn2" data-toggle="collapse" data-target="#demo2">하루 평균 광고 도달 수</button>
  <div id="demo2" class="collapse">
    demo2
  </div>
</div>
  
<div class="container3">
  <button type="button" class="btn3" data-toggle="collapse" data-target="#demo3">광고 수치로 분석하기</button>
  <div id="demo3" class="collapse">
    demo3
  </div>
</div>



</body>
</html>