<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
<title>Insert title here</title>
</head>
<body>	
		
		<c:if test="${empty reply }"> 댓글 내용이 없습니다. </c:if>
		<c:forEach var="list" items="${reply }">
            <div class="dropdown-divider"></div>
            <!-- 게시물 하나당 a태그하나 -->
            <a class="dropdown-item" href="main_view.do?content_idx=20">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>${list}님이 댓글을남겼습니다</strong>
              </span>
              
              
            </a>
		</c:forEach>
		<br>
		<c:if test="${empty like }"> 좋아요 내용이 없습니다. </c:if>
		<c:forEach var="list" items="${like }">
            <div class="dropdown-divider"></div>
            <!-- 게시물 하나당 a태그하나 -->
            <a class="dropdown-item" href="main_view.do?content_idx=20">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>${list}님이 회원님 게시물을 좋아합니다.</strong>
              </span>
              
              
            </a>
		</c:forEach>

</body>
</html>