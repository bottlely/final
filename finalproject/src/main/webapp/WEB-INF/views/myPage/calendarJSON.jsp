<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${empty list}">
{contents:"검색된 날짜의 게시물이 없습니다."}
</c:if>
<c:set var="dto" value="${list}"></c:set>
{contents:[{member_idx:'${dto.idx}',path:'${dto.path}'}]}
