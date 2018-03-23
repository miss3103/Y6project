<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/including/header.jsp" />
<h1>프로필</h1>

<form class="form-horizontal" action="modify_user" method="post">
	<div class="panel panel-default">
  		<div class="panel-body">
  			<div class="form-group">
    			<label for="inputEmail3" class="col-sm-2 control-label">이름</label>
    			<div class="col-sm-10">
      				<div class="panel panel-default">
  						<div class="panel-body">
    						${user.name}
  						</div>
					</div>
    			</div>
  			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">아이디</label>
			    <div class="col-sm-10">
      				<div class="panel panel-default">
  						<div class="panel-body">
    						${user.name}
  						</div>
					</div>			    
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
			    <div class="col-sm-10">
      				<div class="panel panel-default">
  						<div class="panel-body">
    						${user.name}
  						</div>
					</div>			   	
				</div>
			</div>
		  	<div class="form-group">
		    	<label for="inputPassword3" class="col-sm-2 control-label">비밀번호 확인</label>
		    	<div class="col-sm-10">
      				<div class="panel panel-default">
  						<div class="panel-body">
    						${user.name}
  						</div>
					</div>		    	
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">전화번호</label>
			    <div class="col-sm-10">
      				<div class="panel panel-default">
  						<div class="panel-body">
    						${user.name}
  						</div>
					</div>			    
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">주소</label>
			    <div class="col-sm-10">
      				<div class="panel panel-default">
  						<div class="panel-body">
    						${user.name}
  						</div>
					</div>			    
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
			    	<button type="submit" class="btn btn-primary">수정하기</button>
				</div>
			</div>
		</div>
	</div>
 </form>
<jsp:include page="/resources/including/footer.jsp" />