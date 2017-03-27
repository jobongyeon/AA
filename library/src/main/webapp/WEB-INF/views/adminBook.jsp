<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>admin Book Insert</title>

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
<%@include file="/WEB-INF/views/adminModule/adminBookSideBar.jsp" %>

	<!-- 공백주기 -->
	<div class="col-lg-3"></div>
	
	<!-- 본문 -->
	<div class="col-lg-7 row" style="margin-top: 10%;">
		<div class="panel panel-default">
			<div class="panel-heading" style="text-align: left;">도서등록</div>
			<div class="panel-body" style="text-align: left;">
				<div class="col-lg-3">
					<img src="/resources/img/bookmark.ico">
				</div>
				<div class="col-lg-2"></div>
				<div>
					<form action="/lib/adminBook" method="post">
						
						<fieldset class="col-lg-6">
							<legend style="color: gray;">Add</legend>
							<!-- 도서이름 -->
							<div class="col-lg-12 form-group" style="color: gray;">
								도서명 :
								<input name="BOOKNAME" class="form-control" placeholder="도서명을 입력하세요" type="text" required>
							</div>
							
							<!-- 작가이름 -->
							<div class="col-lg-12 form-group" style="color: gray;">
								저자명 :
								<input name="WRITER" class="form-control" placeholder="저자명을 입력하세요" type="text" required>
							</div>
							
							<!-- 출판사이름 -->
							<div class="col-lg-12 form-group" style="color: gray;">
								출판사 :
								<input name="PUBLISHER" class="form-control" placeholder="출판사를 입력하세요" type="text" required>
							</div>
							
							<!-- 분류 -->
							<div class="col-lg-12 form-group" style="color: gray;">
								분류 :
								<input name="CATEGORY" class="form-control" placeholder="분류를 입력하세요" type="text" required>
							</div>
							
							<!-- 장르 -->
							<div class="col-lg-12 form-group" style="color: gray;">
								장르 :
								<input name="GENRE" class="form-control" placeholder="장르를 입력하세요" type="text" required>
							</div>
							
							<!-- 도서위치 -->
							<div class="col-lg-12 form-group" style="color: gray;">
								도서위치 :
								<input name="BOOKLOCATION" class="form-control" placeholder="도서위치를 입력하세요" type="text" required>
							</div>
							
							<!-- 도서관선택 -->
							<div class="container col-lg-12" style="color: gray;"> 
								도서관선택 : 
								<select id="LIBCODE" name="LIBCODE" class="form-control"> 
									<c:forEach var="l" items="${list }">
										<option value="${l.LIBCODE}">${l.LIBNAME}</option>
									</c:forEach>
								</select>
							</div>
							
							<!-- 등록버튼과 여백 -->
							<div class="col-lg-12 form-group"></div>
							
							<!-- 등록버튼 -->
							<div class="col-lg-12 form-group">
								<input type="submit" value="도서등록" class="btn pull-right" style="color: black;">
							</div>
							
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
	