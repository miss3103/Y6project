<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/including/header.jsp" />
<h1>회원가입</h1>
<form class="form-horizontal" action="signUpForm" method="post" name="form" id="form">
	<div class="panel panel-default">
  		<div class="panel-body">
  			<div class="form-group">
    			<label for="inputEmail3" class="col-sm-2 control-label">이름</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="inputEmail3" placeholder="name" name="name">
    			</div>
  			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">아이디</label>
			    <div class="col-sm-10">
			    	<input type="text" class="form-control" id="inputEmail3" placeholder="id" name="id">
			    </div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
			    <div class="col-sm-10">
			    	<input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="pwd">
			   	</div>
			</div>
		  	<div class="form-group">
		    	<label for="inputPassword3" class="col-sm-2 control-label">비밀번호 확인</label>
		    	<div class="col-sm-10">
		      		<input type="password" class="form-control" id="inputPassword3" placeholder="confirm" name="confirm">
		    	</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">전화번호</label>
			    <div class="col-sm-10">
			    	<input type="password" class="form-control" id="inputPassword3" placeholder="'-' 제외한 숫자만 입력" name="phone">
			    </div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">주소</label>
			    <div class="col-sm-5">
			    	<input type="text" class="form-control"id="sample6_postcode" placeholder="우편번호" name="addr_code">
			    </div>
			    <div class="col-sm-5">
			    	<button type="button" class="btn btn-primary" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label"></label>
			    <div class="col-sm-5">
					<input type="text" class="form-control" id="sample6_address" placeholder="주소" name="addr_main">
				</div>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="sample6_address2" placeholder="상세주소" name="addr_side">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<a href="index"><button type="button" class="btn btn-danger">돌아가기</button></a>
			    	<button type="submit" class="btn btn-primary">가입하기</button>
			    </div>
			</div>
		</div>
	</div>
 </form>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>

<jsp:include page="/resources/including/footer.jsp" />
			