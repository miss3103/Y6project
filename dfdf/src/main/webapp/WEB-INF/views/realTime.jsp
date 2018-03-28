<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/resources/including/header.jsp" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>
<SCRIPT>
<!--
var maxChecked = 2;   //���ð����� üũ�ڽ� ����
var totalChecked = 0; // ���� ��

function CountChecked(field) {
	if (field.checked)
		totalChecked += 1;
	else
		totalChecked -= 1;

	if (totalChecked > maxChecked) {
		alert ("�ִ�"+maxChecked+"�� ������ �����մϴ�.");
	field.checked = false;
	totalChecked -= 1;
	}
	
}

function ResetCount(){
	totalChecked = 0;
}
//-->
</SCRIPT>

<div class="panel panel-default panel-bg">
	<div class="panel-body">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">���༱��</h1>
				<div class="panel panel-default">
					<div class="panel-body">
						<p align=center>������ ������ �����Ͻð� �߰��ο��� ������� ������ �ּ���.</p>
						<p align=center>������ ���δ� �ִ� �ΰ����� ���� �����մϴ�.</p>
						<form action="reservation" method="post">
						<table class="table" >
								<tr class="real_heder">
									<th>�̸�</th>
									<th>��ȭ��ȣ</th>
								</tr>
								<tr class="real">
									<td><input type="text" name="name"></td>
									<td><input type="number" name="phone"></td>
								</tr>
							</table>
							<table class="table mainTable">
								<tr class="real_heder">
									<th>üũ</th>
									<th>���Ǹ�</th>
									<th>����</th>
									<th>ũ��</th>
									<th>�ο�(����/�ִ�)</th>
									<th>�̿�Ⱓ</th>
									<th>�ο��߰�</th>
								</tr>								
								<tr class="real">
									<td><input type="checkbox" name="vip" id="room" onClick="CountChecked(this);"></td>
									<td>vip</td>
									<td><span class="label label-success">���డ��</span></td>
									<td>30��</td>
									<td>4/10</td>
									<td><script type="text/javascript">
										$(function() {
											$("#date1")
													.datepicker(
															{
																changeMonth : true,
																changeYear : true,
																nextText : '���� ��',
																prevText : '���� ��',
																changeMonth : true,
																dayNames : [
																		'������',
																		'ȭ����',
																		'������',
																		'�����',
																		'�ݿ���',
																		'�����',
																		'�Ͽ���' ],
																dayNamesMin : [
																		'��',
																		'ȭ',
																		'��',
																		'��',
																		'��',
																		'��',
																		'��' ],
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
																		'1��',
																		'2��',
																		'3��',
																		'4��',
																		'5��',
																		'6��',
																		'7��',
																		'8��',
																		'9��',
																		'10��',
																		'11��',
																		'12��' ],
																minDate : -0,
																maxDate : "+3M"
															});
										});
									</script> <input type="text" name="vip_checkin" id="date1" size="7" />
										~ <script type="text/javascript">
											$(function() {
												$("#date2")
														.datepicker(
																{
																	changeMonth : true,
																	changeYear : true,
																	nextText : '���� ��',
																	prevText : '���� ��',
																	changeMonth : true,
																	dayNames : [
																			'������',
																			'ȭ����',
																			'������',
																			'�����',
																			'�ݿ���',
																			'�����',
																			'�Ͽ���' ],
																	dayNamesMin : [
																			'��',
																			'ȭ',
																			'��',
																			'��',
																			'��',
																			'��',
																			'��' ],
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
																			'1��',
																			'2��',
																			'3��',
																			'4��',
																			'5��',
																			'6��',
																			'7��',
																			'8��',
																			'9��',
																			'10��',
																			'11��',
																			'12��' ],
																	minDate : -0,
																	maxDate : "+3M"
																});
											});
										</script> <input type="text" name="vip_checkout" id="date2" size="7" /></td>
									<td><select name="vip_people">
											<c:forEach begin="0" end="6" step="1" var="people">
												<option value=${people}>${people }</option>
											</c:forEach>
									</select></td>
								</tr>

								<tr class="real">
									<td><input type="checkbox" name="caris" id="room"  onClick="CountChecked(this);"></td>
									<td>ī����</td>
									<td><span class="label label-success">���డ��</span></td>
									<td>20��</td>
									<td>2/4</td>
									<td><script type="text/javascript">
										$(function() {
											$("#date3")
													.datepicker(
															{
																changeMonth : true,
																changeYear : true,
																nextText : '���� ��',
																prevText : '���� ��',
																changeMonth : true,
																dayNames : [
																		'������',
																		'ȭ����',
																		'������',
																		'�����',
																		'�ݿ���',
																		'�����',
																		'�Ͽ���' ],
																dayNamesMin : [
																		'��',
																		'ȭ',
																		'��',
																		'��',
																		'��',
																		'��',
																		'��' ],
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
																		'1��',
																		'2��',
																		'3��',
																		'4��',
																		'5��',
																		'6��',
																		'7��',
																		'8��',
																		'9��',
																		'10��',
																		'11��',
																		'12��' ],
																minDate : -0,
																maxDate : "+3M"
															});
										});
									</script> <input type="text" name="caris_checkin" id="date3" size="7" />
										~ <script type="text/javascript">
											$(function() {
												$("#date4")
														.datepicker(
																{
																	changeMonth : true,
																	changeYear : true,
																	nextText : '���� ��',
																	prevText : '���� ��',
																	changeMonth : true,
																	dayNames : [
																			'������',
																			'ȭ����',
																			'������',
																			'�����',
																			'�ݿ���',
																			'�����',
																			'�Ͽ���' ],
																	dayNamesMin : [
																			'��',
																			'ȭ',
																			'��',
																			'��',
																			'��',
																			'��',
																			'��' ],
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
																			'1��',
																			'2��',
																			'3��',
																			'4��',
																			'5��',
																			'6��',
																			'7��',
																			'8��',
																			'9��',
																			'10��',
																			'11��',
																			'12��' ],
																	minDate : -0,
																	maxDate : "+3M"
																});
											});
										</script> <input type="text" name="caris_checkout" id="date4" size="7" /></td>
									<td><select name="caris_people">
											<c:forEach begin="0" end="2" step="1" var="people">
												<option value=${people}>${people }</option>
											</c:forEach>
									</select></td>
								</tr>
								<tr class="real">
									<td><input type="checkbox" name="becky" id="room"  onClick="CountChecked(this);"></td>
									<td>��Ű</td>
									<td><span class="label label-success">���డ��</span></td>
									<td>17��</td>
									<td>2/6</td>
									<td><script type="text/javascript">
										$(function() {
											$("#date5")
													.datepicker(
															{
																changeMonth : true,
																changeYear : true,
																nextText : '���� ��',
																prevText : '���� ��',
																changeMonth : true,
																dayNames : [
																		'������',
																		'ȭ����',
																		'������',
																		'�����',
																		'�ݿ���',
																		'�����',
																		'�Ͽ���' ],
																dayNamesMin : [
																		'��',
																		'ȭ',
																		'��',
																		'��',
																		'��',
																		'��',
																		'��' ],
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
																		'1��',
																		'2��',
																		'3��',
																		'4��',
																		'5��',
																		'6��',
																		'7��',
																		'8��',
																		'9��',
																		'10��',
																		'11��',
																		'12��' ],
																minDate : -0,
																maxDate : "+3M"
															});
										});
									</script> <input type="text" name="becky_checkin" id="date5" size="7" />
										~ <script type="text/javascript">
											$(function() {
												$("#date6")
														.datepicker(
																{
																	changeMonth : true,
																	changeYear : true,
																	nextText : '���� ��',
																	prevText : '���� ��',
																	changeMonth : true,
																	dayNames : [
																			'������',
																			'ȭ����',
																			'������',
																			'�����',
																			'�ݿ���',
																			'�����',
																			'�Ͽ���' ],
																	dayNamesMin : [
																			'��',
																			'ȭ',
																			'��',
																			'��',
																			'��',
																			'��',
																			'��' ],
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
																			'1��',
																			'2��',
																			'3��',
																			'4��',
																			'5��',
																			'6��',
																			'7��',
																			'8��',
																			'9��',
																			'10��',
																			'11��',
																			'12��' ],
																	minDate : -0,
																	maxDate : "+3M"
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
									<td><input type="checkbox" name="elisia" id="room"  onClick="CountChecked(this);"></td>
									<td>�����þ�</td>
									<td><span class="label label-danger">����Ϸ�</span></td>
									<td>13��</td>
									<td>2/4</td>
									<td><script type="text/javascript">
										$(function() {
											$("#date7")
													.datepicker(
															{
																changeMonth : true,
																changeYear : true,
																nextText : '���� ��',
																prevText : '���� ��',
																changeMonth : true,
																dayNames : [
																		'������',
																		'ȭ����',
																		'������',
																		'�����',
																		'�ݿ���',
																		'�����',
																		'�Ͽ���' ],
																dayNamesMin : [
																		'��',
																		'ȭ',
																		'��',
																		'��',
																		'��',
																		'��',
																		'��' ],
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
																		'1��',
																		'2��',
																		'3��',
																		'4��',
																		'5��',
																		'6��',
																		'7��',
																		'8��',
																		'9��',
																		'10��',
																		'11��',
																		'12��' ],
																minDate : -0,
																maxDate : "+3M"
															});
										});
									</script> <input type="text" name="elisia_checkin" id="date7" size="7" />
										~ <script type="text/javascript">
											$(function() {
												$("#date8")
														.datepicker(
																{
																	changeMonth : true,
																	changeYear : true,
																	nextText : '���� ��',
																	prevText : '���� ��',
																	changeMonth : true,
																	dayNames : [
																			'������',
																			'ȭ����',
																			'������',
																			'�����',
																			'�ݿ���',
																			'�����',
																			'�Ͽ���' ],
																	dayNamesMin : [
																			'��',
																			'ȭ',
																			'��',
																			'��',
																			'��',
																			'��',
																			'��' ],
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
																			'1��',
																			'2��',
																			'3��',
																			'4��',
																			'5��',
																			'6��',
																			'7��',
																			'8��',
																			'9��',
																			'10��',
																			'11��',
																			'12��' ],
																	minDate : -0,
																	maxDate : "+3M"
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
									<td><input type="checkbox" name="alice" id="room"  onClick="CountChecked(this);"></td>
									<td>�ٸ���</td>
									<td><span class="label label-success">���డ��</span></td>
									<td>13��</td>
									<td>2/4</td>
									<td><script type="text/javascript">
										$(function() {
											$("#date9")
													.datepicker(
															{
																changeMonth : true,
																changeYear : true,
																nextText : '���� ��',
																prevText : '���� ��',
																changeMonth : true,
																dayNames : [
																		'������',
																		'ȭ����',
																		'������',
																		'�����',
																		'�ݿ���',
																		'�����',
																		'�Ͽ���' ],
																dayNamesMin : [
																		'��',
																		'ȭ',
																		'��',
																		'��',
																		'��',
																		'��',
																		'��' ],
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
																		'1��',
																		'2��',
																		'3��',
																		'4��',
																		'5��',
																		'6��',
																		'7��',
																		'8��',
																		'9��',
																		'10��',
																		'11��',
																		'12��' ],
																minDate : -0,
																maxDate : "+3M"
															});
										});
									</script> <input type="text" name="alice_checkin" id="date9" size="7" />
										~ <script type="text/javascript">
											$(function() {
												$("#date10")
														.datepicker(
																{
																	changeMonth : true,
																	changeYear : true,
																	nextText : '���� ��',
																	prevText : '���� ��',
																	changeMonth : true,
																	dayNames : [
																			'������',
																			'ȭ����',
																			'������',
																			'�����',
																			'�ݿ���',
																			'�����',
																			'�Ͽ���' ],
																	dayNamesMin : [
																			'��',
																			'ȭ',
																			'��',
																			'��',
																			'��',
																			'��',
																			'��' ],
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
																			'1��',
																			'2��',
																			'3��',
																			'4��',
																			'5��',
																			'6��',
																			'7��',
																			'8��',
																			'9��',
																			'10��',
																			'11��',
																			'12��' ],
																	minDate : -0,
																	maxDate : "+3M"
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
								 <input type="submit" value="�����ϱ�" />
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

