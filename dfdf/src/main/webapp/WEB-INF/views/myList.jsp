<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/including/header.jsp" />
<h1>나의 질문</h1>
<table class="table table-hover" id="mainTable">
	<tr>
<!-- 		<th><input type="checkbox" id="checkall"/></th> -->
		<th>번호</th>
		<th>제목</th>
		<th>조회수</th>
		<th>날짜</th>
	</tr>
	<c:forEach items="${qna}" var="dto">
	<tr>
<!-- 		<td><input type="checkbox" name="chk"/></td> -->
		<td>${dto.bId}</td>
		<td><a href="content?bId=${dto.bId}">${dto.bTitle}</a></td>
		<td>
		<c:forEach begin="1" end="${dto.bIndent}">-</c:forEach>
			${dto.bName}
		</td>
		<td>${dto.bHit}</td>
		<td>${dto.bDate}</td>
	</tr>
	</c:forEach>
</table>
<div class="text-right">
	<button type="button" id="submitFrm" class="btn btn-danger" ><span class="glyphicon glyphicon-remove">&nbsp;삭제하기</span></button>
	<a href="writeForm"><button type="button" id="submitFrm" class="btn btn-primary" ><span class="glyphicon glyphicon-remove">&nbsp;작성하기</span></button></a>
</div>
<nav class="text-center">
	<ul class="pagination">
		<li>
			<a href="#" aria-label="Previous">
				<span aria-hidden="true">&laquo;</span>
			</a>
	    </li>
	    <li><a href="#">1</a></li>
	    <li>
			<a href="#" aria-label="Next">
				<span aria-hidden="true">&raquo;</span>
			</a>
		</li>
	</ul>
</nav><hr />
<jsp:include page="/resources/including/footer.jsp" />