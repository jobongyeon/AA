<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>관리자 페이지</title>
<!-- 부트스트랩/css -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 부트스트랩/css -->
<style>
.bgimg {
	background-image: url('/resources/img/book.jpg');
	min-height: 100%;
	background-position: center;
	background-size: cover;
}
</style>
</head>
<body>
<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
	<div class="container" style="margin-top: 200px; color: gray;">
		<h2 style="text-align: center;">관리자 / 도서관관리자 로그인</h2>
		<br /><br /><br />
	</div>
	<div class="container">
		<div class="row" style="margin-left: 200px;">
			<div class="col-md-4">
				<img src="/resources/img/1485117303_icon-31-book-bookmark.ico" style="margin-left: 50px; margin-top: -40px;">
			</div>
			<div class="col-md-8">
				<form action="/lib/adminLogin" method="post">
					<div class="row">
						<div class="col-sm-6 form-group" style="margin-top: -10px;">
							<input class="form-control" id="ADMINID" name="ADMINID" placeholder="id를 입력하세요" type="text" required>
						</div>
						<br /><br /><br />
						<div class="col-sm-6 form-group" style="margin-top: -20px;">
							<input class="form-control" id="ADMINPW" name="ADMINPW" placeholder="password를 입력하세요" type="password" required>
						</div>
						<div class="col-md-6 form-group" style="margin-right: 100px;">
							<input class="btn pull-right" type="submit" value="로그인">
						</div>
					</div>
				</form>
				<br>
			</div>
		</div>
	</div>
</div>
</body>
</html>