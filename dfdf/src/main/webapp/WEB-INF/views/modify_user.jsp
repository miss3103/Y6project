<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/including/header.jsp" />
<h1>회원가입</h1>
<form class="form-horizontal" action="signUpForm" method="post">
	<div class="panel panel-default">
  		<div class="panel-body">
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
			    <div class="col-sm-10">
			    	<input type="password" class="form-control" id="inputPassword3" placeholder="${content.pwd}" value="pwd">
			   	</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">전화번호</label>
			    <div class="col-sm-10">
			    	<input type="password" class="form-control" id="inputPassword3" placeholder="${content.phone}" value="phone">
			    </div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">주소</label>
			    <div class="col-sm-10">
			    	<input type="password" class="form-control" id="inputPassword3" placeholder="${content.addr}" value="addr">
			    </div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
			    	<button type="submit" class="btn btn-primary">수정완료</button>
			    	<a href="myPage"><button type="button" class="btn btn-primary">돌아가기</button></a>
			    </div>
			</div>
		</div>
	</div>
 </form>
<jsp:include page="/resources/including/footer.jsp" />