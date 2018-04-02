<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/resources/including/header.jsp" />
<script>
	$(function(){
// 		$(#animateBtn).click(function(){
// 			animate('#anim-head', 'bounce');
// 			animate('#anim-body', 'rubberBand');
// 			return false;
// 		});
		//animate
		function animate(element, animation){
			$(element).addClass('animated' + animation);
			var wait = setTimeout(function(){
				$(element).removeClass('animated' + animation);
			}, 1000);
		}
	})
</script>
	<header class="animated fadeInDown">
		<div class="text_c">
			<h1>WELCOME</h1>
			<hr width="50%" />
			<h3>인 &nbsp;&#183;&nbsp;사&nbsp;&#183;&nbsp;말</h3>
		</div>
	</header>
	<div class="text_l animated fadeInLeft" id="section-1">
		<h2>펜션에 오신 것을 환영합니다.</h2>
		<p>
			<strong>끝없이 펼처진 부산 앞바다</strong>해변에 위치한 저희 펜션은<br />
			문 앞을 나서면 1분도 채 안되는 거리에<br />
			푸른 송정해수욕장의 파도가 출렁이고<br />
			모래사장을 맨발로 걷는 색다른 재미도 맛볼 수 있습니다.
		</p>
		<p>
			아픔다운 바다와 행복한 시간을 보낼 수 있는<br />
			펜션으로 여러분으로 초대합니다.<br />
		</p>
	</div>
	<div class="img_r animated fadeInRight" id="section-2">
		<div class="img_goo">	
			<div class="thumbnail"></div>
			<div class="thumbnail"></div>
			<div class="thumbnail"></div>
		</div>
	</div>
	<footer class="animated fadeInUp">
		<h1>펜션 위치</h1>
		<div class ="img_r animated fadeInUp" id="section-3">
			<a href="http://map.daum.net/?urlX=229976&urlY=1534427&urlLevel=4&map_type=TYPE_MAP&map_hybrid=false&SHOWMARK=true" target="_blank">
				<span style="background:#000;position:absolute;width:25%;opacity:.7;filter:alpha(opacity=70);color:#fff;overflow:hidden;font:12px/1.5 Dotum, '돋움', sans-serif;text-decoration:none;padding:7px 0px 0px 10px; height: 25%;">
					지도를 클릭하시면 위치정보를 확인하실 수 있습니다.
				</span>
				<img width="100%" height="32%" src="http://map2.daum.net/map/mapservice?MX=229976&MY=1534427&SCALE=5&IW=565&IH=308&COORDSTM=WCONGNAMUL" style="border:1px solid #ccc">
			</a>
		</div>
	</footer>
<jsp:include page="/resources/including/footer.jsp" />