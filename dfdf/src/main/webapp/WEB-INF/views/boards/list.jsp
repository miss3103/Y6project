<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/resources/including/header.jsp" />

	<div class="panel panel-default panel-bg">
		<div class="panel-body">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">${typeName}</h1>
				</div><!-- /.col-lg-12 -->
			</div><!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<form role="form" action="writeForm">
						<table class="table table-hover">
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>날짜</th>
							</tr>
							<c:forEach items="${list}" var="dto" begin="${(page-1)*20 }" end="${page*20-1}">
							<tr>
								<td>${dto.bId}</td>

								<td><a href="content?bId=${dto.bId}&page=${page}&bType=${bType}">${dto.bTitle}</a></td>
								<td>${dto.bName}</td>
								<td>${dto.bDate}</td>
							</tr>
							</c:forEach>
						</table>
						</form>
						<a href="writeForm?bType=${bType}">
							<div class="text-right">
							${adminDto}
								<c:if test="${bType!=1||adminId!=null}">
									<button type="submit" class="btn btn-primary">
										<i class="fa fa-edit" aria-hidden="true"></i>&nbsp;작성하기
									</button>
								</c:if>
							</div>
						</a>
						<nav class="text-center">
						<ul class="pagination">
							<li>
								<a href="list?page=${page>1?(page-1):1}&bType=${bType}" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
						    </li>
						    	<li>
								    <c:forEach var="i" begin="1" end="${count/20+(count%20>0?1:0)}" step="1">
								    <a href="list?page=${i}&bType=${bType}">${i}</a>
								    </c:forEach>
						    	</li>
						    <li>
								<a href="list?page=${page<((count-count%20)/20+(count%20>0?1:0))?page+1:page}&bType=${bType}" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	
<jsp:include page="/resources/including/footer.jsp" />