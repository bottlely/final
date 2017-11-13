<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>


<style type="text/css">
body {
   background-color: #f2fdff;
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

input[type=file] {
   display: none;
}

.file_input label {
   position: relative;
   cursor: pointer;
   display: inline-block;
   vertical-align: middle;
   overflow: hidden;
   width: 100px;
   height: 30px;
   text-align: center;
   line-height: 30px;
}

.file_input label input {
   position: absolute;
   width: 0;
   height: 0;
   overflow: hidden;
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
<script src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript">
    
   var not_upload = [];
   var sel = "";
  
   function Search(e){
      
           var f = e.files[0];
           
                 if(!f.type.match("video/mp4")) {
                     alert("확장자는 mp4,webm,ogg 동영상 확장자만 가능합니다.");
                     return;
                 }
                 
                 if(f.size > 104857600){
                    alert("업로드 용량을 초과하였습니다.");
                     return;
                 }
               
                var data = new FormData();
                data.append("video", f);
                data.append("useridx", '${sessionScope.useridx}');
                     
                var xhr = new XMLHttpRequest();
                  xhr.open("POST","videoThumbnail.do");
                  xhr.send(data);
                  xhr.onload = function(e) {
                      if(this.status == 200) {
                         var jsonResponse = JSON.parse(e.currentTarget.responseText);
                         
                         console.log(jsonResponse["fileName"]);
                        var source = document.getElementById('src');
                        source.src = "myHomeFolder/content/"+jsonResponse["fileName"];
                        
                        not_upload.push(jsonResponse["fileName"]);
                         sel = jsonResponse["fileName"];
                        
                        var player = document.getElementById('player');
                         player.load();
                           player.play();
                           player.loop = true;
                      }
                  }
          }
        
        function submitAction() {
           
            var data = new FormData();
            
            data.append("useridx", '${sessionScope.useridx}');
            
            var tag =  document.getElementById("tag");
          data.append("tag",tag);
            
          var content =document.getElementById("content");
          data.append("content",content);
          
             data.append("not_upload",not_upload);
             data.append("sel",sel);
             
             var xhr = new XMLHttpRequest();
            xhr.open("POST","uploadVideo.do");
            xhr.send(data);
              xhr.onload = function(e) {
                 if(this.status == 200) {
                   var jsonResponse = JSON.parse(e.currentTarget.responseText);
                  if(jsonResponse["result"] > 0){
                     alert('업로드 완료!');
                     window.opener.location.reload();
                   window.close();
                  }else{
                     alert('업로드 실패!');
                  }
                  }
             }
        
        }
        
        function play(){
           console.log("play");
            var player = document.getElementById('player');
            player.load();
              player.autoplay();
        }

        function clearText(field){
           if(field.defaultValue == field.value) field.value = '';
           else if(field.value == '') field.value = field.defaultValue;
        }
        
        function back(){
           window.opener.location.reload();
           window.close();
        }
        
        function fflist(e){
           var sel = e.options[e.selectedIndex].value;
           if(sel == 2 || sel == 3){
              alert('hi!!');
           }
        }
        
    </script>
</head>

<body>
   <div class="container" style="background-color: white;">
      <div class="row" style="padding-top: 10px;">
         <div class="col-sm-12">
            <span class="avatar"> <img
               src="myHomeFolder/profile_img/${profile}" alt="" id="pf" />
            </span> <label id="name">${writer}</label> <select name="coverage"
               onchange="hi(this)">
               <option value="0">전체공개</option>
               <option value="1">친구만</option>
               <option value="2">특정 대상</option>
               <option value="3">제외할 대상</option>
               <option value="4">나만</option>
            </select>
         </div>
      </div>
      <hr>
      <div class="row">
         <div class="col-sm-12">
            <input type="text" class="form-control" id="tag" name="tag"
               placeholder="해시태그" onFocus="clearText(this)"
               onBlur="clearText(this)">
         </div>
         <hr>
         <div class="col-sm-12">
            <div class="form-group">
               <textarea class="form-control" rows="5" id="content" name="content"
                  placeholder="동영상에 대해 이야기 해주세요 :)" onFocus="clearText(this)"
                  onBlur="clearText(this)"></textarea>
            </div>
         </div>
      </div>
      <hr>

      <div class="row">
         <div class="col-md-12">
            <div class="file_input" style="margin-bottom: 15px;">
               <label class="btn btn-primary">파일 찾기<input type="file" id="video"
                  onchange="Search(this)" class="btn btn-primary">
               </label>               
            </div>
         </div>
      </div>

      <div class="row" style="padding-bottom: 10px;">
         <div class="col-sm-12">
            <input type="button" value="업로드" class="btn btn-success"
               onclick="submitAction();"> <input type="button" value="취소"
               class="btn btn-Info" onclick="back()">
         </div>
      </div>

      <video id="player" width="320" height="240">
         <source id="src" src="" type="video/mp4" onchange="play()" />
      </video>
   </div>
</body>
</html>