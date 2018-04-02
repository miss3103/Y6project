<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/resources/including/header.jsp" />
<div class="panel panel-default panel-bg">
	<div class="panel-body"> 
		<div class="row">
			<div class="col-lg-12">
        	<h1 class="page-header">숙박후기</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
		<div class="col-lg-12">
       		<form role="form">
        		<table class="table table-hover" id="mainTable">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>조회수</th>
						<th>날짜</th>
					</tr>
					<c:forEach items="${list}" var="dto">
					<tr>
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
				</nav>
			</form>
			<div class="text-center">
				<form action="search" method="post">
					<select name="searchOption">
						<option value="bTitle">제목</option>
						<option value="bContent">본문</option>
						<option value="bName">작성자</option>
					</select>
		        	<input type="text" />
	        		<span>
	         			<button class="btn btn-default" type="submit" name="keyWord">
	         				<i class="fa fa-search"></i>
	       				</button>
	         		</span>
				</form>
			</div>
		</div>
	</div>
<jsp:include page="/resources/including/footer.jsp" />