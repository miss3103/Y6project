<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/resources/including/header.jsp" />

<h1>공지&nbsp;사항</h1>
		<div class="text-center">
		<form action="search" method="post">
	<select name="searchOption">
		<option value="bTitle">제목</option>
		<option value="bContent">본문</option>
		<option value="bName">작성자</option>
	</select>
	<input type="text" name="keyhWord">
	<input type="submit" value="검색">
</form>
</div>
<table class="table table-hover" id="mainTable">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>조회수</th>
		<th>날짜</th>
	</tr>
	<c:forEach items="${listt}" var="dto">
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

<script>
    //load함수를 이용하여 core스크립트의 로딩이 완료된 후, 우편번호 서비스를 실행합니다.
    daum.postcode.load(function(){
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
                // 예제를 참고하여 다양한 활용법을 확인해 보세요.
            }
        }).open();
    });
</script>
<!-- <footer class="footer-copyright py-3 text-center"> -->
<!-- 	<div class="container"> -->
<!--     	<div class="text-center"> -->
<!--         	<small>Kim Eun Hye © you're hired 2018</small> -->
<!--         </div> -->
<!--     </div> -->
<!-- </footer> -->
<!-- <script type="text/javascript"> -->
<!-- // 	$(document).ready(function(){ -->
<!-- // 		$("#checkall").click(function(){ -->
<!-- //       		if($("#checkall").prop("checked")){ -->
<!-- //           		$("input[name=chk]").prop("checked",true); -->
<!-- //       		}else{ -->
<!-- //           		$("input[name=chk]").prop("checked",false); -->
<!-- //       		} -->
<!-- //   		}) -->
<!-- // 	}) -->
<!-- </script> -->

<jsp:include page="/resources/including/footer.jsp" />
<!-- 		<th><input type="checkbox" id="checkall"/></th> -->
<!-- 				<td><input type="checkbox" name="chk"/></td> -->
<!-- 		<div class="text-right"> -->
<!-- 	<button type="button" id="submitFrm" class="btn btn-danger" ><span class="glyphicon glyphicon-remove">&nbsp;삭제하기</span></button> -->
<!-- 	<button type="button" id="submitFrm" class="btn btn-danger" ><span class="glyphicon glyphicon-remove">&nbsp;삭제하기</span></button> -->
<!-- </div> -->