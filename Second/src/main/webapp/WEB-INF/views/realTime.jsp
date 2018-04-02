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
				<h1 class="page-header">�ǽð� ����</h1>
			</div>
			<p align="middle">
				<strong>������ ���ú��� 3�ޱ��� �����մϴ�</strong>
			</p>
			<form action="reservation" method="post">
				<p align="middle">
					���Ǹ� <select name="room">
						<option value="VIP">VIP</option>
						<option value="ī����">ī����</option>
						<option value="��Ű">��Ű</option>
						<option value="�����þ�">�����þ�</option>
						<option value="������">�ٸ���</option>
					</select> üũ��
					<script type="text/javascript">
						$(function() {
							$("#date1").datepicker(
									{
										changeMonth : true,
										changeYear : true,
										nextText : '���� ��',
										prevText : '���� ��',
										changeMonth : true,
										dayNames : [ '������', 'ȭ����', '������',
												'�����', '�ݿ���', '�����', '�Ͽ���' ],
										dayNamesMin : [ '��', 'ȭ', '��', '��',
												'��', '��', '��' ],
										monthNamesShort : [ '1', '2', '3', '4',
												'5', '6', '7', '8', '9', '10',
												'11', '12' ],
										monthNames : [ '1��', '2��', '3��', '4��',
												'5��', '6��', '7��', '8��', '9��',
												'10��', '11��', '12��' ],
										minDate : -0,
										maxDate : "+3M"
									});
						});
					</script>
					<input type="text" name="checkin" id="date1" size="15" /> üũ�ƿ�
					<script type="text/javascript">
						$(function() {
							$("#date2").datepicker(
									{
										changeMonth : true,
										changeYear : true,
										nextText : '���� ��',
										prevText : '���� ��',
										changeMonth : true,
										dayNames : [ '������', 'ȭ����', '������',
												'�����', '�ݿ���', '�����', '�Ͽ���' ],
										dayNamesMin : [ '��', 'ȭ', '��', '��',
												'��', '��', '��' ],
										monthNamesShort : [ '1', '2', '3', '4',
												'5', '6', '7', '8', '9', '10',
												'11', '12' ],
										monthNames : [ '1��', '2��', '3��', '4��',
												'5��', '6��', '7��', '8��', '9��',
												'10��', '11��', '12��' ],
										minDate : -0,
										maxDate : "+3M"
									});
						});
					</script>
					<input type="text" name="checkout" id="date2" size="15" /> <input
						type="submit" value="�����ϱ�" />
				</p>

				<table class="table" id="mainTable">
					<tr>
						<th rowspan="2">���Ǹ�</th>
						<th rowspan="2">��������</th>
						<th rowspan="2">ũ��</th>
						<th rowspan="2">�ο�(����/�ִ�)</th>
						<th colspan="3">��ݾȳ�</th>
						<th rowspan="2">�߰����</th>
					</tr>
					<tr>
						<th class="th">�Ⱓ</th>
						<th class="th">����</th>
						<th class="th">�ָ�</th>
					</tr>
					<tr>
						<td rowspan="3" class="td_v">vip</td>
						<td rowspan="3" class="td_v">�Ž�+���Ǻи���(ħ���1��+ȭ���1��) /
							����,���Ľü�����,Ǯ����</td>
						<td rowspan="3" class="td_v">30��</td>
						<td rowspan="3" class="td_v">4/10</td>
						<td><span class="label label-default">�����</span></td>
						<td>650,000��</td>
						<td>900,000��</td>
						<td rowspan="3" class="td_v">���� 20,000��<br />�Ҿ� 20,000��<br />����
							20,000��
						</td>
					</tr>
					<tr>
						<td><span class="label label-success">�ؼ�����</span></td>
						<td>900,000��</td>
						<td>1100,000��</td>
					</tr>
					<tr>
						<td><span class="label label-danger">������</span></td>
						<td>1100,000��</td>
						<td>1200,000��</td>
					</tr>
					<tr>
						<td rowspan="3" class="td_v">ī����</td>
						<td rowspan="3" class="td_v">�Ž�+���Ǻи���(ħ���1��+ȭ���2��) /
							����,���Ľü�����,Ǯ����</td>
						<td rowspan="3" class="td_v">20��</td>
						<td rowspan="3" class="td_v">4/10</td>
						<td><span class="label label-default">�����</span></td>
						<td>550,000��</td>
						<td>800,000��</td>
						<td rowspan="3" class="td_v">���� 20,000��<br />�Ҿ� 20,000��<br />����
							20,000��
						</td>
					</tr>
					<tr>
						<td><span class="label label-success">�ؼ�����</span></td>
						<td>800,000��</td>
						<td>950,000��</td>
					</tr>
					<tr>
						<td><span class="label label-danger">������</span></td>
						<td>950,000��</td>
						<td>1100,000��</td>
					</tr>
					<tr>
						<td rowspan="3" class="td_v">��Ű</td>
						<td rowspan="3" class="td_v">�Ž�+���Ǻи���(ħ���1��+ȭ���1��) /
							���Ľü�����,Ǯ����</td>
						<td rowspan="3" class="td_v">20��</td>
						<td rowspan="3" class="td_v">4/10</td>
						<td><span class="label label-default">�����</span></td>
						<td>550,000��</td>
						<td>800,000��</td>
						<td rowspan="3" class="td_v">���� 20,000��<br />�Ҿ� 20,000��<br />����
							20,000��
						</td>
					</tr>
					<tr>
						<td><span class="label label-success">�ؼ�����</span></td>
						<td>800,000��</td>
						<td>950,000��</td>
					</tr>
					<tr>
						<td><span class="label label-danger">������</span></td>
						<td>950,000��</td>
						<td>1100,000��</td>
					</tr>
					<tr>
						<td rowspan="3" class="td_v">�����þ�</td>
						<td rowspan="3" class="td_v">�Ž�+���Ǻи���(ħ���1��+ȭ���1��) /
							���Ľü�����,Ǯ����</td>
						<td rowspan="3" class="td_v">20��</td>
						<td rowspan="3" class="td_v">4/10</td>
						<td><span class="label label-default">�����</span></td>
						<td>550,000��</td>
						<td>800,000��</td>
						<td rowspan="3" class="td_v">���� 20,000��<br />�Ҿ� 20,000��<br />����
							20,000��
						</td>
					</tr>
					<tr>
						<td><span class="label label-success">�ؼ�����</span></td>
						<td>800,000��</td>
						<td>950,000��</td>
					</tr>
					<tr>
						<td><span class="label label-danger">������</span></td>
						<td>950,000��</td>
						<td>1100,000��</td>
					</tr>
					<tr>
						<td rowspan="3" class="td_v">������</td>
						<td rowspan="3" class="td_v">�Ž�+���Ǻи���(ħ���1��+ȭ���1��) /
							����,���Ľü�����,Ǯ����</td>
						<td rowspan="3" class="td_v">20��</td>
						<td rowspan="3" class="td_v">4/10</td>
						<td><span class="label label-default">�����</span></td>
						<td>550,000��</td>
						<td>800,000��</td>
						<td rowspan="3" class="td_v">���� 20,000��<br />�Ҿ� 20,000��<br />����
							20,000��
						</td>
					</tr>
					<tr>
						<td><span class="label label-success">�ؼ�����</span></td>
						<td>800,000��</td>
						<td>950,000��</td>
					</tr>
					<tr>
						<td><span class="label label-danger">������</span></td>
						<td>950,000��</td>
						<td>1100,000��</td>
					</tr>
				</table>

			</form>
		</div>
	</div>
</div>
<jsp:include page="/resources/including/footer.jsp" />
