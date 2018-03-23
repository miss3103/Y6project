<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/including/header.jsp" />
	<form class="form-horizontal" action="modify" method="post">
		<div class="panel panel-default">
  			<div class="panel-body">
		  		<div class="form-group">
		    		<label for="inputEmail3" class="col-sm-2 control-label">제목</label>
		    		<div class="col-sm-10">
		      			<input type="text" class="form-control" id="inputEmail3" placeholder="${content.bTitle}" name="bTitle">
		    		</div>
		  		</div>
		  		<div class="form-group">
		    		<label for="inputPassword3" class="col-sm-2 control-label">작성자</label>
		    		<div class="col-sm-10">
		      			<input type="text" class="form-control" id="inputPassword3" placeholder="${content.bName}" name="bName">
		    		</div>
		  		</div>
		  		<div class="form-group">
		    		<label for="inputPassword3" class="col-sm-2 control-label">본문</label>
		    		<div class="col-sm-10">
		      			<textarea name="editor1" id="editor1" rows="10" cols="80" name="bContent">${content.bContent}</textarea>
		    		</div>
		  		</div>
		  		<div class="form-group">
		    		<label for="inputPassword3" class="col-sm-2 control-label"></label>
		    		<div class="col-sm-10 text-right">
						<a href="list"><button type="button" class="btn btn-danger">돌아가기</button></a>
						<input type="submit" value="수정 확인" class="btn btn-primary" />
					</div>
		    	</div>
		  	</div>
		</div>
	</form>
           <script>
                // Replace the <textarea id="editor1"> with a CKEditor
                // instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
            </script>
<jsp:include page="/resources/including/footer.jsp" />
