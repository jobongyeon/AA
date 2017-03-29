<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>admin Book List</title>

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
	<div class="col-lg-9 row" style="margin-top: 10%;">
		<div class="panel panel-default">
			<div class="panel-heading" style="text-align: left;">�������</div>
			<div class="panel-body" style="text-align: left;">
			<div class="col-lg-2"></div>
				<div>
					<table class="col-lg-12 table table-hover">
						<thead>
							<tr>
								<th class="col-lg-1">#</th>
								<th class="col-lg-2">�����̸�</th>
								<th class="col-lg-1">�۰�</th>
								<th class="col-lg-1">���ǻ�</th>
								<th class="col-lg-1">ī�װ�</th>
								<th class="col-lg-1">�帣</th>
								<th class="col-lg-1">�Ҽӵ�����</th>
								<th class="col-lg-1">���� ��ġ</th>
								<th class="col-lg-1">�뿩����</th>
								<th class="col-lg-1">ù �뿩��</th>
								<th class="col-lg-1">����Ƚ��</th>
								<th class="col-lg-2">�뿩�ϼ�</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="adminBooksList" varStatus="status" items="${adminBooksList}">
								<tr>
									<td class="col-lg-1">${status.count}</td>
									<td class="col-lg-2">${adminBooksList.BOOKNAME}</td>
									<td class="col-lg-1">${adminBooksList.WRITER}</td>
									<td class="col-lg-1">${adminBooksList.PUBLISHER}</td>
									<td class="col-lg-1">${adminBooksList.CATEGORY}</td>
									<td class="col-lg-1">${adminBooksList.GENRE}</td>
									<td class="col-lg-1">${adminBooksList.LIBNAME}</td>
									<td class="col-lg-1">${adminBooksList.BOOKLOCATION}</td>
									<td class="col-lg-1">${adminBooksList.CURRENTSTATUS}</td>
									<td class="col-lg-1">${adminBooksList.FIRSTRENTALDAY}</td>
									<td class="col-lg-1">${adminBooksList.RENTALCOUNT}</td>
									<td class="col-lg-2">${adminBooksList.RENTALDAYS}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
			
</body>
</html>