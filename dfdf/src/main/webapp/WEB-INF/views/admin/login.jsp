<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<a style="size: 20px" href="../main">메인으로</a>
<h1>Login</h1>

<img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120" alt="">
<form action="login_check" method="POST">
	<input type="text" class="form-control" placeholder="아이디" required autofocus name="id">
	<input type="password" class="form-control" placeholder="비밀번호" required name="pw">
	<button type="submit">로그인</button>
	
</form>
   
<jsp:include page="/resources/including/footer.jsp" />
