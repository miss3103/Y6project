<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/admin/header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="board_manager" method="GET">
		<select name="board_type">
			<option value="1">
			공지사항
			</option>
			<option value="2">
			사용후기
			</option>
			<option value="3">
			QnA
			</option>
		</select>
		<input type="submit" value="실행"/>
	</form>
	<c:if test="${board_type==1}">

	</c:if>
	
</body>
</html>