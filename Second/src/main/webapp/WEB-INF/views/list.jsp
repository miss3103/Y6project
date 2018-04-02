<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/resources/including/header.jsp" />
	<div class="panel panel-default panel-bg">
	<div class="panel-body"> 
		<div class="row">
			<div class="col-lg-12">
                    <h1 class="page-header">공지사항</h1>
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
							<form class="form-inline">
  <div class="form-group">
    <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
    <div class="input-group">
      <div class="input-group-addon">$</div>
      <input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
      <div class="input-group-addon">.00</div>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Transfer cash</button>
			        		<span>
			         			<button class="btn btn-default" type="submit" name="keyWord">
			         				<i class="fa fa-search"></i>
			       				</button>
			         		</span>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="/resources/including/footer.jsp" />