<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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
	background-image: url('/resources/img/도서관회원가입페이지.jpg');
	min-height: 100%;
	background-position: center;
	background-size: cover;
}
</style>
<title>회원가입페이지</title>
</head>
<body>
	<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
	
		<!-- 상단텍스트 -->
		<div class="w3-display-topleft w3-padding-large w3-xlarge" style="color: black">전주영어도서관</div>
		
			<!-- 본문  -->
			<div class="w3-display-middle w3-light-grey w3-padding-xlarge w3-padding-32 w3-margin-top">
			
				<h3 class="w3-center">회원가입</h3>
				
				<!-- 라인 -->
				<hr>
				
				<p style="text-align: center;">다음 여섯가지 사항을 입력해 주십시오. <br/>입력 후 계좌로 회비 입금시 회원등급으로 승인이 됩니다.</p>
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<form action="/lib/memberAdd" method="post">
					
						<!-- 아이디 -->
						<div class="form-group col-md-8">
							<label>아이디 :</label>
							<input type="text" class="form-control" id="MEMBERID" name="MEMBERID">
						</div>
						
						<div class="form-group col-md-2">
							<label>&nbsp;</label>
							<input type="button" class="btn" value="중복확인"/>
						</div>
						
						<!-- 패스워드 -->
						<div class="form-group col-md-12">
							<label>패스워드 :</label>
							<input type="password" class="form-control" id="MEMBERPW" name="MEMBERPW">
						</div>
						
						<!-- 이름 -->
						<div class="form-group col-md-12">
							<label>이름 :</label>
							<input type="text" class="form-control" id="MEMBERNAME" name="MEMBERNAME">
						</div>
						
						<!-- 생년월일 -->
						<div class="form-group col-md-12">
							<label>생년월일 :</label>
							<input type="text" class="form-control" id="MEMBERBIRTHDAY" name="MEMBERBIRTHDAY">
						</div>
						
						<!-- 전화번호 -->
						<div class="form-group col-md-12">
							<label>전화번호 :</label>
							<input type="text" class="form-control" id="MEMBERPHONE" name="MEMBERPHONE">
						</div>
						
						<!-- 주소 -->
						<div class="form-group col-md-12">
							<label>주소 :</label>
							<input type="text" class="form-control" id="MEMBERADDR" name="MEMBERADDR">
							<!-- <input type="button" value="주소확인" style="margin-left: 521px;"/> -->
						</div>
						
						<div class="form-group col-md-12"> 
							도서관선택 : 
							<select class="form-control" id="LIBCODE" name="LIBCODE">
								<c:forEach var="l" items="${list }">
									<option value="${l.LIBCODE}">${l.LIBNAME}</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group col-md-12"> 
							<input type="submit" value="회원가입" class="w3-btn w3-padding-12 w3-dark-grey" style="float: right;">
						</div>
					</form>
				</div>
				<br/>
			</div>
		</div>
		<div class="w3-display-bottomleft w3-padding-large"	style="color: black">
			Made by 
			<a href="/lib/adminLogin" target="_blank" style="color: black"> 
				JBY
			</a>
		</div>

</body>
</html>