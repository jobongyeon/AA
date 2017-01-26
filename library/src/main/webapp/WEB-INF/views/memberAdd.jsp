<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
body, h1 {
	font-family: "Raleway", sans-serif
}

body, html {
	height: 100%
}

.bgimg {
	background-image: url('img/������ȸ������������.jpg');
	min-height: 100%;
	background-position: center;
	background-size: cover;
}
</style>
<title>ȸ������������</title>
</head>
<body>
	<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
		<div class="w3-display-topleft w3-padding-large w3-xlarge" style="color: black">���ֿ������</div>
		<div class="w3-white w3-margin">
			<div class="w3-display-middle">
				<div class="w3-light-grey w3-padding-xlarge w3-padding-32 w3-margin-top" id="contact">
					<h3 class="w3-center">ȸ������</h3>
					<hr>
					<p>���� �������� ������ �Է��� �ֽʽÿ�. �Է� �� ���·� ȸ�� �Աݽ� ȸ��������� ������ �˴ϴ�.</p>
					<form action="form.asp" target="_blank">
						<div class="form-group, col-md-12">
							<label for="usr">���̵� :</label>
							<input type="text" class="form-control">
							<!-- <input type="button" value="�ߺ�Ȯ��" style="margin-left: 521px;"/> -->
						</div>
						<div class="form-group, col-md-12">
							<label for="usr">�н����� :</label>
							<input type="text" class="form-control">
						</div>
						<div class="form-group, col-md-12">
							<label for="usr">�̸� :</label>
							<input type="text" class="form-control">
						</div>
						<div class="form-group, col-md-12">
							<label for="usr">������� :</label>
							<input type="text" class="form-control">
						</div>
						<div class="form-group, col-md-12">
							<label for="usr">�ּ� :</label>
							<input type="text" class="form-control">
							<!-- <input type="button" value="�ּ�Ȯ��" style="margin-left: 521px;"/> -->
						</div>
						<c:forEach var="l" items="${list}">
							<div class="container, col-md-12"> 
								���������� : 
								<select class="form-control"> 
									<option>${l.libName}</option>
								</select>
							</div>
						</c:forEach>
						<button type="submit" class="w3-btn  w3-padding-12 w3-dark-grey" style="margin-top: 20px; margin-left: 660px;">
							ȸ������
						</button>
					</form>
					<br/>
				</div>
			</div>
		</div>
		<div class="w3-display-bottomleft w3-padding-large"	style="color: black">
			Made by 
			<a href="http://www.w3schools.com/w3css/default.asp" target="_blank" style="color: black"> 
				JBY
			</a>
		</div>
	</div>
</body>
</html>