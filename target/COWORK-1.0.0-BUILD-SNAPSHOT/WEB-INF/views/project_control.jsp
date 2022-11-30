<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="list" value="${list }"/>
	<c:set var="main" value="${main }"/>
	<h3>프로젝트 관리</h3>
	<table border="1" cellspacing="0">
		<tr>
			<th>프로젝트 No.</th>
			<th>프로젝트</th>
			<th>프로젝트명</th>
			<th>시작일 </th>
			<th>담당자</th>
			<th>상 태</th>
		</tr>
		<c:forEach items="${list }" var="dto">
			<tr>
				<td>${dto.getProject_no() }</td>
				
					<c:forEach items="${main }" var="mdto">
						<c:if test="${mdto.getMain_no() == dto.getProject_main() }">
							<td>${mdto.getMain_name() }</td>
						</c:if>
					</c:forEach>
				
				<td>${dto.getProject_name() }</td>
				<td>${dto.getProject_start().substring(0,10) }</td>
				<td>${dto.getProject_taker() }</td>
				<td>
					<c:if test="${dto.getProject_status() == 0 }">To do</c:if>
					<c:if test="${dto.getProject_status() == 1 }">In Progress</c:if>
					<c:if test="${dto.getProject_status() == 2 }">Completed</c:if>
				</td>
			</tr>
		</c:forEach>
			<tr>
				<td colspan="6" align="center">
					<input type="button" value="추가" onclick="location.href='<%=request.getContextPath() %>/project_insert.do'">
				</td>
			</tr>
	</table>
</body>
</html>