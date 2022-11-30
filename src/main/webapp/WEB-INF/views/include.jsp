<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--  
<script src="${path}/resources/js/test.js"></script>

-->
<link href="${path}/resources/css/include.css" rel="stylesheet"/> 
</head>
<body id="grid_container">

	<header id="header">
		<div id="header_container">
			<div id="header_left">

			</div>	
			
			<div id="header_center">
				<div id="navi">
				<ul>
					<li class="navi_li"><a href=""><img src="resources/images/캘린더.png" width="50" height="50" /></a></li>
					<li class="navi_li"><a href=""><img src="resources/images/프로젝트.png" width="50" height="50" /></a></li>
					<li class="navi_li"><a href=""><img src="resources/images/커뮤니티.png" width="50" height="50" /></a></li>
					<li class="navi_li"><a href=""><img src="resources/images/주소록.png" width="50" height="50" /></a></li>
					<li class="navi_li"><a href=""><img src="resources/images/메일.png" width="45" height="45" /></a></li>
					<li class="navi_li"><a href=""><img src="resources/images/메신저.png" width="55" height="55" /></a></li>
				</ul>	
				</div>			
			</div>
			
			<div id="header_right">
			
			</div>	
		</div>
		
	</header>
	
		<div id="side">
			<label>주소록</label>
		</div>	
	
</body>
</html>