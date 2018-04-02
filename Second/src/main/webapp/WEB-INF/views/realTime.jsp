<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
				<h1 class="page-header">실시간 예약</h1>
			</div>
			<p align="middle">
				<strong>예약은 오늘부터 3달까지 가능합니다</strong>
			</p>
			<form action="reservation" method="post">
				<p align="middle">
					객실명 <select name="room">
						<option value="VIP">VIP</option>
						<option value="카리스">카리스</option>
						<option value="베키">베키</option>
						<option value="엘리시아">엘리시아</option>
						<option value="엘리스">앨리스</option>
					</select> 체크인
					<script type="text/javascript">
						$(function() {
							$("#date1").datepicker(
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
					</script>
					<input type="text" name="checkin" id="date1" size="15" /> 체크아웃
					<script type="text/javascript">
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
					</script>
					<input type="text" name="checkout" id="date2" size="15" /> <input
						type="submit" value="예약하기" />
				</p>

				<table class="table" id="mainTable">
					<tr>
						<th rowspan="2">객실명</th>
						<th rowspan="2">객실형태</th>
						<th rowspan="2">크기</th>
						<th rowspan="2">인원(기준/최대)</th>
						<th colspan="3">요금안내</th>
						<th rowspan="2">추가요금</th>
					</tr>
					<tr>
						<th class="th">기간</th>
						<th class="th">주중</th>
						<th class="th">주말</th>
					</tr>
					<tr>
						<td rowspan="3" class="td_v">vip</td>
						<td rowspan="3" class="td_v">거실+객실분리형(침대룸1개+화장실1개) /
							복층,스파시설보유,풀빌라</td>
						<td rowspan="3" class="td_v">30평</td>
						<td rowspan="3" class="td_v">4/10</td>
						<td><span class="label label-default">비수기</span></td>
						<td>650,000원</td>
						<td>900,000원</td>
						<td rowspan="3" class="td_v">성인 20,000원<br />소아 20,000원<br />유아
							20,000원
						</td>
					</tr>
					<tr>
						<td><span class="label label-success">준성수기</span></td>
						<td>900,000원</td>
						<td>1100,000원</td>
					</tr>
					<tr>
						<td><span class="label label-danger">성수기</span></td>
						<td>1100,000원</td>
						<td>1200,000원</td>
					</tr>
					<tr>
						<td rowspan="3" class="td_v">카리스</td>
						<td rowspan="3" class="td_v">거실+객실분리형(침대룸1개+화장실2개) /
							복층,스파시설보유,풀빌라</td>
						<td rowspan="3" class="td_v">20평</td>
						<td rowspan="3" class="td_v">4/10</td>
						<td><span class="label label-default">비수기</span></td>
						<td>550,000원</td>
						<td>800,000원</td>
						<td rowspan="3" class="td_v">성인 20,000원<br />소아 20,000원<br />유아
							20,000원
						</td>
					</tr>
					<tr>
						<td><span class="label label-success">준성수기</span></td>
						<td>800,000원</td>
						<td>950,000원</td>
					</tr>
					<tr>
						<td><span class="label label-danger">성수기</span></td>
						<td>950,000원</td>
						<td>1100,000원</td>
					</tr>
					<tr>
						<td rowspan="3" class="td_v">베키</td>
						<td rowspan="3" class="td_v">거실+객실분리형(침대룸1개+화장실1개) /
							스파시설보유,풀빌라</td>
						<td rowspan="3" class="td_v">20평</td>
						<td rowspan="3" class="td_v">4/10</td>
						<td><span class="label label-default">비수기</span></td>
						<td>550,000원</td>
						<td>800,000원</td>
						<td rowspan="3" class="td_v">성인 20,000원<br />소아 20,000원<br />유아
							20,000원
						</td>
					</tr>
					<tr>
						<td><span class="label label-success">준성수기</span></td>
						<td>800,000원</td>
						<td>950,000원</td>
					</tr>
					<tr>
						<td><span class="label label-danger">성수기</span></td>
						<td>950,000원</td>
						<td>1100,000원</td>
					</tr>
					<tr>
						<td rowspan="3" class="td_v">엘리시아</td>
						<td rowspan="3" class="td_v">거실+객실분리형(침대룸1개+화장실1개) /
							스파시설보유,풀빌라</td>
						<td rowspan="3" class="td_v">20평</td>
						<td rowspan="3" class="td_v">4/10</td>
						<td><span class="label label-default">비수기</span></td>
						<td>550,000원</td>
						<td>800,000원</td>
						<td rowspan="3" class="td_v">성인 20,000원<br />소아 20,000원<br />유아
							20,000원
						</td>
					</tr>
					<tr>
						<td><span class="label label-success">준성수기</span></td>
						<td>800,000원</td>
						<td>950,000원</td>
					</tr>
					<tr>
						<td><span class="label label-danger">성수기</span></td>
						<td>950,000원</td>
						<td>1100,000원</td>
					</tr>
					<tr>
						<td rowspan="3" class="td_v">엘리스</td>
						<td rowspan="3" class="td_v">거실+객실분리형(침대룸1개+화장실1개) /
							복층,스파시설보유,풀빌라</td>
						<td rowspan="3" class="td_v">20평</td>
						<td rowspan="3" class="td_v">4/10</td>
						<td><span class="label label-default">비수기</span></td>
						<td>550,000원</td>
						<td>800,000원</td>
						<td rowspan="3" class="td_v">성인 20,000원<br />소아 20,000원<br />유아
							20,000원
						</td>
					</tr>
					<tr>
						<td><span class="label label-success">준성수기</span></td>
						<td>800,000원</td>
						<td>950,000원</td>
					</tr>
					<tr>
						<td><span class="label label-danger">성수기</span></td>
						<td>950,000원</td>
						<td>1100,000원</td>
					</tr>
				</table>

			</form>
		</div>
	</div>
</div>
<jsp:include page="/resources/including/footer.jsp" />
