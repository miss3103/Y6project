<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/resources/including/header.jsp" />
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="panel panel-default panel-bg">
	<div class="panel-body">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">예약확인</h1>
 				<c:set var= "total"  value = "0"/>			
				<c:choose>
					<c:when test="${'0' eq people}">
						<c:set var="total" value = "${total+pay.price}" />						
					</c:when>
					<c:when test="${'0' ne people}">
						<c:set var="total" value = "${total+pay.price+people*20000}" />			
					</c:when>
				</c:choose>
				 <c:choose>
					<c:when test="${null eq plan.peak_season}">									
					</c:when>																				
					<c:when test="${null ne plan.peak_season}">															
						<c:set var= "total" value="${total+pay.price*0.8}"/>	
					</c:when>
				</c:choose>				
				<form action="main" method="post">			
					<div class="panel panel-default">
						<div class="panel-body">												
							<table class="table" id="mainTable">
								<tr class="real_heder">
									<th>이름</th>
									<th>전화번호</th>
								</tr>
								<tr class="real">
									<td>${roominfo.name}</td>
									<td>0${roominfo.phone}</td>						
								</tr>
							</table>
							<table class="table" id="mainTable">
								<tr class="real_heder">								
										<th>객실명</th>
										<th>체크인</th>
										<th>체크아웃</th>
										<th>추가인원</th>								
								</tr>
								<tr class="real">																	
										<td>${roominfo.roomname}</td>
										<td>${roominfo.check_in}</td>
										<td>${roominfo.check_out}</td>				
									<td>${people}명</td>				
								</tr>
							</table>
							<table class="table" id="mainTable">
								<tr class="real_heder">
									<th>가격</th>									
								</tr>								
								<tr class="real">															
									 <c:choose>
										<c:when test="${null eq hday.holiday}">						
											<td>${total}원</td>		
										</c:when>																				
										<c:when test="${null ne hday.holiday}">															
											<c:set var= "total" value="${total+pay.price*1.5}"/>									
											<td> ${total}원 </td>
										</c:when>							
									</c:choose>												
								</tr>
							</table>							
							<table class="table" id="mainTable">
								<tr class="real_heder">
									<th>은행</th>
									<th>계좌번호</th>
									<th>예금주명</th>									
								</tr>								
								<tr class="real">															
									<td>농협</td>
									<td>302-0123-4567-89</td>
									<td>윤석현</td>									
								</tr>
							</table>
						</div>
					</div>
					<p align=center>위의 내용이 아닐경우 뒤로가기를 눌러 주세요</p>
					<p align=center>결제는 무통장 입금으로 진행 됩니다.</p>
					<p align=center>입금확인 까지 시간이 걸립니다.</p>
					<span style="float: right"> <input type="submit" value="확인">
					</span>
				</form>			
					<a href="delete?idx=${roominfo.idx}">취소</a>				
			</div>
		</div>
	</div>
</div>
<jsp:include page="/resources/including/footer.jsp" />