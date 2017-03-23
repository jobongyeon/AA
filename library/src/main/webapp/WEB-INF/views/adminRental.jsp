<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>admin Rental</title>
<!-- 부트스트랩/css -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  

<script type="text/javascript">
$(function() {
    $( "#testDatepicker" ).datepicker({
    });
});
</script>
<!-- 대여날짜 프론트에서 보여주는 역할만 -->
<script type="text/javascript">
function RentalDate () {
	var RentalDay = new Date();
	var RentalMonth = RentalDay.getMonth()+1;
	var RentalDate = RentalDay.getDate();
	if ( RentalMonth < 10) RentalMonth = "0"+RentalMonth;
	if ( RentalDate < 10) RentalDate = "0"+RentalDate;
	document.getElementById("RentalDate").value = RentalDay.getFullYear()+"년"+RentalMonth+"월"+RentalDate+"일";
	}
function addLoadEvent(func) {
	var oldonload = window.onload;
	if (typeof window.onload != 'function') {
		window.onload = func;
	} else {
		window.onload = function() {
			if (oldonload) {
				oldonload();
			}
			func();
		}
	}
}
addLoadEvent(function() {
	RentalDate();
});
</script>
<!-- 반납날짜  프론트에서 보여주는 역할만 -->
<script type="text/javascript">
function returnExpectDate() {
	var day = new Date();
	var month = day.getMonth()+1;
	var date = day.getDate()+5;
	if ( month < 10) month = "0"+month;
	if ( date < 10) date = "0"+date;
	document.getElementById("returnExpectDate").value = day.getFullYear()+"년"+month+"월"+date+"일";
}
function addLoadEvent(func) {
	var oldonload = window.onload;
	if (typeof window.onload != 'function') {
		window.onload = func;
	} else {
		window.onload = function() {
			if (oldonload) {
				oldonload();
			}
			func();
		}
	}
}
addLoadEvent(function() {
	returnExpectDate();
});
</script>
<!-- css -->
<link rel="stylesheet" type="text/css" href="/resources/css/adminHome.css">
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
				<a class="navbar-brand" href="/lib/adminHome">Home</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/lib/adminLibrary">도서관관리</a></li>
					<li><a href="/lib/adminBook">도서관리</a></li>
					<li><a href="/lib/adminRental">도서대여/반납</a></li>
					<li><a href="#pricing">회원관리</a></li>
					<li><a href="/lib/adminLogout">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 사이드바 -->
	<nav class="w3-sidenav w3-collapse w3-white w3-animate-left" style="z-index: 3; width: 300px; margin-top:50px; margin-left: 150px;" id="mySidenav">
		<br>
		<div class="w3-container">
			<a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding"	title="close menu">
				<i class="fa fa-remove"></i>
			</a> 
			<br><br>
			<h4 class="w3-padding-0">
				<b>도서 대여/반납</b>
			</h4>
		</div>
		<a href="/lib/adminRental" onclick="w3_close()" class="w3-padding w3-text-teal">
			<i class="fa fa-th-large fa-fw w3-margin-right"></i>
			도서대여
		</a>
		<a href="#portfolio" onclick="w3_close()" class="w3-padding w3-text-teal">
			<i class="fa fa-th-large fa-fw w3-margin-right"></i>
			도서반납
		</a>
	</nav>
	<!-- 본문 -->
	<div class="row">
		<div class="col-md-7" style="margin-left: 450px; margin-top: 100px;">
			<div class="panel panel-default" style="margin-top: 20px;">
				<div class="panel-heading" style="text-align: left;">도서대여</div>
				<div class="panel-body" style="color: orange; text-align: left; margin-bottom: 50px;">
					<img src="/resources/img/bookmark.ico" style="margin-left: 50px;">
					<div class="row">
						<form action="/lib/adminRental" method="post">
							<div class="col-sm-6 form-group" style="margin-top: -210px; margin-left: 350px; color: gray;">
								*도서코드 : <br />
								<input class="form-control" name="BOOKCODE" placeholder="도서코드를 입력하세요" type="text" required>
							</div>
							<br /><br />
							<div class="col-sm-6 form-group" style="margin-top: -190px; margin-left: 350px; color: gray;">
								대여일 : <br />
								<input id="RentalDate" class="form-control" readonly="readonly" placeholder="대여일을 선택하세요" type="text" required>
							</div>
							<br /><br />
							<div class="col-sm-6 form-group" style="margin-top: -170px; margin-left: 350px; color: gray;">
								반납예정일 : <br />
								<input id="returnExpectDate" class="form-control" readonly="readonly" placeholder="반납예정일을 선택하세요" type="text" required>
							</div>
							<hr class="w3-border-grey" style="margin-left: 400px; margin-top:-50px; width: 40%">
							<div class="col-sm-6 form-group" style="margin-top: 10px; margin-left: 350px; color: gray;">
								*회원ID : <br />
								<input class="form-control" name="MEMBERID" placeholder="회원ID를 입력하세요" type="text" required>
								<!-- 선불 / 후불 선택 : 
								<input type="radio" >선불
								<input type="radio" >후불 -->
								*결제일<br />
								<input type="text" id="testDatepicker" name="PAYMENTDAY">
								<br />*일반회원 / 정회원 선택 : <br />
								<input type="radio" value="1500" name="PAYMENTPRICE">일반회원
								<input type="radio" value="1000" name="PAYMENTPRICE">정회원
								<input class="btn pull-right" type="submit" value="대여" style="color: black;"/>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>