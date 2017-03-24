<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>admin Book Insert</title>
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
<!-- css -->
<link rel="stylesheet" type="text/css" href="/resources/css/adminHome.css">
</head>

<!-- ��ܰ��ι� -->
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<%@include file="/WEB-INF/views/adminModule/adminHeadBar.jsp" %>
	<!-- ���̵�� -->
	<div class="jumbotron" style="background-color: white;"></div>
	<!-- <div class="col-lg-1"></div> -->
	<nav class="w3-sidenav w3-collapse w3-white w3-animate-left" style="z-index: 3;" id="mySidenav">
		<br>
		<div class="w3-container">
			<a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding"	title="close menu">
				<i class="fa fa-remove"></i>
			</a>
			<br><br>
			<h4 class="w3-padding-0">
				<b>��������</b>
			</h4>
		</div>
		<a href="/lib/adminBook" onclick="w3_close()" class="w3-padding w3-text-teal">
			<i class="fa fa-th-large fa-fw w3-margin-right"></i>
			�������
		</a>
		<a href="/lib/adminBookDelete" onclick="w3_close()" class="w3-padding w3-text-teal">
			<i class="fa fa-th-large fa-fw w3-margin-right"></i>
			�������
		</a>
	</nav>
	<!-- ���� -->
	<div class="col-lg-3"></div>
	<div class="col-lg-8 row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading" style="text-align: left;">�������</div>
				<div class="panel-body" style="color: orange; text-align: left;">
					<div class="col-lg-3">
						<img src="/resources/img/bookmark.ico">
					</div>
					<div>
						<form action="/lib/adminBook" method="post">
							<div>
								<div class="col-lg-4 form-group" style="color: gray;">
									������ :
									<input name="BOOKNAME" class="form-control" placeholder="�������� �Է��ϼ���" type="text" required>
								</div>
								<div class="col-lg-4 form-group" style="color: gray;">
									���ڸ� :
									<input name="WRITER" class="form-control" placeholder="���ڸ��� �Է��ϼ���" type="text" required>
								</div>
								<div class="col-lg-4 form-group" style="color: gray;">
									���ǻ� :
									<input name="PUBLISHER" class="form-control" placeholder="���ǻ縦 �Է��ϼ���" type="text" required>
								</div>
								<div class="col-lg-4 form-group" style="color: gray;">
									�з� :
									<input name="CATEGORY" class="form-control" placeholder="�з��� �Է��ϼ���" type="text" required>
								</div>
								<div class="col-lg-4 form-group" style="color: gray;">
									�帣 :
									<input name="GENRE" class="form-control" placeholder="�帣�� �Է��ϼ���" type="text" required>
								</div>
								<div class="col-lg-4 form-group" style="color: gray;">
									������ġ :
									<input name="BOOKLOCATION" class="form-control" placeholder="������ġ�� �Է��ϼ���" type="text" required>
								</div>
								<div class="container col-lg-4" style="color: gray;"> 
									���������� : 
									<select id="LIBCODE" name="LIBCODE" class="form-control"> 
										<c:forEach var="l" items="${list }">
											<option value="${l.LIBCODE}">${l.LIBNAME}</option>
										</c:forEach>
									</select>
								</div>
								<div class="col-lg-4 form-group">
									<input type="submit" value="�������" class="btn pull-right" style="color: black;">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
	