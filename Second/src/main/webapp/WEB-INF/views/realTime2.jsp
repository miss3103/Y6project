<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/resources/including/header.jsp" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>
<SCRIPT>
var maxChecked = 1;   //선택가능한 체크박스 갯수
var totalChecked = 0; // 설정 끝

function CountChecked(field) {
	if (field.checked)
		totalChecked += 1;
	else
		totalChecked -= 1;

	if (totalChecked > maxChecked) {
		alert ("최대"+maxChecked+"개 까지만 가능합니다.");
	field.checked = false;
	totalChecked -= 1;
	}
	
}

function ResetCount(){
	totalChecked = 0;
}
</SCRIPT>
<div class="panel panel-default panel-bg">
	<div class="panel-body">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">예약선택</h1>
				<div class="panel panel-default">
					<div class="panel-body">
						<p align=center>예약할 객실을 선택하시고 추가인원이 있을경우 선택해 주세요.</p>
						<p align=center>객실은 일인당 최대 한개까지 선택 가능합니다.</p>
						<form action="reservation" method="post">
						<table class="table" >
								<tr class="real_heder">
									<th>이름</th>
									<th>전화번호</th>
								</tr>
								<tr class="real">
									<td><input type="text" name="name"></td>
									<td><input type="number" name="phone" max=01099999999 min=0></td>
								</tr>
							</table>
							<table class="table mainTable">
								<tr class="real_heder">
									<th>체크</th>
									<th>객실명</th>
									<th>상태</th>
									<th>크기</th>
									<th>인원(기준/최대)</th>
									<th>이용기간</th>
									<th>인원추가</th>
								</tr>								
								<tr class="real">
									<td><input type="checkbox" name="vip" id="vip" onClick="CountChecked(this);" value = "VIP"></td>
									<td>vip</td>
									<c:choose>
										<c:when test="${0 eq vip.flag}">	
											<td><span class="label label-success">예약가능</span></td>											
										</c:when>
										<c:when test="${1 eq vip.flag}">	
											<td><span class="label label-danger">예약완료</span></td>
										</c:when>
									</c:choose> 
									<td>30평</td>
									<td>4/10</td>
									<td><script type="text/javascript">
										$(function() {
											$("#date1")
													.datepicker(
															{		
																dateFormat: 'yy/mm/dd',
																changeMonth : true,
																changeYear : false,
																nextText : '다음 달',
																prevText : '이전 달',
																changeMonth : true,
																dayNames : [
																		'월요일',
																		'화요일',
																		'수요일',
																		'목요일',
																		'금요일',
																		'토요일',
																		'일요일' ],
																dayNamesMin : [
																		'일',
																		'월',
																		'화',
																		'수',
																		'목',
																		'금',
																		'토'],
																monthNamesShort : [
																		'1',
																		'2',
																		'3',
																		'4',
																		'5',
																		'6',
																		'7',
																		'8',
																		'9',
																		'10',
																		'11',
																		'12' ],
																monthNames : [
																		'1월',
																		'2월',
																		'3월',
																		'4월',
																		'5월',
																		'6월',
																		'7월',
																		'8월',
																		'9월',
																		'10월',
																		'11월',
																		'12월' ],
																minDate : -0,
																maxDate:"+3M",
																	onClose: function( selectedDate ) {																		
																		   var date = $(this).datepicker('getDate');                       
                    													   date.setDate(date.getDate() + 1);
                    													   $("#date2").datepicker( "option", "minDate", date )
                       														$('#date2').datepicker("option", "maxDate", date);

																		 }
															});
										});
									</script> <input type="text" name="vip_checkin" id="date1" size="7"  />
										~ <script type="text/javascript">
											$(function() {
												$("#date2")
														.datepicker(
																{	
																	dateFormat: 'yy/mm/dd',
																	changeMonth : true,
																	changeYear : false,
																	nextText : '다음 달',
																	prevText : '이전 달',
																	changeMonth : true,
																	dayNames : [
																			'월요일',
																			'화요일',
																			'수요일',
																			'목요일',
																			'금요일',
																			'토요일',
																			'일요일' ],
																	dayNamesMin : [
																			'일',
																			'월',
																			'화',
																			'수',
																			'목',
																			'금',
																			'토' ],
																	monthNamesShort : [
																			'1',
																			'2',
																			'3',
																			'4',
																			'5',
																			'6',
																			'7',
																			'8',
																			'9',
																			'10',
																			'11',
																			'12' ],
																	monthNames : [
																			'1월',
																			'2월',
																			'3월',
																			'4월',
																			'5월',
																			'6월',
																			'7월',
																			'8월',
																			'9월',
																			'10월',
																			'11월',
																			'12월' ],																	
																	maxDate : "+3M",																
																		onClose: function( selectedDate ) {
																			  $("#date1").datepicker( "option", "maxDate", selectedDate );
																			 }
																});
											});
										</script> <input type="text" name="vip_checkout" id="date2" size="7"  /></td>
									<td><select name="vip_people">
											<c:forEach begin="0" end="6" step="1" var="people">
												<option value=${people}>${people }</option>
											</c:forEach>
									</select></td>
								</tr>

								<tr class="real">
									<td><input type="checkbox" name="caris" id="caris"  onClick="CountChecked(this);" value="CARIS"></td>
									<td>카리스</td>
											<c:choose>
										<c:when test="${0 eq caris.flag}">	
											<td><span class="label label-success">예약가능</span></td>											
										</c:when>
										<c:when test="${1 eq caris.flag}">	
											<td><span class="label label-danger">예약완료</span></td>
										</c:when>
									</c:choose>
									<td>20평</td>
									<td>2/4</td>
									<td><script type="text/javascript">
										$(function() {
											$("#date3")
													.datepicker(
															{
																dateFormat: 'yy/mm/dd',
																changeMonth : true,
																changeYear : false,
																nextText : '다음 달',
																prevText : '이전 달',
																changeMonth : true,
																dayNames : [
																		'월요일',
																		'화요일',
																		'수요일',
																		'목요일',
																		'금요일',
																		'토요일',
																		'일요일' ],
																dayNamesMin : [
																		'일',
																		'월',
																		'화',
																		'수',
																		'목',
																		'금',
																		'토' ],
																monthNamesShort : [
																		'1',
																		'2',
																		'3',
																		'4',
																		'5',
																		'6',
																		'7',
																		'8',
																		'9',
																		'10',
																		'11',
																		'12' ],
																monthNames : [
																		'1월',
																		'2월',
																		'3월',
																		'4월',
																		'5월',
																		'6월',
																		'7월',
																		'8월',
																		'9월',
																		'10월',
																		'11월',
																		'12월' ],
																minDate : -0,
																maxDate:"+3M",
																onClose: function( selectedDate ) {																	  
																	   var date = $(this).datepicker('getDate');   
																	  date.setDate(date.getDate() + 1);
                 														$('#date4').datepicker("option", "maxDate", date);
                 														 $("#date4").datepicker( "option", "minDate", date );
                 														 }
															});
										});
									</script> <input type="text" name="caris_checkin" id="date3" size="7" />
										~ <script type="text/javascript">
											$(function() {
												$("#date4")
														.datepicker(
																{
																	dateFormat: 'yy/mm/dd',
																	changeMonth : true,
																	changeYear : false,
																	nextText : '다음 달',
																	prevText : '이전 달',
																	changeMonth : true,
																	dayNames : [
																			'월요일',
																			'화요일',
																			'수요일',
																			'목요일',
																			'금요일',
																			'토요일',
																			'일요일' ],
																	dayNamesMin : [
																			'일',
																			'월',
																			'화',
																			'수',
																			'목',
																			'금',
																			'토'],
																	monthNamesShort : [
																			'1',
																			'2',
																			'3',
																			'4',
																			'5',
																			'6',
																			'7',
																			'8',
																			'9',
																			'10',
																			'11',
																			'12' ],
																	monthNames : [
																			'1월',
																			'2월',
																			'3월',
																			'4월',
																			'5월',
																			'6월',
																			'7월',
																			'8월',
																			'9월',
																			'10월',
																			'11월',
																			'12월' ],																	
																	maxDate : "+3M",
																	onClose: function( selectedDate ) {
																		  $("#date3").datepicker( "option", "maxDate", selectedDate );
																		 }
																});
											});
										</script> <input type="text" name="caris_checkout" id="date4" size="7" /></td>
									<td><select name="caris_people">
											<c:forEach begin="0" end="2" step="1" var="people">
												<option value=${people}>${people}</option>
											</c:forEach>
									</select></td>
								</tr>
								<tr class="real">
									<td><input type="checkbox" name="becky" id="becky"  onClick="CountChecked(this);" value = "BECKY"></td>
									<td>베키</td>
											<c:choose>
										<c:when test="${0 eq becky.flag}">	
											<td><span class="label label-success">예약가능</span></td>											
										</c:when>
										<c:when test="${1 eq becky.flag}">	
											<td><span class="label label-danger">예약완료</span></td>
										</c:when>
									</c:choose>
									<td>17평</td>
									<td>2/6</td>
									<td><script type="text/javascript">
										$(function() {
											$("#date5")
													.datepicker(
															{
																dateFormat: 'yy/mm/dd',
																changeMonth : true,
																changeYear : false,
																nextText : '다음 달',
																prevText : '이전 달',
																changeMonth : true,
																dayNames : [
																		'월요일',
																		'화요일',
																		'수요일',
																		'목요일',
																		'금요일',
																		'토요일',
																		'일요일' ],
																dayNamesMin : [
																		'일',
																		'월',
																		'화',
																		'수',
																		'목',
																		'금',
																		'토'],
																monthNamesShort : [
																		'1',
																		'2',
																		'3',
																		'4',
																		'5',
																		'6',
																		'7',
																		'8',
																		'9',
																		'10',
																		'11',
																		'12' ],
																monthNames : [
																		'1월',
																		'2월',
																		'3월',
																		'4월',
																		'5월',
																		'6월',
																		'7월',
																		'8월',
																		'9월',
																		'10월',
																		'11월',
																		'12월' ],
																minDate : -0,
																maxDate:"+3M",
																onClose: function( selectedDate ) {																	  
																	   var date = $(this).datepicker('getDate');   
																	  date.setDate(date.getDate() + 1);
                 														$('#date6').datepicker("option", "maxDate", date);
                 														$("#date6").datepicker( "option", "minDate", date );
																	 }
															});
										});
									</script> <input type="text" name="becky_checkin" id="date5" size="7" />
										~ <script type="text/javascript">
											$(function() {
												$("#date6")
														.datepicker(
																{
																	dateFormat: 'yy/mm/dd',
																	changeMonth : true,
																	changeYear : false,
																	nextText : '다음 달',
																	prevText : '이전 달',
																	changeMonth : true,
																	dayNames : [
																			'월요일',
																			'화요일',
																			'수요일',
																			'목요일',
																			'금요일',
																			'토요일',
																			'일요일' ],
																	dayNamesMin : [
																			'일',
																			'월',
																			'화',
																			'수',
																			'목',
																			'금',
																			'토' ],
																	monthNamesShort : [
																			'1',
																			'2',
																			'3',
																			'4',
																			'5',
																			'6',
																			'7',
																			'8',
																			'9',
																			'10',
																			'11',
																			'12' ],
																	monthNames : [
																			'1월',
																			'2월',
																			'3월',
																			'4월',
																			'5월',
																			'6월',
																			'7월',
																			'8월',
																			'9월',
																			'10월',
																			'11월',
																			'12월' ],																	
																	maxDate : "+3M",
																	onClose: function( selectedDate ) {
																		  $("#date5").datepicker( "option", "maxDate", selectedDate );
																		 }
																});
											});
										</script> <input type="text" name="becky_checkout" id="date6" size="7" /></td>
									<td><select name="becky_people">
											<c:forEach begin="0" end="4" step="1" var="people">
												<option value=${people}>${people }</option>
											</c:forEach>
									</select></td>
								</tr>
								<tr class="real">
									<td><input type="checkbox" name="elisia" id="elisia"  onClick="CountChecked(this);" value = "ELISIA"></td>
									<td>엘리시아</td>
											<c:choose>
										<c:when test="${0 eq elisia.flag}">	
											<td><span class="label label-success">예약가능</span></td>											
										</c:when>
										<c:when test="${1 eq elisia.flag}">	
											<td><span class="label label-danger">예약완료</span></td>
										</c:when>
									</c:choose>
									<td>13평</td>
									<td>2/4</td>
									<td><script type="text/javascript">
										$(function() {
											$("#date7")
													.datepicker(
															{
																dateFormat: 'yy/mm/dd',
																changeMonth : true,
																changeYear : false,
																nextText : '다음 달',
																prevText : '이전 달',
																changeMonth : true,
																dayNames : [
																		'월요일',
																		'화요일',
																		'수요일',
																		'목요일',
																		'금요일',
																		'토요일',
																		'일요일' ],
																dayNamesMin : [
																		'일',
																		'월',
																		'화',
																		'수',
																		'목',
																		'금',
																		'토'],
																monthNamesShort : [
																		'1',
																		'2',
																		'3',
																		'4',
																		'5',
																		'6',
																		'7',
																		'8',
																		'9',
																		'10',
																		'11',
																		'12' ],
																monthNames : [
																		'1월',
																		'2월',
																		'3월',
																		'4월',
																		'5월',
																		'6월',
																		'7월',
																		'8월',
																		'9월',
																		'10월',
																		'11월',
																		'12월' ],
																minDate : -0,
																maxDate:"+3M",
																onClose: function( selectedDate ) {														
																	   var date = $(this).datepicker('getDate');   
																	  date.setDate(date.getDate() + 1);
                 														$('#date8').datepicker("option", "maxDate", date);
                 														  $("#date8").datepicker( "option", "minDate", date );
																	 }
															});
										});
									</script> <input type="text" name="elisia_checkin" id="date7" size="7" />
										~ <script type="text/javascript">
											$(function() {
												$("#date8")
														.datepicker(
																{
																	dateFormat: 'yy/mm/dd',
																	changeMonth : true,
																	changeYear : false,
																	nextText : '다음 달',
																	prevText : '이전 달',
																	changeMonth : true,
																	dayNames : [
																			'월요일',
																			'화요일',
																			'수요일',
																			'목요일',
																			'금요일',
																			'토요일',
																			'일요일' ],
																	dayNamesMin : [
																			'일',	
																			'월',
																			'화',
																			'수',
																			'목',
																			'금',
																			'토'],
																	monthNamesShort : [
																			'1',
																			'2',
																			'3',
																			'4',
																			'5',
																			'6',
																			'7',
																			'8',
																			'9',
																			'10',
																			'11',
																			'12' ],
																	monthNames : [
																			'1월',
																			'2월',
																			'3월',
																			'4월',
																			'5월',
																			'6월',
																			'7월',
																			'8월',
																			'9월',
																			'10월',
																			'11월',
																			'12월' ],																	
																	maxDate : "+3M",
																	onClose: function( selectedDate ) {
																		  $("#date7").datepicker( "option", "maxDate", selectedDate );
																		 }
																});
											});
										</script> <input type="text" name="elisia_checkout" id="date8" size="7" /></td>
									<td><select name="elisia_people">
											<c:forEach begin="0" end="2" step="1" var="people">
												<option value=${people}>${people }</option>
											</c:forEach>
									</select></td>
								</tr>
								<tr class="real">
									<td><input type="checkbox" name="alice" id="alice"  onClick="CountChecked(this);"value = "ALICE"></td>
									<td>앨리스</td>
											<c:choose>
										<c:when test="${0 eq alice.flag}">	
											<td><span class="label label-success">예약가능</span></td>											
										</c:when>
										<c:when test="${1 eq alice.flag}">	
											<td><span class="label label-danger">예약완료</span></td>
										</c:when>
									</c:choose>
									<td>13평</td>
									<td>2/4</td>
									<td><script type="text/javascript">
										$(function() {
											$("#date9")
													.datepicker(
															{
																dateFormat: 'yy/mm/dd',
																changeMonth : true,
																changeYear : false,
																nextText : '다음 달',
																prevText : '이전 달',
																changeMonth : true,
																dayNames : [
																		'월요일',
																		'화요일',
																		'수요일',
																		'목요일',
																		'금요일',
																		'토요일',
																		'일요일' ],
																dayNamesMin : [
																		'일',
																		'월',
																		'화',
																		'수',
																		'목',
																		'금',
																		'토' ],
																monthNamesShort : [
																		'1',
																		'2',
																		'3',
																		'4',
																		'5',
																		'6',
																		'7',
																		'8',
																		'9',
																		'10',
																		'11',
																		'12' ],
																monthNames : [
																		'1월',
																		'2월',
																		'3월',
																		'4월',
																		'5월',
																		'6월',
																		'7월',
																		'8월',
																		'9월',
																		'10월',
																		'11월',
																		'12월' ],
																minDate : -0,
																maxDate:"+3M",
																onClose: function( selectedDate ) {																	  
																	   var date = $(this).datepicker('getDate');   
																	  date.setDate(date.getDate() + 1);
                 														$('#date10').datepicker("option", "maxDate", date);
                 														  $("#date10").datepicker( "option", "minDate", date );
																	 }
															});
										});
									</script> <input type="text" name="alice_checkin" id="date9" size="7" />
										~ <script type="text/javascript">
											$(function() {
												$("#date10")
														.datepicker(
																{
																	dateFormat: 'yy/mm/dd',
																	changeMonth : true,
																	changeYear : false,
																	nextText : '다음 달',
																	prevText : '이전 달',
																	changeMonth : true,
																	dayNames : [
																			'월요일',
																			'화요일',
																			'수요일',
																			'목요일',
																			'금요일',
																			'토요일',
																			'일요일' ],
																	dayNamesMin : [
																			'일',
																			'월',
																			'화',
																			'수',
																			'목',
																			'금',
																			'토'],
																	monthNamesShort : [
																			'1',
																			'2',
																			'3',
																			'4',
																			'5',
																			'6',
																			'7',
																			'8',
																			'9',
																			'10',
																			'11',
																			'12' ],
																	monthNames : [
																			'1월',
																			'2월',
																			'3월',
																			'4월',
																			'5월',
																			'6월',
																			'7월',
																			'8월',
																			'9월',
																			'10월',
																			'11월',
																			'12월' ],																	
																	maxDate : "+3M",
																	onClose: function( selectedDate ) {
																		  $("#date9").datepicker( "option", "maxDate", selectedDate );
																		 }
																	
																});
											});
										</script> <input type="text" name="alice_checkout" id="date10" size="7" /></td>
									<td><select name="alice_people">
											<c:forEach begin="0" end="2" step="1" var="people">
												<option value=${people}>${people }</option>
											</c:forEach>
									</select></td>
								</tr>
							</table>
							<span style="float: right">
								 <input type="submit" value="예약하기" />
							</span>
						</form>
					</div>
					<!-- panel-body -->
				</div>
				<!-- panel panel-default -->
			</div>
		</div>
	</div>
</div>
<jsp:include page="/resources/including/footer.jsp" />

