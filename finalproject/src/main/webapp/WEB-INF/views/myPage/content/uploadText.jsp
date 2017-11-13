<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

<style>
body {
   background-color:#f2fdff;
}

.container {
   margin-top: 20px;
}

#pf {
   width: 50px;
   heigth: 50px;
}

#name {
   width: 67%;
}

select {
    width: 100px;
    height: 30px;
    padding-left: 10px;
    font-size: 12px;
    color: #006fff;
    border: 1px solid #006fff;
    border-radius: 3px;
}

</style>

<script type="text/javascript">
function clearText(field){
   if(field.defaultValue == field.value) field.value = '';
   else if(field.value == '') field.value = field.defaultValue;
}

function back(){
   window.opener.location.reload();
   window.close();
}
</script>
</head>
<body>

<div class="container" style="background-color: white;">
   <div class="row" style="padding-top:10px;">
      <div class="col-sm-12">
         <span class="avatar">
         <img src="myHomeFolder/profile_img/${profile}" alt="" id="pf"/>
         </span>
          <label id="name">${writer}</label>
          <select name="coverage" onchange="hi(this)">
             <option value="0">전체공개</option>
             <option value="1">친구만</option>
             <option value="2">특정 대상</option>
             <option value="3">제외할 대상</option>
             <option value="4">나만</option>
         </select>
      </div>
   </div>
   <hr>
   <form action="uploadText.do" method="post">
      <input type="hidden" name="useridx" value="${sessionScope.useridx}">
      <div class="row">
         <div class="col-sm-12">
            <input type="text" class="form-control" id="tag" name="tag"
               placeholder="해시태그">
         </div>
         <div class="col-sm-12">
            <input type="text" name="title" class="form-control" placeholder="제목">
         </div>
         <hr>
         <div class="col-sm-12">
            <div class="form-group">
               <textarea class="form-control" rows="5" id="content" name="content" placeholder="이야기 해주세요 :)" required></textarea>
            </div>
         </div>
      </div>
      
      <div class="row" style="padding-bottom:10px;">
          <div class="col-sm-12">
            <input type="submit" value="업로드" class="btn btn-success">
            <input type="button" value="취소" class="btn btn-Info" onclick="back()">
         </div>
   </div>
   
   
   </form>
</div>
</body>
</html>