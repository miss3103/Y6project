<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/including/header.jsp" />
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1>Login</h1>
            <div class="account-wall">
                <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120" alt="">
<<<<<<< HEAD:dfdf/src/main/webapp/WEB-INF/views/login.jsp
                <form class="form-signin" action="loginForm" method="post">
                <input type="text" class="form-control" placeholder="아이디" required autofocus name="id">
                <input type="password" class="form-control" placeholder="비밀번호" required name="pwd">
                <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
                <input type="checkbox" value="remember-me">&nbsp;아이디 저장
=======
                <form class="form-signin" action="login_check" method="post">
	                <input type="text" class="form-control" placeholder="아이디" required autofocus name="id">
	                <input type="password" class="form-control" placeholder="비밀번호" required name="pw">
	                <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
	                <input type="checkbox" value="remember-me">&nbsp;아이디 저장
>>>>>>> parent of 073d247... test3:dfdf/src/main/webapp/WEB-INF/views/admin/login.jsp
                </form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/resources/including/footer.jsp" />
