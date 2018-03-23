<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="KimEunHye">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>PortPolio</title>
	<!-- Style CSS -->
	<link href="resources/css/style.css" rel="stylesheet">
	<!-- Bootstrap Core CSS -->
	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
	<!-- Custom Fonts -->
	<link href="resources/css/font-awesome.min.css" rel="stylesheet">
	<!-- Animate CSS -->
	<link rel="stylesheet" href="resources/css/animate.min.css" />
	
	<!-- jQuery -->
	<script src="resources/js/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="resources/js/bootstrap.min.js"></script>
	<!-- Ckedit JS -->
	<script src="resources/ckeditor/ckeditor.js"></script>
</head>
<body>
	<div class="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand active" href="index">PENSION</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="main">WELCOME <span class="sr-only">(current)</span></a></li>
						<li><a href="room">ROOMS</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">RESERVATION <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="reservationInfo">예약안내</a></li>
								<li class="divider"></li>
								<li><a href="realTime">실시간 예약</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">COMMUNITY <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li>
							
								<a href="list?page=1&btype=1">공지사항</a></li>
								<li class="divider"></li>
								<li><a href="list?page=1&btype=2">숙박후기</a></li>
							</ul>
						</li>
					</ul>
				</div><!-- /.navbar-collapse -->
			</div><!-- /.container-fluid -->
		</nav>
		<div class="container">