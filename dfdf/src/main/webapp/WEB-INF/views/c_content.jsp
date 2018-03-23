<%@ page language="java" contentType="text/html; charset=utf-8" %>
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
	<form class="form-horizontal" action="modify" method="post">
		<div class="panel panel-default">
		  <div class="panel-heading">
		  조회수 날짜
		  </div>
  			<div class="panel-body">
		  		<div class="form-group">
		    		<label for="inputEmail3" class="col-sm-2 control-label">제목</label>
		    		<div class="col-sm-10">
		      			<input type="text" class="form-control" id="inputEmail3" placeholder="${content.bTitle}" name="bTitle" readonly>
		    		</div>
		  		</div>
		  		<div class="form-group">
		    		<label for="inputPassword3" class="col-sm-2 control-label">작성자</label>
		    		<div class="col-sm-10">
		      			<input type="text" class="form-control" id="inputPassword3" placeholder="${content.bName}" name="bName" readonly>
		    		</div>
		  		</div>
		  		<div class="form-group">
		    		<label for="inputPassword3" class="col-sm-2 control-label">내용</label>
		    		<div class="col-sm-10">
		      			<textarea rows="10" cols="80" name="bContent" readonly="readonly" class="form-control">${content.bContent}</textarea>
		    		</div>
		  		</div>
		  		<div class="form-group">
		    		<label for="inputPassword3" class="col-sm-2 control-label"></label>
		    		<div class="col-sm-10 text-right">
						<a href="review">
							<button type="button" class="btn btn-primary">
								<i class="fa fa-list" aria-hidden="true"></i>&nbsp;목록
							</button>
						</a>
						<a href="list">
							<button type="button" class="btn btn-warning">
								<i class="fa fa-pencil" aria-hidden="true"></i>&nbsp;수정
							</button>
						</a>
						<a href="list">
							<button type="button" class="btn btn-danger">
								<i class="fa fa-times" aria-hidden="true"></i>&nbsp;삭제
							</button>
						</a>
					</div>
		    	</div>
		  	</div>
		</div>
	</form>
	</div>
	</div>
	</div>
	</div>
	
<jsp:include page="/resources/including/footer.jsp" />