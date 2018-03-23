<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/including/header.jsp" />
<!-- <ol class="breadcrumb"> -->
<!--   <li><a href="index">PortPolio</a></li> -->
<!--   <li><a href="qna">Q&amp;A</a></li> -->
<!--   <li class="active">작성하기</li> -->
<!-- </ol> -->
<div class="panel panel-default panel-bg">
		<div class="panel-body">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">숙박후기</h1>
				</div><!-- /.col-lg-12 -->
			</div><!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
	<form class="form-horizontal" action="write" method="post">
		<div class="panel panel-default">
  			<div class="panel-body">
		  		<div class="form-group">
		    		<label for="inputEmail3" class="col-sm-2 control-label">제목</label>
		    		<div class="col-sm-10">
		      			<input type="text" class="form-control" id="inputEmail3" placeholder="title" name="bTitle">
		    		</div>
		  		</div>
		  		<div class="form-group">
		    		<label for="inputPassword3" class="col-sm-2 control-label">작성자</label>
		    		<div class="col-sm-10">
		      			<input type="text" class="form-control" id="inputPassword3" placeholder="writer" name="bName">
		    		</div>
		  		</div>
		  		<div class="form-group">
		    		<label for="inputPassword3" class="col-sm-2 control-label">첨부파일</label>
		    		<div class="col-sm-10">
		      			<input type="file" class="form-control" id="inputPassword3" placeholder="writer" name="bName">
		    		</div>
		  		</div>
		  		<div class="form-group">
		    		<label for="inputPassword3" class="col-sm-2 control-label">본문</label>
		    		<div class="col-sm-10">
		      			<textarea name="editor1" id="editor1" rows="10" cols="80"></textarea>
		    		</div>
		  		</div>
		  		<div class="form-group">
		    		<label for="inputPassword3" class="col-sm-2 control-label"></label>
		    		<div class="col-sm-10 text-right">
						<a href="review"><button type="button" class="btn btn-danger">돌아가기</button></a>
						<input type="submit" value="글 올리기" class="btn btn-primary" />
					</div>
		    	</div>
		  	</div>
		</div>
	</form>
	</div>
	</div>
	</div>
	</div>
           <script>
                // Replace the <textarea id="editor1"> with a CKEditor
                // instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
            </script>
<jsp:include page="/resources/including/footer.jsp" />
