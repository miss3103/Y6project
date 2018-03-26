<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/resources/including/header.jsp" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>
<div class="panel panel-default panel-bg">
	<div class="panel-body">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">실시간예약</h1>
				<div class="panel panel-default">
					<div class="panel-body">


						<form action ="reservation" method = "post">
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
								<td><input type = "checkbox" name = "vip"></td>
								<td>vip</td>
								<td><span class="label label-success">예약가능</span></td>
								<td>30평</td>
								<td>4/10</td>
								<td><script type="text/javascript">
									$(function() {
										$("#date1")
												.datepicker(
														{
															changeMonth : true,
															changeYear : true,
															nextText : '다음 달',
															prevText : '이전 달',
															changeMonth : true,
															dayNames : [ '월요일',
																	'화요일',
																	'수요일',
																	'목요일',
																	'금요일',
																	'토요일',
																	'일요일' ],
															dayNamesMin : [
																	'월', '화',
																	'수', '목',
																	'금', '토',
																	'일' ],
															monthNamesShort : [
																	'1', '2',
																	'3', '4',
																	'5', '6',
																	'7', '8',
																	'9', '10',
																	'11', '12' ],
															monthNames : [
																	'1월', '2월',
																	'3월', '4월',
																	'5월', '6월',
																	'7월', '8월',
																	'9월',
																	'10월',
																	'11월',
																	'12월' ],
															minDate : -0,
															maxDate : "+3M"
														});
									});
								</script> <input type="text" name="vip_checkin" id="date1" size="7" /> ~ <script
										type="text/javascript">
						$(function() {
							$("#date2").datepicker(
									{
										changeMonth : true,
										changeYear : true,
										nextText : '다음 달',
										prevText : '이전 달',
										changeMonth : true,
										dayNames : [ '월요일', '화요일', '수요일',
												'목요일', '금요일', '토요일', '일요일' ],
										dayNamesMin : [ '월', '화', '수', '목',
												'금', '토', '일' ],
										monthNamesShort : [ '1', '2', '3', '4',
												'5', '6', '7', '8', '9', '10',
												'11', '12' ],
										monthNames : [ '1월', '2월', '3월', '4월',
												'5월', '6월', '7월', '8월', '9월',
												'10월', '11월', '12월' ],
										minDate : -0,
										maxDate : "+3M"
									});
						});
					</script> <input type="text" name="vip_checkout" id="date2" size="7" /></td>
								<td><select name = "vip_people">
										<c:forEach begin="0" end="6" step="1" var="people">
											<option value=${people}>${people }</option>
										</c:forEach>
								</select></td>
							</tr>

							<tr class="real">
								<td><input type = "checkbox" name = "caris"></td>
								<td>카리스</td>
								<td><span class="label label-success">예약가능</span></td>
								<td>20평</td>
								<td>2/4</td>
								<td><script type="text/javascript">
									$(function() {
										$("#date1")
												.datepicker(
														{
															changeMonth : true,
															changeYear : true,
															nextText : '다음 달',
															prevText : '이전 달',
															changeMonth : true,
															dayNames : [ '월요일',
																	'화요일',
																	'수요일',
																	'목요일',
																	'금요일',
																	'토요일',
																	'일요일' ],
															dayNamesMin : [
																	'월', '화',
																	'수', '목',
																	'금', '토',
																	'일' ],
															monthNamesShort : [
																	'1', '2',
																	'3', '4',
																	'5', '6',
																	'7', '8',
																	'9', '10',
																	'11', '12' ],
															monthNames : [
																	'1월', '2월',
																	'3월', '4월',
																	'5월', '6월',
																	'7월', '8월',
																	'9월',
																	'10월',
																	'11월',
																	'12월' ],
															minDate : -0,
															maxDate : "+3M"
														});
									});
								</script> <input type="text" name="caris_checkin" id="date3" size="7" /> ~ <script
										type="text/javascript">
						$(function() {
							$("#date2").datepicker(
									{
										changeMonth : true,
										changeYear : true,
										nextText : '다음 달',
										prevText : '이전 달',
										changeMonth : true,
										dayNames : [ '월요일', '화요일', '수요일',
												'목요일', '금요일', '토요일', '일요일' ],
										dayNamesMin : [ '월', '화', '수', '목',
												'금', '토', '일' ],
										monthNamesShort : [ '1', '2', '3', '4',
												'5', '6', '7', '8', '9', '10',
												'11', '12' ],
										monthNames : [ '1월', '2월', '3월', '4월',
												'5월', '6월', '7월', '8월', '9월',
												'10월', '11월', '12월' ],
										minDate : -0,
										maxDate : "+3M"
									});
						});
					</script> <input type="text" name="caris_checkout" id="date4" size="7" /></td>
								<td><select name = "caris_people">
										<c:forEach begin="0" end="2" step="1" var="people">
											<option value=${people}>${people }</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr class="real">
								<td><input type = "checkbox" name = "becky"></td>
								<td>베키</td>
								<td><span class="label label-success">예약가능</span></td>
								<td>17평</td>
								<td>2/6</td>
								<td><script type="text/javascript">
									$(function() {
										$("#date1")
												.datepicker(
														{
															changeMonth : true,
															changeYear : true,
															nextText : '다음 달',
															prevText : '이전 달',
															changeMonth : true,
															dayNames : [ '월요일',
																	'화요일',
																	'수요일',
																	'목요일',
																	'금요일',
																	'토요일',
																	'일요일' ],
															dayNamesMin : [
																	'월', '화',
																	'수', '목',
																	'금', '토',
																	'일' ],
															monthNamesShort : [
																	'1', '2',
																	'3', '4',
																	'5', '6',
																	'7', '8',
																	'9', '10',
																	'11', '12' ],
															monthNames : [
																	'1월', '2월',
																	'3월', '4월',
																	'5월', '6월',
																	'7월', '8월',
																	'9월',
																	'10월',
																	'11월',
																	'12월' ],
															minDate : -0,
															maxDate : "+3M"
														});
									});
								</script> <input type="text" name="becky_checkin" id="date5" size="7" /> ~ <script
										type="text/javascript">
						$(function() {
							$("#date2").datepicker(
									{
										changeMonth : true,
										changeYear : true,
										nextText : '다음 달',
										prevText : '이전 달',
										changeMonth : true,
										dayNames : [ '월요일', '화요일', '수요일',
												'목요일', '금요일', '토요일', '일요일' ],
										dayNamesMin : [ '월', '화', '수', '목',
												'금', '토', '일' ],
										monthNamesShort : [ '1', '2', '3', '4',
												'5', '6', '7', '8', '9', '10',
												'11', '12' ],
										monthNames : [ '1월', '2월', '3월', '4월',
												'5월', '6월', '7월', '8월', '9월',
												'10월', '11월', '12월' ],
										minDate : -0,
										maxDate : "+3M"
									});
						});
					</script> <input type="text" name="becky_checkout" id="date6" size="7" /></td>
								<td><select name = "becky_people">
										<c:forEach begin="0" end="4" step="1" var="people">
											<option  value=${people}>${people }</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr class="real">
								<td><input type = "checkbox" name = "elisia"></td>
								<td>엘리시아</td>
								<td><span class="label label-danger">예약완료</span></td>
								<td>13평</td>
								<td>2/4</td>
								<td><script type="text/javascript">
									$(function() {
										$("#date1")
												.datepicker(
														{
															changeMonth : true,
															changeYear : true,
															nextText : '다음 달',
															prevText : '이전 달',
															changeMonth : true,
															dayNames : [ '월요일',
																	'화요일',
																	'수요일',
																	'목요일',
																	'금요일',
																	'토요일',
																	'일요일' ],
															dayNamesMin : [
																	'월', '화',
																	'수', '목',
																	'금', '토',
																	'일' ],
															monthNamesShort : [
																	'1', '2',
																	'3', '4',
																	'5', '6',
																	'7', '8',
																	'9', '10',
																	'11', '12' ],
															monthNames : [
																	'1월', '2월',
																	'3월', '4월',
																	'5월', '6월',
																	'7월', '8월',
																	'9월',
																	'10월',
																	'11월',
																	'12월' ],
															minDate : -0,
															maxDate : "+3M"
														});
									});
								</script> <input type="text" name="elisia_checkin" id="date7" size="7" /> ~ <script
										type="text/javascript">
						$(function() {
							$("#date2").datepicker(
									{
										changeMonth : true,
										changeYear : true,
										nextText : '다음 달',
										prevText : '이전 달',
										changeMonth : true,
										dayNames : [ '월요일', '화요일', '수요일',
												'목요일', '금요일', '토요일', '일요일' ],
										dayNamesMin : [ '월', '화', '수', '목',
												'금', '토', '일' ],
										monthNamesShort : [ '1', '2', '3', '4',
												'5', '6', '7', '8', '9', '10',
												'11', '12' ],
										monthNames : [ '1월', '2월', '3월', '4월',
												'5월', '6월', '7월', '8월', '9월',
												'10월', '11월', '12월' ],
										minDate : -0,
										maxDate : "+3M"
									});
						});
					</script> <input type="text" name="elisia_checkout" id="date8" size="7" /></td>
								<td><select name = "elisia_people">
										<c:forEach begin="0" end="2" step="1" var="people">
											<option  value=${people}>${people }</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr class="real">
								<td><input type = "checkbox" name = "alice"></td>
								<td>앨리스</td>
								<td><span class="label label-success">예약가능</span></td>
								<td>13평</td>
								<td>2/4</td>
								<td><script type="text/javascript">
									$(function() {
										$("#date1")
												.datepicker(
														{
															changeMonth : true,
															changeYear : true,
															nextText : '다음 달',
															prevText : '이전 달',
															changeMonth : true,
															dayNames : [ '월요일',
																	'화요일',
																	'수요일',
																	'목요일',
																	'금요일',
																	'토요일',
																	'일요일' ],
															dayNamesMin : [
																	'월', '화',
																	'수', '목',
																	'금', '토',
																	'일' ],
															monthNamesShort : [
																	'1', '2',
																	'3', '4',
																	'5', '6',
																	'7', '8',
																	'9', '10',
																	'11', '12' ],
															monthNames : [
																	'1월', '2월',
																	'3월', '4월',
																	'5월', '6월',
																	'7월', '8월',
																	'9월',
																	'10월',
																	'11월',
																	'12월' ],
															minDate : -0,
															maxDate : "+3M"
														});
									});
								</script> <input type="text" name="alice_checkin" id="date9" size="7" /> ~ <script
										type="text/javascript">
						$(function() {
							$("#date2").datepicker(
									{
										changeMonth : true,
										changeYear : true,
										nextText : '다음 달',
										prevText : '이전 달',
										changeMonth : true,
										dayNames : [ '월요일', '화요일', '수요일',
												'목요일', '금요일', '토요일', '일요일' ],
										dayNamesMin : [ '월', '화', '수', '목',
												'금', '토', '일' ],
										monthNamesShort : [ '1', '2', '3', '4',
												'5', '6', '7', '8', '9', '10',
												'11', '12' ],
										monthNames : [ '1월', '2월', '3월', '4월',
												'5월', '6월', '7월', '8월', '9월',
												'10월', '11월', '12월' ],
										minDate : -0,
										maxDate : "+3M"
									});
						});
					</script> <input type="text" name="alice_checkout" id="date10" size="7" /></td>
								<td><select name = "alice_people">
										<c:forEach begin="0" end="2" step="1" var="people">
											<option  value=${people}>${people }</option>
										</c:forEach>
								</select></td>
							</tr>
						</table>						
						<span style="float:right">
							<input type="submit" value="예약하기" />
						</span>
						<p align = center> 예약할 객실을 선택하시고 추가인원이 있을경우 선택해 주세요.</p>
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

