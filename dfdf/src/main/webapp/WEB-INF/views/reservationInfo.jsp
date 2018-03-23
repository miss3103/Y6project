<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/resources/including/header.jsp" />
<div class="panel panel-default panel-bg">
	<div class="panel-body">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">예약안내</h1>
				</div><!-- /.row -->
			</div><!-- /.col-lg-12 -->
			<div class="row">
				<div class="col-lg-12">
					<div role="tabpanel">
						<ul class="nav nav-tabs nav-justified" role="tablist" id="myTab">
							<li role="presentation" class="active">
								<a href="#charge" aria-controls="charge" role="tab" data-toggle="tab">요금안내</a>
							</li>
							<li role="presentation">
								<a href="#basics" aria-controls="basics" role="tab" data-toggle="tab">이용안내</a>
							</li>
						</ul>
					</div>
					<div class="tab-content tab_c">
						<div role="tabpanel" class="tab-pane active" id="charge">
							<div class="panel panel-default">
								<div class="panel-body">
									<table class="table mainTable">
										<tr class="tr_b">
											<th rowspan="2">객실명</th>
											<th rowspan="2">객실형태</th>
											<th rowspan="2">크기</th>
											<th rowspan="2">인원(기준/최대)</th>
											<th colspan="3">요금안내</th>
											<th rowspan="2">추가요금</th>
										</tr>
										<tr class="tr_b">
											<th class="th">기간</th>
											<th class="th">주중</th>
											<th class="th">주말</th>
										</tr>
										<tr>
											<td rowspan="3">vip</td>
											<td rowspan="3">침대룸+거실+주방+화장실2개</td>
											<td rowspan="3">30평</td>
											<td rowspan="3">4/10</td>
											<td>
												<span class="label label-default">비수기</span>
											</td>
											<td>280,000원</td>
											<td>350,000원</td>
											<td rowspan="3">성인 20,000원<br />소아 20,000원<br />유아 20,000원</td>
										</tr>
										<tr>
											<td>
												<span class="label label-success">준성수기</span>
											</td>
											<td>275,000원</td>
											<td>349,000원</td>
										</tr>
										<tr>
											<td>
												<span class="label label-danger">성수기</span>
											</td>
											<td>365,000원</td>
											<td>375,000원</td>
										</tr>
										<tr>
											<td rowspan="3">카리스</td>
											<td rowspan="3">침대룸+거실+주방+화장실2개	</td>
											<td rowspan="3">20평</td>
											<td rowspan="3">2/4	</td>
											<td>
												<span class="label label-default">비수기</span>
											</td>
											<td>150,000원</td>
											<td>230,000원</td>
											<td rowspan="3">성인 20,000원<br />소아 20,000원<br />유아 20,000원</td>
										</tr>
										<tr>
											<td>
												<span class="label label-success">준성수기</span>
											</td>
											<td>145,000원</td>
											<td>249,000원</td>
										</tr>
										<tr>
											<td>
												<span class="label label-danger">성수기</span>
											</td>							
											<td>269,000원</td>
											<td>279,000원</td>
										</tr>
										<tr>
											<td rowspan="3">베키</td>
											<td rowspan="3">복층(침대룸+거실+주방+화장실)</td>
											<td rowspan="3">17평</td>
											<td rowspan="3">2/6</td>
											<td>
												<span class="label label-default">비수기</span>
											</td>
											<td>109,000원</td>
											<td>190,000원</td>
											<td rowspan="3">성인 0원<br />소아 0원<br />유아 0원</td>
										</tr>
										<tr>
											<td>
												<span class="label label-success">준성수기</span>
											</td>
											<td>145,000원</td>
											<td>249,000원</td>
										</tr>
										<tr>
											<td>
												<span class="label label-danger">성수기</span>
											</td>
											<td>210,000원</td>
											<td>279,000원</td>
										</tr>
										<tr>
											<td rowspan="3">엘리시아</td>
											<td rowspan="3">원룸(침대룸+주방+화장실)</td>
											<td rowspan="3">13평</td>
											<td rowspan="3">2/4</td>
											<td>
												<span class="label label-default">비수기</span>
											</td>
											<td>99,000원</td>
											<td>180,000원</td>
											<td rowspan="3">성인 0원<br />소아 0원<br />유아 0원</td>
										</tr>
										<tr>
											<td>
												<span class="label label-success">준성수기</span>
											</td>
											<td>129,000원</td>
											<td>229,000원</td>
										</tr>
										<tr>
											<td>
												<span class="label label-danger">성수기</span>
											</td>
											<td>180,000원</td>
											<td>265,000원</td>
										</tr>
										<tr>
											<td rowspan="3">앨리스</td>
											<td rowspan="3">원룸(침대룸+주방+화장실)</td>
											<td rowspan="3">13평</td>
											<td rowspan="3">2/4</td>
											<td>
												<span class="label label-default">비수기</span>
											</td>
											<td>89,000원</td>
											<td>179,000원</td>
											<td rowspan="3">성인 0원<br />소아 0원<br />유아 0원</td>
										</tr>
										<tr>
											<td>
												<span class="label label-success">준성수기</span>
											</td>
											<td>125,000원</td>
											<td>215,000원</td>
										</tr>
										<tr>
											<td>
												<span class="label label-danger">성수기</span>
											</td>
											<td>180,000원</td>
											<td>255,000원</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane" id="basics">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="panel-body">
									<h3>기본사항</h3>
									<hr>
									<p>예약시 환불 기준을 숙지하시고 예약 하시기 바랍니다.</p>
									<p>영유아도 초과금 10.000만&nbsp; 이 부가됩니다</p>
									<p>각 객실마다 정해진 최대수용인원(영유아포함) 초과를 금하며, 예약된 인원외 입실시에는 사전연락
										해주십시오.</p>
									<p>입금시 예약자명으로 해주시고 이름이 다른 경우 펜션으로 연락을 주셔야 합니다.</p>
									<p>
										<strong>※인원 추가 요금은 펜션에 오셔서 결제해주세요.(현장결제)</strong>
									</p>
									<p>
										<strong>&nbsp; &nbsp;요청사항에 추가인원 적어주세요</strong>
									</p>
								

								<div style="margin-top: 10px; line-height: 22px;">
									<p style="color: #333">• 입금 계좌</p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;새마을금고 9002-1840-7465-7 (예금주 :000)<br />
								</div>


								<div style="margin-top: 10px; line-height: 22px;">
									<p style="color: #333">• 예약문의</p>
									&nbsp;&nbsp;&nbsp;&nbsp; 휴대전화 : 010-4688-3389
									<!--, 010-5234-8754-->
									&nbsp;&nbsp; 일반전화 : 061-641-3389
								</div>


								<div style="margin-top: 10px; line-height: 22px;"
									class="waiting_time">
									<p style="color: #333">• 입금 대기시간</p>
									&nbsp;&nbsp;&nbsp;&nbsp;1) 예약신청 후 6시간 내로 전액을 입금하셔야 예약이 완료 됩니다.<br />
									&nbsp;&nbsp;&nbsp;&nbsp;2) 당일 예약 / 하루전 예약시 2시간 내로 결제를 완료 해 주셔야
									합니다.<br /> &nbsp;&nbsp;&nbsp;&nbsp;※ 입금 대기 시간이 경과되면 예약신청이 자동
									취소됩니다.<br />
								</div>
								</div>
								<div class="panel-body">
									<h3>유의사항</h3>
									<hr>
									<p>• 입실시간 : 15 시 ( 21 시 이후의 입실은 사전에 반드시 연락을 주시기 바랍니다. )</p>

									<p style="margin-bottom: 10px">• 퇴실시간 : 11 시</p>

									<p>보호자를 동반하지 않은 미성년자는 어떠한 경우에도 입실하실 수 없습니다..</p>
									<p>애완동물은 부득이 타 객실 및 손님을 위해 입실을 금하오니 양해바랍니다.</p>
									<p>객실 내에서는 금연입니다.</p>
									<p>화재 및 냄새로 인한 타 손님 배려 차원에서 객실 내 돼지고기, 생선, 청국장의 조리를 금하오니
										지정된 바비큐장을 이용하시길 부탁드립니다.</p>
									<p>오후 10시 이후의 바베큐장 이용 및 고성방가는 타 객실손님을 위하여 금하오니 양해 바랍니다.</p>
									<p>집기 파손 시에는 펜션지기에게 알려주시기 바랍니다.</p>
									<p>퇴실시 음식물을 비롯한 모든 쓰레기는 분리수거해 주시고, 사용하신 주방기구는 세척해 주시기 바랍니다.</p>
									<p>객실 정리가 끝나시면 펜션지기에게 연락하시어 퇴실점검을 받으시기 바랍니다.</p>
								</div>
								<div class="panel-body">
									<h3>환불기준</h3>
									<hr>
									<div class="cancelnote">
										<p>예약취소는 구매한 사이트 "MYPAGE" 혹은 "예약확인/취소"에서 가능합니다.</p>
										<p>
											취소수수료는 예약시점과는 무관한 <b>이용시작일 기준</b>입니다.
										</p>
										<p>
											환불시 <b>결제하신 금액에서 취소수수료를 제외한 금액을 환불</b>해 드립니다.
										</p>
										<p>취소수수료는 결제금액이 아닌 예약금(객실요금+기타옵션요금) 기준으로 책정됩니다.</p>
										<p>
											<b>취소수수료가 100% 인 경우 전액 환불되지 않습니다.</b>
										</p>
										<p>수수료 내역은 아래와 같습니다.</p>
									</div>

									<table border=1>
										<tr>
											<th>기준</th>
											<th>취소수수료(%)</th>
											<th>환불액(%)</th>
										</tr>

										<tr>
											<td>이용일 <b>당일</b> 취소시
											</td>
											<td>100%</td>
											<td>0% 환불없음</td>
										</tr>

										<tr>
											<td>이용일 <b>1</b> 일전 취소시
											</td>
											<td>80%</td>
											<td>20% 환불</td>
										</tr>

										<tr>
											<td>이용일 <b>2</b> 일전 취소시
											</td>
											<td>70%</td>
											<td>30% 환불</td>
										</tr>

										<tr>
											<td>이용일 <b>3</b> 일전 취소시
											</td>
											<td>50%</td>
											<td>50% 환불</td>
										</tr>

										<tr>
											<td>이용일 <b>4</b> 일전 취소시
											</td>
											<td>40%</td>
											<td>60% 환불</td>
										</tr>

										<tr>
											<td>이용일 <b>5</b> 일전 취소시
											</td>
											<td>30%</td>
											<td>70% 환불</td>
										</tr>

										<tr>
											<td>이용일 <b>6</b> 일전 취소시
											</td>
											<td>20%</td>
											<td>80% 환불</td>
										</tr>

										<tr>
											<td>이용일 <b>7</b> 일전 취소시
											</td>
											<td>10%</td>
											<td>90% 환불</td>
										</tr>

										<tr id="ctl08_CancelFee_tr_basefee" class="basefee">
											<td>기본 취소 수수료</td>
											<td>10%</td>
											<td>90% 환불</td>
										</tr>
									</table>
								</div>
							</div>


						</div>
					</div>
					</div><!-- /.tab-content tab_c -->
				</div><!-- /.col-lg-12 -->
			</div><!-- /.row -->
		</div>
	</div>
<jsp:include page="/resources/including/footer.jsp" />