<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/admin/header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
td {
	text-align: center ;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="board_manager" method="GET">
		
		<select name="bType">
			<c:forEach items="${board_type_list}" var="type_list">
				<option value="${type_list.bType}">
					${type_list.typeName}
				</option>
			</c:forEach>
		</select>
		<input type="submit" value="실행"/>
	</form>
			<table class="table table-hover">
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>날짜</th>
								<th>수정</th>
								<th>삭제</th>
							</tr>
							<tr>
								<td colspan="6">
									<a href="write_board">글 작성</a>
								</td>
							</tr>
							<c:forEach items="${list}" var="dto" >
							<tr>
								<td>${dto.bId}</td>
								<td>${dto.bTitle}</td>
								<td>${dto.bName}</td>
								<td>${dto.bDate}</td>
								<td><a href="update_board">글 수정</a>
								<td><a href="delete_board">글 삭제</a>
							</tr>
							</c:forEach>
						</table>
	
	
</body>
</html>