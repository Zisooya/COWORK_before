<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8"  %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>임시 메인 페이지</h1>
gitingnore test2 by 현우<br>
gitingnore test3 by 현우
<P><a href="<%=request.getContextPath() %>/testDB.do">DB 연동 테스트</a></P>
<a href="<%=request.getContextPath()%>/project_control.do">[프로젝트 관리]</a>
</body>
</html>
