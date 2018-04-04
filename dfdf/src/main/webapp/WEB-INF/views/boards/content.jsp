<%@ page language="java" contentType="text/html; charset=utf-8" %>
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
	<form class="form-horizontal" action="modify" method="post">
		<div class="panel panel-default">
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
						<a href="delete?page=${page}&bType=${bType}"> 
							<button type="button" class="btn btn-danger">
								<i class="fa fa-delete" aria-hidden="true"></i>&nbsp;삭제하기
							</button>
						</a>
						<a href="list?page=${page}&bType=${bType}"> 
							<button type="button" class="btn btn-danger">
								<i class="fa fa-undo" aria-hidden="true"></i>&nbsp;돌아가기
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
