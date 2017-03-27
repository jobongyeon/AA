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

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<!-- ��ܰ��ι� -->
<%@include file="/WEB-INF/views/adminModule/adminHeadBar.jsp" %>

<!-- ���̵�� -->
<%@include file="/WEB-INF/views/adminModule/adminBookSideBar.jsp" %>

	<!-- �����ֱ� -->
	<div class="col-lg-3"></div>
	
	<!-- ���� -->
	<div class="col-lg-7 row" style="margin-top: 10%;">
		<div class="panel panel-default">
			<div class="panel-heading" style="text-align: left;">�������</div>
			<div class="panel-body" style="text-align: left;">
				<div class="col-lg-3">
					<img src="/resources/img/bookmark.ico">
				</div>
				<div class="col-lg-2"></div>
				<div>
					<form action="/lib/adminBook" method="post">
						
						<fieldset class="col-lg-6">
							<legend style="color: gray;">Add</legend>
							<!-- �����̸� -->
							<div class="col-lg-12 form-group" style="color: gray;">
								������ :
								<input name="BOOKNAME" class="form-control" placeholder="�������� �Է��ϼ���" type="text" required>
							</div>
							
							<!-- �۰��̸� -->
							<div class="col-lg-12 form-group" style="color: gray;">
								���ڸ� :
								<input name="WRITER" class="form-control" placeholder="���ڸ��� �Է��ϼ���" type="text" required>
							</div>
							
							<!-- ���ǻ��̸� -->
							<div class="col-lg-12 form-group" style="color: gray;">
								���ǻ� :
								<input name="PUBLISHER" class="form-control" placeholder="���ǻ縦 �Է��ϼ���" type="text" required>
							</div>
							
							<!-- �з� -->
							<div class="col-lg-12 form-group" style="color: gray;">
								�з� :
								<input name="CATEGORY" class="form-control" placeholder="�з��� �Է��ϼ���" type="text" required>
							</div>
							
							<!-- �帣 -->
							<div class="col-lg-12 form-group" style="color: gray;">
								�帣 :
								<input name="GENRE" class="form-control" placeholder="�帣�� �Է��ϼ���" type="text" required>
							</div>
							
							<!-- ������ġ -->
							<div class="col-lg-12 form-group" style="color: gray;">
								������ġ :
								<input name="BOOKLOCATION" class="form-control" placeholder="������ġ�� �Է��ϼ���" type="text" required>
							</div>
							
							<!-- ���������� -->
							<div class="container col-lg-12" style="color: gray;"> 
								���������� : 
								<select id="LIBCODE" name="LIBCODE" class="form-control"> 
									<c:forEach var="l" items="${list }">
										<option value="${l.LIBCODE}">${l.LIBNAME}</option>
									</c:forEach>
								</select>
							</div>
							
							<!-- ��Ϲ�ư�� ���� -->
							<div class="col-lg-12 form-group"></div>
							
							<!-- ��Ϲ�ư -->
							<div class="col-lg-12 form-group">
								<input type="submit" value="�������" class="btn pull-right" style="color: black;">
							</div>
							
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
	