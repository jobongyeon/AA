<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>������ ����</title>
	
	<!-- ��Ʈ��Ʈ��/css -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat"	rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="/resources/css/adminHome.css">
	
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<!-- ��ܰ��ι� -->
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
	
	<!-- �������� -->
	<div class="jumbotron">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-2">
				<img src="/resources/img/bookmark.ico">
			</div>
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">Jeonju English Library</div>
					<div class="panel-body" style="color: gray;">
						����ʽÿ�<br/><br/><br/><br/><br/>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- �̱��� ���� -->
	<!-- ����������Ȳ -->
	<!-- <div class="row">
		<div class="col-md-2" style="margin-left: 200px; margin-top: -45px;">
			<div class="panel panel-default" style="margin-top: 20px;">
				<div class="panel-heading" style="text-align: left;">����������Ȳ</div>
				<div class="panel-body" style="color: orange; text-align: left; margin-bottom: 500px;">
					��1<br/>
					��2<br/>
					��3<br/>
				</div>
			</div>
		</div>
	</div> -->
	<!-- ������ü��Ȳ -->
	<!-- <div class="row">
		<div class="col-md-8" style="margin-left: 455px; margin-top: -728px;">
			<div class="panel panel-default" style="margin-top: 20px;">
				<div class="panel-heading" style="text-align: left;">������ü��Ȳ</div>
				<div class="panel-body" style="color: orange; text-align: left; margin-bottom: 150px;">
					��1<br/>
					��2<br/>
					��3<br/>
					��4<br/>
					��5<br/>
				</div>
			</div>
		</div>
	</div> -->
	<!-- ������⿹����Ȳ -->
	<!-- <div class="row">
		<div class="col-md-8" style="margin-left: 455px; margin-top: -330px;">
			<div class="panel panel-default" style="margin-top: 20px;">
				<div class="panel-heading" style="text-align: left;">������⿹��</div>
				<div class="panel-body" style="color: orange; text-align: left; margin-bottom: 100px;">
					��1<br/>
					��2<br/>
					��3<br/>
				</div>
			</div>
		</div>
	</div> -->
<!-- �̱��� ���� -->
</body>
</html>