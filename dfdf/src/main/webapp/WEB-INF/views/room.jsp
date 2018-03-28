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
										<li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="3" class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="4" class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="5" class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="6" class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="7" class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="8" class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="9" class=""></li>
									</ol>
									<!-- Wrapper for slides -->
									<div class="carousel-inner rooms_img" role="listbox">
										<div class="item active">
											<img src="resources/images/v-1.jpg" alt="room1">
										</div>
										<div class="item">
											<img src="resources/images/v-2.jpg" alt="room2">
										</div>
										<div class="item">
											<img src="resources/images/v-3.jpg" alt="room3">
										</div>
										<div class="item">
											<img src="resources/images/v-4.jpg" alt="room4">
										</div>
										<div class="item">
											<img src="resources/images/v-5.jpg" alt="room5">
										</div>
										<div class="item">
											<img src="resources/images/v-6.jpg" alt="room6">
										</div>
										<div class="item">
											<img src="resources/images/v-7.jpg" alt="room7">
										</div>
										<div class="item">
											<img src="resources/images/v-8.jpg" alt="room8">
										</div>
										<div class="item">
											<img src="resources/images/v-9.jpg" alt="room8">
										</div>
										<div class="item">
											<img src="resources/images/v-10.jpg" alt="room8">
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
								<table class="table" id="mainTable">
									<tr>
										<th rowspan="2" >객실명</th>
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
										<td rowspan="3" class="td_v">거실+객실분리형(침대룸1개+화장실1개) / 복층,스파시설보유,풀빌라</td>
										<td rowspan="3" class="td_v">30평</td>
										<td rowspan="3" class="td_v">4/10</td>
										<td>
											<span class="label label-default">비수기</span>
										</td>
										<td>650,000원</td>
										<td>900,000원</td>
										<td rowspan="3" class="td_v">성인 20,000원<br />소아 20,000원<br />유아 20,000원</td>
									</tr>
									<tr>
										<td>
											<span class="label label-success">준성수기</span>
										</td>
										<td>900,000원</td>
										<td>1100,000원</td>
									</tr>
									<tr>
										<td>
											<span class="label label-danger">성수기</span>
										</td>
										<td>1100,000원</td>
										<td>1200,000원</td>
									</tr>
								</table>
								<div class="addition">
									<p class="add_tit">구비시설</p>
									<ul class="dot_list">
										<li id="roomSvr">
											TV,천장형 에어컨,침대,폴딩베드,실내수영장,전자레인지,드라이기,압력밥솥,커피포터,냉장고,3구인덕션,식탁,야외식탁,일회용 개인세안용품
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
								<div id="carousel-example-generic2" class="carousel slide" data-ride="carousel" style="margin-bottom: 10px">
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="3" class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="4" class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="5" class=""></li>
										<li data-target="#carousel-example-generic" data-slide-to="6" class=""></li>
									</ol>
									<!-- Wrapper for slides -->
									<div class="carousel-inner rooms_img" role="listbox">
										<div class="item active">
											<img src="resources/images/r1-1.jpg" alt="room">
										</div>
										<div class="item">
											<img src="resources/images/r1-2.jpg" alt="room2">
										</div>
										<div class="item">
											<img src="resources/images/r1-3.jpg" alt="room3">
										</div>
										<div class="item">
											<img src="resources/images/r1-4.jpg" alt="room4">
										</div>
										<div class="item">
											<img src="resources/images/r1-5.jpg" alt="room5">
										</div>
										<div class="item">
											<img src="resources/images/r1-6.jpg" alt="room6">
										</div>
										<div class="item">
											<img src="resources/images/r1-7.jpg" alt="room7">
										</div>
									</div>
									<!-- Controls -->
									<a class="left carousel-control" href="#carousel-example-generic2" role="button" data-slide="prev">
										<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a>
									<a class="right carousel-control" href="#carousel-example-generic2" role="button" data-slide="next">
										<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<table class="table" id="mainTable">
									<tr>
										<th rowspan="2" >객실명</th>
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
										<td rowspan="3" class="td_v">카리스</td>
										<td rowspan="3" class="td_v">거실+객실분리형(침대룸1개+화장실2개) / 복층,스파시설보유,풀빌라</td>
										<td rowspan="3" class="td_v">20평</td>
										<td rowspan="3" class="td_v">4/10</td>
										<td>
											<span class="label label-default">비수기</span>
										</td>
										<td>550,000원</td>
										<td>800,000원</td>
										<td rowspan="3" class="td_v">성인 20,000원<br />소아 20,000원<br />유아 20,000원</td>
									</tr>
									<tr>
										<td>
											<span class="label label-success">준성수기</span>
										</td>
										<td>800,000원</td>
										<td>950,000원</td>
									</tr>
									<tr>
										<td>
											<span class="label label-danger">성수기</span>
										</td>
										<td>950,000원</td>
										<td>1100,000원</td>
									</tr>
								</table>
								<div class="addition">
									<p class="add_tit">구비시설</p>
									<ul class="dot_list">
										<li id="roomSvr">
											TV,천장형 에어컨,침대,폴딩베드,실내수영장,전자레인지,드라이기,압력밥솥,커피포터,냉장고,3구인덕션,식탁,야외식탁,일회용 개인세안용품
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
								<div id="carousel-example-generic3" class="carousel slide" data-ride="carousel" style="margin-bottom: 10px">
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1" class = ""></li>
										<li data-target="#carousel-example-generic" data-slide-to="2" class = ""></li>
										<li data-target="#carousel-example-generic" data-slide-to="3" class = ""></li>
										<li data-target="#carousel-example-generic" data-slide-to="4" class = ""></li>
										<li data-target="#carousel-example-generic" data-slide-to="5" class = ""></li>										
									</ol>
									<!-- Wrapper for slides -->
									<div class="carousel-inner rooms_img" role="listbox">
										<div class="item active">
											<img src="resources/images/r2-1.jpg" alt="room1">
										</div>
										<div class="item">
											<img src="resources/images/r2-2.jpg" alt="room2">
										</div>
										<div class="item">
											<img src="resources/images/r2-3.jpg" alt="room3">
										</div>
										<div class="item">
											<img src="resources/images/r2-4.jpg" alt="room4">
										</div>
										<div class="item">
											<img src="resources/images/r2-5.jpg" alt="room5">
										</div>
										<div class="item">
											<img src="resources/images/r2-6.jpg" alt="room6">
										</div>										
									</div>
									<!-- Controls -->
									<a class="left carousel-control" href="#carousel-example-generic3" role="button" data-slide="prev">
										<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a>
									<a class="right carousel-control" href="#carousel-example-generic3" role="button" data-slide="next">
										<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<table class="table" id="mainTable">
									<tr>
										<th rowspan="2" >객실명</th>
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
										<td rowspan="3" class="td_v">베키</td>
										<td rowspan="3" class="td_v">거실+객실분리형(침대룸1개+화장실1개) / 스파시설보유,풀빌라</td>
										<td rowspan="3" class="td_v">20평</td>
										<td rowspan="3" class="td_v">4/10</td>
										<td>
											<span class="label label-default">비수기</span>
										</td>
										<td>550,000원</td>
										<td>800,000원</td>
										<td rowspan="3" class="td_v">성인 20,000원<br />소아 20,000원<br />유아 20,000원</td>
									</tr>
									<tr>
										<td>
											<span class="label label-success">준성수기</span>
										</td>
										<td>800,000원</td>
										<td>950,000원</td>
									</tr>
									<tr>
										<td>
											<span class="label label-danger">성수기</span>
										</td>
										<td>950,000원</td>
										<td>1100,000원</td>
									</tr>
								</table>
								<div class="addition">
									<p class="add_tit">구비시설</p>
									<ul class="dot_list">
										<li id="roomSvr">
											TV,천장형 에어컨,침대,폴딩베드,실내수영장,전자레인지,드라이기,압력밥솥,커피포터,냉장고,3구인덕션,식탁,야외식탁,일회용 개인세안용품
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
					<div role="tabpanel" class="tab-pane" id="elisia">
						<div class="panel panel-default">
							<div class="panel-body">
								<div id="carousel-example-generic4" class="carousel slide" data-ride="carousel" style="margin-bottom: 10px">
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1" class = ""></li>
										<li data-target="#carousel-example-generic" data-slide-to="2" class = ""></li>
										<li data-target="#carousel-example-generic" data-slide-to="3" class = ""></li>
										<li data-target="#carousel-example-generic" data-slide-to="4" class = ""></li>
										<li data-target="#carousel-example-generic" data-slide-to="5" class = ""></li>									
									</ol>
									<!-- Wrapper for slides -->
									<div class="carousel-inner rooms_img" role="listbox">
										<div class="item active">
											<img src="resources/images/r3-1.jpg" alt="room1">
										</div>
										<div class="item">
											<img src="resources/images/r3-2.jpg" alt="room2">
										</div>
										<div class="item">
											<img src="resources/images/r3-3.jpg" alt="room3">
										</div>
										<div class="item">
											<img src="resources/images/r3-4.jpg" alt="room4">
										</div>
										<div class="item">
											<img src="resources/images/r3-5.jpg" alt="room5">
										</div>
										<div class="item">
											<img src="resources/images/r3-6.jpg" alt="room6">			
										</div>							
									</div>
									<!-- Controls -->
									<a class="left carousel-control" href="#carousel-example-generic4" role="button" data-slide="prev">
										<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a>
									<a class="right carousel-control" href="#carousel-example-generic4" role="button" data-slide="next">
										<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<table class="table" id="mainTable">
									<tr>
										<th rowspan="2" >객실명</th>
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
										<td rowspan="3" class="td_v">엘리시아</td>
										<td rowspan="3" class="td_v">거실+객실분리형(침대룸1개+화장실1개) / 스파시설보유,풀빌라</td>
										<td rowspan="3" class="td_v">20평</td>
										<td rowspan="3" class="td_v">4/10</td>
										<td>
											<span class="label label-default">비수기</span>
										</td>
										<td>550,000원</td>
										<td>800,000원</td>
										<td rowspan="3" class="td_v">성인 20,000원<br />소아 20,000원<br />유아 20,000원</td>
									</tr>
									<tr>
										<td>
											<span class="label label-success">준성수기</span>
										</td>
										<td>800,000원</td>
										<td>950,000원</td>
									</tr>
									<tr>
										<td>
											<span class="label label-danger">성수기</span>
										</td>
										<td>950,000원</td>
										<td>1100,000원</td>
									</tr>
								</table>
								<div class="addition">
									<p class="add_tit">구비시설</p>
									<ul class="dot_list">
										<li id="roomSvr">
											TV,천장형 에어컨,침대,폴딩베드,실내수영장,전자레인지,드라이기,압력밥솥,커피포터,냉장고,3구인덕션,식탁,야외식탁,일회용 개인세안용품
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
								<div id="carousel-example-generic5" class="carousel slide" data-ride="carousel" style="margin-bottom: 10px">
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1" class =""></li>
										<li data-target="#carousel-example-generic" data-slide-to="2" class =""></li>
										<li data-target="#carousel-example-generic" data-slide-to="3" class =""></li>	
										<li data-target="#carousel-example-generic" data-slide-to="4" class =""></li>
										<li data-target="#carousel-example-generic" data-slide-to="5" class =""></li>
										<li data-target="#carousel-example-generic" data-slide-to="6" class =""></li>
										<li data-target="#carousel-example-generic" data-slide-to="7" class =""></li>
										<li data-target="#carousel-example-generic" data-slide-to="8" class =""></li>												
									</ol>
									<!-- Wrapper for slides -->
									<div class="carousel-inner rooms_img" role="listbox">
										<div class="item active">
											<img src="resources/images/r4-1.jpg" alt="room1">
										</div>
										<div class="item">
											<img src="resources/images/r4-2.jpg" alt="room2">
										</div>
										<div class="item">
											<img src="resources/images/r4-3.jpg" alt="room3">
										</div>
										<div class="item">
											<img src="resources/images/r4-4.jpg" alt="room4">
										</div>
										<div class="item">
											<img src="resources/images/r4-5.jpg" alt="room5">
										</div>
										<div class="item">
											<img src="resources/images/r4-6.jpg" alt="room6">
										</div>
										<div class="item">
											<img src="resources/images/r4-7.jpg" alt="room7">
										</div>
										<div class="item">
											<img src="resources/images/r4-8.jpg" alt="room8">
										</div>
										<div class="item">
											<img src="resources/images/r4-9.jpg" alt="room9">
										</div>														
									</div>
									<!-- Controls -->
									<a class="left carousel-control" href="#carousel-example-generic5" role="button" data-slide="prev">
										<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a>
									<a class="right carousel-control" href="#carousel-example-generic5" role="button" data-slide="next">
										<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<table class="table" id="mainTable">
									<tr>
										<th rowspan="2" >객실명</th>
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
										<td rowspan="3" class="td_v">엘리스</td>
										<td rowspan="3" class="td_v">거실+객실분리형(침대룸1개+화장실1개) / 복층,스파시설보유,풀빌라</td>
										<td rowspan="3" class="td_v">20평</td>
										<td rowspan="3" class="td_v">4/10</td>
										<td>
											<span class="label label-default">비수기</span>
										</td>
										<td>550,000원</td>
										<td>800,000원</td>
										<td rowspan="3" class="td_v">성인 20,000원<br />소아 20,000원<br />유아 20,000원</td>
									</tr>
									<tr>
										<td>
											<span class="label label-success">준성수기</span>
										</td>
										<td>800,000원</td>
										<td>950,000원</td>
									</tr>
									<tr>
										<td>
											<span class="label label-danger">성수기</span>
										</td>
										<td>950,000원</td>
										<td>1100,000원</td>
									</tr>
								</table>
								<div class="addition">
									<p class="add_tit">구비시설</p>
									<ul class="dot_list">
										<li id="roomSvr">
											TV,천장형 에어컨,침대,폴딩베드,실내수영장,전자레인지,드라이기,압력밥솥,커피포터,냉장고,3구인덕션,식탁,야외식탁,일회용 개인세안용품
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