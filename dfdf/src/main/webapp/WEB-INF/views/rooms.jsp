<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="/resources/including/header.jsp" />
<div class="panel panel-default panel-bg">
	<div class="panel-body"> 
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">객실안내</h1>
			</div><!-- /.col-lg-12 -->
		</div><!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div role="tabpanel">
					<ul class="nav nav-tabs nav-justified">
						<li role="presentation" class="active">
							<a href="#vip" aria-controls="vip" role="tab" data-toggle="tab">vip</a>
						</li>
						<li role="presentation">
							<a href="#caris" aria-controls="caris" role="tab" data-toggle="tab">카리스</a>
						</li>
						<li role="presentation">
							<a href="#becky" aria-controls="becky" role="tab" data-toggle="tab">베키</a>
						</li>
						<li role="presentation">
							<a href="#elisia" aria-controls="elisia" role="tab" data-toggle="tab">엘리시아</a>
						</li>
						<li role="presentation">
							<a href="#alice" aria-controls="alice" role="tab" data-toggle="tab">앨리스</a>
						</li>
					</ul>
				</div>  
				<div class="tab-content tab_c">
					<div role="tabpanel" class="tab-pane active" id="vip">
						<div class="panel panel-default">
							<div class="panel-body">
								<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="margin-bottom: 10px">
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1"></li>
									</ol>
									<!-- Wrapper for slides -->
									<div class="carousel-inner rooms_img" role="listbox">
										<div class="item active">
											<img src="resources/images/table.jpg" alt="table">
										</div>
										<div class="item">
											<img src="resources/images/room.jpg" alt="room">
										</div>
									</div>
									<!-- Controls -->
									<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
										<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a>
									<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
										<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<table class="table mainTable">
									<tr class="tr_b">
										<th rowspan="2" >객실명</th>
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
										<td rowspan="3" class="td_v">vip</td>
										<td rowspan="3" class="td_v">침대룸+거실+주방+화장실2개</td>
										<td rowspan="3" class="td_v">30평</td>
										<td rowspan="3" class="td_v">4/10</td>
										<td>
											<span class="label label-default">비수기</span>
										</td>
										<td>280,000원</td>
										<td>350,000원</td>
										<td rowspan="3" class="td_v">성인 20,000원<br />소아 20,000원<br />유아 20,000원</td>
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
								</table>
								<div class="addition">
									<p class="add_tit">구비시설</p>
									<ul class="dot_list">
										<li id="roomSvr">
											42인치TV, 제트스파, 침대, 쿡탑, 쇼파, 냉장고, 냉난방 에어컨, 커프포트, 드라이기, 취사도구, 욕실용품
										</li>
									</ul>
									<p class="add_tit">객실설명</p>
									<ul class="dot_list">
										<li id="roomCntn">
											바다가 한 눈에 보이는 객실 입니다. 제트스파 이용가능 합니다.
										</li>
										<li id="roomTerr">
											※ 최대인원 초과 입실 시 입실이 불가능 하실 수 있습니다. 예약 전 반드시 문의바랍니다. 테라스가 있으며 테라스에서 바베큐 가능합니다.
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane" id="caris">
						<div class="panel panel-default">
							<div class="panel-body">
								<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="margin-bottom: 10px">
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1"></li>
									</ol>
									<!-- Wrapper for slides -->
									<div class="carousel-inner rooms_img" role="listbox">
										<div class="item active">
											<img src="resources/images/table.jpg" alt="table">
										</div>
										<div class="item">
											<img src="resources/images/room.jpg" alt="room">
										</div>
									</div>
									<!-- Controls -->
									<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
										<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a>
									<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
										<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<table class="table mainTable">
									<tr class="tr_b">
										<th rowspan="2" >객실명</th>
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
										<td rowspan="3" class="td_v">vip</td>
										<td rowspan="3" class="td_v">침대룸+거실+주방+화장실2개</td>
										<td rowspan="3" class="td_v">30평</td>
										<td rowspan="3" class="td_v">4/10</td>
										<td>
											<span class="label label-default">비수기</span>
										</td>
										<td>280,000원</td>
										<td>350,000원</td>
										<td rowspan="3" class="td_v">성인 20,000원<br />소아 20,000원<br />유아 20,000원</td>
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
								</table>
								<div class="addition">
									<p class="add_tit">구비시설</p>
									<ul class="dot_list">
										<li id="roomSvr">
											42인치TV, 제트스파, 침대, 쿡탑, 쇼파, 냉장고, 냉난방 에어컨, 커프포트, 드라이기, 취사도구, 욕실용품
										</li>
									</ul>
									<p class="add_tit">객실설명</p>
									<ul class="dot_list">
										<li id="roomCntn">
											바다가 한 눈에 보이는 객실 입니다. 제트스파 이용가능 합니다.
										</li>
										<li id="roomTerr">
											※ 최대인원 초과 입실 시 입실이 불가능 하실 수 있습니다. 예약 전 반드시 문의바랍니다. 테라스가 있으며 테라스에서 바베큐 가능합니다.
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane" id="becky">
						<div class="panel panel-default">
							<div class="panel-body">
								<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="margin-bottom: 10px">
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1"></li>
									</ol>
									<!-- Wrapper for slides -->
									<div class="carousel-inner rooms_img" role="listbox">
										<div class="item active">
											<img src="resources/images/table.jpg" alt="table">
										</div>
										<div class="item">
											<img src="resources/images/room.jpg" alt="room">
										</div>
									</div>
									<!-- Controls -->
									<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
										<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a>
									<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
										<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<table class="table mainTable">
									<tr class="tr_b">
										<th rowspan="2" >객실명</th>
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
										<td rowspan="3" class="td_v">vip</td>
										<td rowspan="3" class="td_v">침대룸+거실+주방+화장실2개</td>
										<td rowspan="3" class="td_v">30평</td>
										<td rowspan="3" class="td_v">4/10</td>
										<td>
											<span class="label label-default">비수기</span>
										</td>
										<td>280,000원</td>
										<td>350,000원</td>
										<td rowspan="3" class="td_v">성인 20,000원<br />소아 20,000원<br />유아 20,000원</td>
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
								</table>
								<div class="addition">
									<p class="add_tit">구비시설</p>
									<ul class="dot_list">
										<li id="roomSvr">
											42인치TV, 제트스파, 침대, 쿡탑, 쇼파, 냉장고, 냉난방 에어컨, 커프포트, 드라이기, 취사도구, 욕실용품
										</li>
									</ul>
									<p class="add_tit">객실설명</p>
									<ul class="dot_list">
										<li id="roomCntn">
											바다가 한 눈에 보이는 객실 입니다. 제트스파 이용가능 합니다.
										</li>
										<li id="roomTerr">
											※ 최대인원 초과 입실 시 입실이 불가능 하실 수 있습니다. 예약 전 반드시 문의바랍니다. 테라스가 있으며 테라스에서 바베큐 가능합니다.
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane" id="alice">
						<div class="panel panel-default">
							<div class="panel-body">
								<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="margin-bottom: 10px">
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1"></li>
									</ol>
									<!-- Wrapper for slides -->
									<div class="carousel-inner rooms_img" role="listbox">
										<div class="item active">
											<img src="resources/images/table.jpg" alt="table">
										</div>
										<div class="item">
											<img src="resources/images/room.jpg" alt="room">
										</div>
									</div>
									<!-- Controls -->
									<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
										<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a>
									<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
										<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<table class="table mainTable">
									<tr class="tr_b">
										<th rowspan="2" >객실명</th>
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
										<td rowspan="3" class="td_v">vip</td>
										<td rowspan="3" class="td_v">침대룸+거실+주방+화장실2개</td>
										<td rowspan="3" class="td_v">30평</td>
										<td rowspan="3" class="td_v">4/10</td>
										<td>
											<span class="label label-default">비수기</span>
										</td>
										<td>280,000원</td>
										<td>350,000원</td>
										<td rowspan="3" class="td_v">성인 20,000원<br />소아 20,000원<br />유아 20,000원</td>
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
								</table>
								<div class="addition">
									<p class="add_tit">구비시설</p>
									<ul class="dot_list">
										<li id="roomSvr">
											42인치TV, 제트스파, 침대, 쿡탑, 쇼파, 냉장고, 냉난방 에어컨, 커프포트, 드라이기, 취사도구, 욕실용품
										</li>
									</ul>
									<p class="add_tit">객실설명</p>
									<ul class="dot_list">
										<li id="roomCntn">
											바다가 한 눈에 보이는 객실 입니다. 제트스파 이용가능 합니다.
										</li>
										<li id="roomTerr">
											※ 최대인원 초과 입실 시 입실이 불가능 하실 수 있습니다. 예약 전 반드시 문의바랍니다. 테라스가 있으며 테라스에서 바베큐 가능합니다.
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/resources/including/footer.jsp" />