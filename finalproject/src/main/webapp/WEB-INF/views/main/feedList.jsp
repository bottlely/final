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
<script>
function openParent(content_idx, useridx) {
	parent.openContent(content_idx, useridx);
}


</script>
</head>
<body>
	<div class="container">
    <div class="row">
        <div class="col-xs-6">Reply</div>
        <div class="col-xs-6">Trace</div>
    </div>
    <div class="row">
        <div class="col-xs-6">
        
        <c:if test="${empty reply }"> 댓글 내용이 없습니다. </c:if>
		<c:forEach var="dto" items="${reply }">
			<div class="dropdown-divider">
				<!-- 게시물 하나당 a태그하나 -->
				<a class="dropdown-item" href="javascript: openParent('${dto.content_idx }', '${sessionScope.useridx }')" > <span
					class="text-success"> <strong> <i
							class="fa fa-long-arrow-up fa-fw"></i>${dto.name}님이 댓글을남겼습니다
							<p>${dto.actdate }</p>
							
					</strong>
				</span>


				</a>
			</div>
		</c:forEach>
	
        </div>
        <div class="col-xs-6">
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
		</c:forEach>
	
        </div>
    </div>
</div>
</body>



<!--Parallax-->

</html>