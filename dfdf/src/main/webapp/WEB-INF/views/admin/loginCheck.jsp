<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h1>${login_info.adminId}</h1>
	고객 접속중 ...
	<c:if test="${login_info.adminId!=null}">
		로그인 성공
	</c:if>
</body>
</html>