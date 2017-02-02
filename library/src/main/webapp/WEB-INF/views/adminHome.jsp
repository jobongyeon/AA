<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
<!-- 부트스트랩/css -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- 부트스트랩/css -->
<style>
body {
	font: 400 15px Lato, sans-serif;
	line-height: 1.8;
	color: #818181;
}

h2 {
	font-size: 24px;
	text-transform: uppercase;
	color: #303030;
	font-weight: 600;
	margin-bottom: 30px;
}

h4 {
	font-size: 19px;
	line-height: 1.375em;
	color: #303030;
	font-weight: 400;
	margin-bottom: 30px;
}

.jumbotron {
	background-color: #f4511e;
	color: #fff;
	padding: 100px 25px;
	font-family: Montserrat, sans-serif;
}

.container-fluid {
	padding: 60px 50px;
}

.bg-grey {
	background-color: #f6f6f6;
}

.logo-small {
	color: #f4511e;
	font-size: 50px;
}

.logo {
	color: #f4511e;
	font-size: 200px;
}

.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail img {
	width: 100%;
	height: 100%;
	margin-bottom: 10px;
}

.carousel-control.right, .carousel-control.left {
	background-image: none;
	color: #f4511e;
}

.carousel-indicators li {
	border-color: #f4511e;
}

.carousel-indicators li.active {
	background-color: #f4511e;
}

.item h4 {
	font-size: 19px;
	line-height: 1.375em;
	font-weight: 400;
	font-style: italic;
	margin: 70px 0;
}

.item span {
	font-style: normal;
}

.panel {
	border: 1px solid #f4511e;
	border-radius: 0 !important;
	transition: box-shadow 0.5s;
}

.panel:hover {
	box-shadow: 5px 0px 40px rgba(0, 0, 0, .2);
}

.panel-footer .btn:hover {
	border: 1px solid #f4511e;
	background-color: #fff !important;
	color: #f4511e;
}

.panel-heading {
	color: #fff !important;
	background-color: #f4511e !important;
	padding: 25px;
	border-bottom: 1px solid transparent;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	border-bottom-left-radius: 0px;
	border-bottom-right-radius: 0px;
}

.panel-footer {
	background-color: white !important;
}

.panel-footer h3 {
	font-size: 32px;
}

.panel-footer h4 {
	color: #aaa;
	font-size: 14px;
}

.panel-footer .btn {
	margin: 15px 0;
	background-color: #f4511e;
	color: #fff;
}

.navbar {
	margin-bottom: 0;
	background-color: #f4511e;
	z-index: 9999;
	border: 0;
	font-size: 12px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 4px;
	border-radius: 0;
	font-family: Montserrat, sans-serif;
}

.navbar li a, .navbar .navbar-brand {
	color: #fff !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
	color: #f4511e !important;
	background-color: #fff !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
	color: #fff !important;
}

footer .glyphicon {
	font-size: 20px;
	margin-bottom: 20px;
	color: #f4511e;
}

.slideanim {
	visibility: hidden;
}

.slide {
	animation-name: slide;
	-webkit-animation-name: slide;
	animation-duration: 1s;
	-webkit-animation-duration: 1s;
	visibility: visible;
}

@
keyframes slide { 0% {
	opacity: 0;
	transform: translateY(70%);
}

100%
{
opacity






:



 



1;
transform






:



 



translateY






(0%);
}
}
@
-webkit-keyframes slide { 0% {
	opacity: 0;
	-webkit-transform: translateY(70%);
}

100%
{
opacity






:



 



1;
-webkit-transform






:



 



translateY






(0%);
}
}
@media screen and (max-width: 768px) {
	.col-sm-4 {
		text-align: center;
		margin: 25px 0;
	}
	.btn-lg {
		width: 100%;
		margin-bottom: 35px;
	}
}

@media screen and (max-width: 480px) {
	.logo {
		font-size: 150px;
	}
}
</style>
</head>
<!-- 상단가로바 -->
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#myPage">Home</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#about">도서관관리</a></li>
					<li><a href="#services">도서관리</a></li>
					<li><a href="#portfolio">도서대여/반납</a></li>
					<li><a href="#pricing">회원관리</a></li>
					<li><a href="#contact">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 공지사항 -->
	<div class="jumbotron text-center">
		<div class="row">
			<img src="img/bookmark.ico" style="margin-left: -2420px;">
			<div class="col-md-7" style="margin-left: 500px;">
				<div class="panel panel-default" style="margin-top: 20px;">
					<div class="panel-heading" style="text-align: left;">공지사항</div>
					<div class="panel-body" style="color: orange; text-align: left;">
						▷2주차 업무사항<br /> 
						▷주간보고<br />
						▷연체자 파악<br /> 
						▷도서입출계획<br />
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 도서대출현황 -->
	<div class="row">
		<div class="col-md-2" style="margin-left: 200px; margin-top: -45px;">
			<div class="panel panel-default" style="margin-top: 20px;">
				<div class="panel-heading" style="text-align: left;">도서대출현황</div>
				<div class="panel-body" style="color: orange; text-align: left; margin-bottom: 500px;">
					▷1<br/>
					▷2<br/>
					▷3<br/>
				</div>
			</div>
		</div>
	</div>
	<!-- 도서연체현황 -->
	<div class="row">
		<div class="col-md-8" style="margin-left: 455px; margin-top: -728px;">
			<div class="panel panel-default" style="margin-top: 20px;">
				<div class="panel-heading" style="text-align: left;">도서연체현황</div>
				<div class="panel-body" style="color: orange; text-align: left; margin-bottom: 150px;">
					▷1<br/>
					▷2<br/>
					▷3<br/>
					▷4<br/>
					▷5<br/>
				</div>
			</div>
		</div>
	</div>
	<!-- 도서폐기예정현황 -->
	<div class="row">
		<div class="col-md-8" style="margin-left: 455px; margin-top: -330px;">
			<div class="panel panel-default" style="margin-top: 20px;">
				<div class="panel-heading" style="text-align: left;">도서폐기예정</div>
				<div class="panel-body" style="color: orange; text-align: left; margin-bottom: 100px;">
					▷1<br/>
					▷2<br/>
					▷3<br/>
				</div>
			</div>
		</div>
	</div>
</body>
</html>