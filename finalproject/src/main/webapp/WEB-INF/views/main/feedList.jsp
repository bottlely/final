<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
	parent.openContent(content_idx, useridx);
}


</script>
</head>
<body>
	<!-- 
	to_idx를 기준으로 피드를 불러와서 거기서 그냥 쌓아야해
	 -->
	<div class="">
    <div class="">
        <c:if test="${empty feedList }"></c:if>
		<c:forEach var="dto" items="${feedList }">
			<c:if test="${dto.flag == 1 }">
				<div class="">
					<a class="" href="javascript: openContent(${dto.content_idx }, ${sessionScope.useridx })" >
						${dto.name}님이 좋아요를 눌렀습니다.
					</a>
				</div>
			</c:if>
			<c:if test="${dto.flag == 2 }">
				<div class="">
					<a class="" href="javascript: openContent(${dto.content_idx }, ${sessionScope.useridx })" >
						<img src="myHomeFolder/profile_img/${dto.profile_img }" style="border-radius: 50%; width:30px; height:30px;">&emsp;${dto.name}님이 댓글을 남겼습니다."${dto.content }"
					</a>
				</div>
			</c:if>
			<%-- <c:if test="${feedList.flag == 3 }">
				<div class="dropdown-divider">
					<a class="dropdown-item" href="javascript: openContent(${dto.content_idx }, ${sessionScope.useridx })" >
						<span class="text-success"> <strong> <i class="fa fa-long-arrow-up fa-fw"></i>${dto.name}님이 좋아요를 눌렀습니다.</strong></span>
					</a>
				</div>
			</c:if> --%>
			
			</div>
		</c:forEach>
	
        </div>
        <%-- <div class="col-xs-6">
        <c:if test="${empty like }"> 발자취 내용이 없습니다. </c:if>
	
		<c:forEach var="dto" items="${like }">
			<div class="dropdown-divider">
				<!-- 게시물 하나당 a태그하나 -->
				<a class="dropdown-item" href="javascript: openParent('${dto.content_idx }')" > <span
					class="text-success"> <strong> <i
							class="fa fa-long-arrow-up fa-fw"></i>${dto.name}님이 발자취를 남겼습니다.
							<p>${dto.actdate }</p>
							
					</strong>
				</span>


				</a>
			</div>
		</c:forEach> --%>
	
    </div>
</div>
</body>



<!--Parallax-->

</html>