<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/resources/including/header.jsp" />

	<div class="panel panel-default panel-bg">
		<div class="panel-body">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">숙박후기</h1>
				</div><!-- /.col-lg-12 -->
			</div><!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<form role="form" href="writeForm">
						<table class="table table-hover">
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
<!-- 							<button type="button" id="submitFrm" class="btn btn-danger" ><span class="glyphicon glyphicon-remove">&nbsp;삭제하기</span></button> -->
							<button type="submit" id="submitFrm" class="btn btn-primary">
								<i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;작성하기
							</button>
						</div>
					</form>
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
					<div class="text-center">
						<form action="search" method="post" class="form-inline">
							<div class="form-group">
								<select class="form-control" id="sel1" name="searchOption">
									<option value="bTitle">제목</option>
									<option value="bContent">내용</option>
									<option value="bContent">제목 내용</option>
								</select>
								<input type="text" class="form-control" placeholder="search..." name="keyWord">
								<button type="submit" class="btn btn-primary">
									<i class="fa fa-search"></i>&nbsp;검색
								</button>
			         		</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<jsp:include page="/resources/including/footer.jsp" />