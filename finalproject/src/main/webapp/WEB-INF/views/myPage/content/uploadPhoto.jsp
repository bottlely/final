<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
 <style type="text/css">
 
	input[type=file] {
        display: none;
  	}
  	
  	.imgs_wrap img {
        max-width: 150px;
        margin-left: 10px;
        margin-right: 10px;
     }
   
</style>
 <script type="text/javascript" src="js/jquery-3.1.0.min.js" charset="utf-8"></script>
    <script type="text/javascript">

        // 이미지 정보들을 담을 배열
        var sel_files = [];


        $(document).ready(function() {
            $("#input_imgs").on("change", handleImgFileSelect);
        }); 

        function fileUploadAction() {
            console.log("fileUploadAction");
            $("#input_imgs").trigger('click');
        }

        function handleImgFileSelect(e) {

            // 이미지 정보들을 초기화
            sel_files = [];
            $(".imgs_wrap").empty();

            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);

            var index = 0;
            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")) {
                    alert("확장자는 이미지 확장자만 가능합니다.");
                    return;
                }

                sel_files.push(f);

                var reader = new FileReader();
                reader.onload = function(e) {
                    var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
                    $(".imgs_wrap").append(html);
                    index++;

                }
                reader.readAsDataURL(f);
                
            });
        }



        function deleteImageAction(index) {
            console.log("index : "+index);
            console.log("sel length : "+sel_files.length);

            sel_files.splice(index, 1);

            var img_id = "#img_id_"+index;
            $(img_id).remove(); 
        }

        function submitAction() {
             
            if(sel_files.length < 1) {
                alert("한개이상의 파일을 선택해주세요.");
                return;
            }   
    			
    			 var data = new FormData();
    			
    			 for(var i=0, len=sel_files.length; i<len; i++) {
    	                var name = "image_"+i;
    	                data.append(name, sel_files[i]);
    	            }
    			 
    			 data.append("image_count", sel_files.length);
    			 data.append("useridx", '${sessionScope.useridx}');
    			 
    			 var content = document.getElementsByTagName("textarea")[0].value;
    			 data.append("content",content);
    			 //data.append("type",1);
    			 
    	        /* $.ajax({
    	            type : 'post',
    	            url : 'uploadPhoto.do',
    	            data : data ,
    	            processData : false,
    	            contentType : false
    	           }).error(function(msg) {
    	            	alert('error: 업로드할 수 없습니다.');
    	           }).done(function(msg) {
    	           
    	            if(msg==1){
    	             	alert('정상적으로 취소처리가 되었습니다. 리스트 페이지로 이동합니다.');
    	             	document.getElementById('frm').submit();
    	            }else{
    	             alert('취소처리가 되지 않았습니다. 잠시 후에 시도해 주십시오.');
    	            }

    	           }); */
    	           
		            var xhr = new XMLHttpRequest();
		            xhr.open("POST","uploadPhoto.do");
		            xhr.send(data);
		            xhr.onload = function(e) {
		                if(this.status == 200) {
		                	var jsonResponse = JSON.parse(e.currentTarget.responseText);
		                    if(jsonResponse["result"] == 0){
		                    	alert('업로드 완료!');
		                    	document.getElementById('myHome').submit();
		                    }else{
		                    	alert('업로드 실패!');
		                    }
		                }
		            }

        }

    </script>
</head>

<body>
	<h2></h2>
    <div>
        <div class="input_wrap">
            <a href="javascript:" onclick="fileUploadAction();" class="my_button">파일 업로드</a>
            <input type="file" id="input_imgs" multiple/>
        </div>
    </div>

    <div>
        <div class="imgs_wrap">
            <img id="img" />
        </div>
    </div>
    
    <textarea></textarea>

	<a href="javascript:" class="my_button" onclick="submitAction();">업로드</a>
	
	<form id="myHome" action="myHomeForm.do" method="post">
		<input type="hidden" name="useridx" value="${sessionScope.useridx}">
		<input type="submit" value="back">
	</form>

</body>
</html>
