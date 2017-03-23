<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>admin Rental</title>
<!-- ��Ʈ��Ʈ��/css -->
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
<!-- �뿩��¥ ����Ʈ���� �����ִ� ���Ҹ� -->
<script type="text/javascript">
function RentalDate () {
	var RentalDay = new Date();
	var RentalMonth = RentalDay.getMonth()+1;
	var RentalDate = RentalDay.getDate();
	if ( RentalMonth < 10) RentalMonth = "0"+RentalMonth;
	if ( RentalDate < 10) RentalDate = "0"+RentalDate;
	document.getElementById("RentalDate").value = RentalDay.getFullYear()+"��"+RentalMonth+"��"+RentalDate+"��";
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
<!-- �ݳ���¥  ����Ʈ���� �����ִ� ���Ҹ� -->
<script type="text/javascript">
function returnExpectDate() {
	var day = new Date();
	var month = day.getMonth()+1;
	var date = day.getDate()+5;
	if ( month < 10) month = "0"+month;
	if ( date < 10) date = "0"+date;
	document.getElementById("returnExpectDate").value = day.getFullYear()+"��"+month+"��"+date+"��";
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
<!-- ��ܰ��ι� -->
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
					<li><a href="/lib/adminLibrary">����������</a></li>
					<li><a href="/lib/adminBook">��������</a></li>
					<li><a href="/lib/adminRental">�����뿩/�ݳ�</a></li>
					<li><a href="#pricing">ȸ������</a></li>
					<li><a href="/lib/adminLogout">�α׾ƿ�</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- ���̵�� -->
	<nav class="w3-sidenav w3-collapse w3-white w3-animate-left" style="z-index: 3; width: 300px; margin-top:50px; margin-left: 150px;" id="mySidenav">
		<br>
		<div class="w3-container">
			<a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding"	title="close menu">
				<i class="fa fa-remove"></i>
			</a> 
			<br><br>
			<h4 class="w3-padding-0">
				<b>���� �뿩/�ݳ�</b>
			</h4>
		</div>
		<a href="/lib/adminRental" onclick="w3_close()" class="w3-padding w3-text-teal">
			<i class="fa fa-th-large fa-fw w3-margin-right"></i>
			�����뿩
		</a>
		<a href="#portfolio" onclick="w3_close()" class="w3-padding w3-text-teal">
			<i class="fa fa-th-large fa-fw w3-margin-right"></i>
			�����ݳ�
		</a>
	</nav>
	<!-- ���� -->
	<div class="row">
		<div class="col-md-7" style="margin-left: 450px; margin-top: 100px;">
			<div class="panel panel-default" style="margin-top: 20px;">
				<div class="panel-heading" style="text-align: left;">�����뿩</div>
				<div class="panel-body" style="color: orange; text-align: left; margin-bottom: 50px;">
					<img src="/resources/img/bookmark.ico" style="margin-left: 50px;">
					<div class="row">
						<form action="/lib/adminRental" method="post">
							<div class="col-sm-6 form-group" style="margin-top: -210px; margin-left: 350px; color: gray;">
								*�����ڵ� : <br />
								<input class="form-control" name="BOOKCODE" placeholder="�����ڵ带 �Է��ϼ���" type="text" required>
							</div>
							<br /><br />
							<div class="col-sm-6 form-group" style="margin-top: -190px; margin-left: 350px; color: gray;">
								�뿩�� : <br />
								<input id="RentalDate" class="form-control" readonly="readonly" placeholder="�뿩���� �����ϼ���" type="text" required>
							</div>
							<br /><br />
							<div class="col-sm-6 form-group" style="margin-top: -170px; margin-left: 350px; color: gray;">
								�ݳ������� : <br />
								<input id="returnExpectDate" class="form-control" readonly="readonly" placeholder="�ݳ��������� �����ϼ���" type="text" required>
							</div>
							<hr class="w3-border-grey" style="margin-left: 400px; margin-top:-50px; width: 40%">
							<div class="col-sm-6 form-group" style="margin-top: 10px; margin-left: 350px; color: gray;">
								*ȸ��ID : <br />
								<input class="form-control" name="MEMBERID" placeholder="ȸ��ID�� �Է��ϼ���" type="text" required>
								<!-- ���� / �ĺ� ���� : 
								<input type="radio" >����
								<input type="radio" >�ĺ� -->
								*������<br />
								<input type="text" id="testDatepicker" name="PAYMENTDAY">
								<br />*�Ϲ�ȸ�� / ��ȸ�� ���� : <br />
								<input type="radio" value="1500" name="PAYMENTPRICE">�Ϲ�ȸ��
								<input type="radio" value="1000" name="PAYMENTPRICE">��ȸ��
								<input class="btn pull-right" type="submit" value="�뿩" style="color: black;"/>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>