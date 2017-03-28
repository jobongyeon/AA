<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>admin Library Insert</title>
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
<!-- css -->
<link rel="stylesheet" type="text/css" href="/resources/css/adminHome.css">

</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<!-- 상단가로바 -->
<%@include file="/WEB-INF/views/adminModule/adminHeadBar.jsp" %>

<!-- 사이드바 -->
<%@include file="/WEB-INF/views/adminModule/adminLibrarySideBar.jsp" %>

	<!-- 공백주기 -->
	<div class="col-lg-3"></div>
	
	<!-- 본문 -->
	<div class="col-lg-7 row" style="margin-top: 10%;">
		<div class="panel panel-default">
			<div class="panel-heading" style="text-align: left;">도서관등록</div>
			<div class="panel-body" style="text-align: left;">
				<div class="col-lg-3">
					<img src="/resources/img/bookmark.ico">
				</div>
				<div class="col-lg-2"></div>
				<div>
					<form action="/lib/adminLibraryInsert" method="post">
					
						<fieldset class="col-lg-5">
							<legend style="color: gray;">Add</legend>
							
							<!-- 도서관 이름 -->
							<div class="col-lg-12 form-group" style="color: gray;">
								도서관 이름 : 
								<input name="LIBNAME" class="form-control" placeholder="도서관이름을 입력하세요" type="text" required>
							</div>
							
							<!-- 도서관 위치 -->
							<div class="col-lg-12 form-group" style="color: gray;">
								도서관 위치 : 
								<input name="LIBLOCATION" class="form-control" placeholder="도서관위치를 입력하세요" type="text" required>
							</div>
							
							<div class="col-lg-12 form-group">
								<input class="btn pull-right" type="submit" value="도서등록" style="color: black;">
							</div>
						</fieldset>
						
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
	