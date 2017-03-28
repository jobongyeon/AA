<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>admin Rental</title>
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

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  

<script type="text/javascript">
	$(function() {
		$("#testDatepicker").datepicker({});
	});
</script>
<!-- 대여날짜 프론트에서 보여주는 역할만 -->
<script type="text/javascript">
function RentalDate () {
	var RentalDay = new Date();
	var RentalMonth = RentalDay.getMonth()+1;
	var RentalDate = RentalDay.getDate();
	if ( RentalMonth < 10) RentalMonth = "0"+RentalMonth;
	if ( RentalDate < 10) RentalDate = "0"+RentalDate;
	document.getElementById("RentalDate").value = RentalDay.getFullYear()+"년"+RentalMonth+"월"+RentalDate+"일";
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
<!-- 반납날짜  프론트에서 보여주는 역할만 -->
<script type="text/javascript">
function returnExpectDate() {
	var day = new Date();
	var month = day.getMonth()+1;
	var date = day.getDate()+5;
	if ( month < 10) month = "0"+month;
	if ( date < 10) date = "0"+date;
	document.getElementById("returnExpectDate").value = day.getFullYear()+"년"+month+"월"+date+"일";
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
<script>
$(document).ready(function() {
	$("#BOOKCODE").change(function() {					//도서 코드 값 변동시 이벤트 발생
		console.log("제이쿼리 테스트")
		$.ajax({
			url : "/lib/adminBookInfo",					//경로
			data : {"BOOKCODE" : $("#BOOKCODE").val()},	//통신할 데이터
			dataType 	: "json",						//통신되서 올 데이터타입
			type 		: "post",						//전송방법
			success 	: function(data) {
				console.log("도서 정보 통신성공")					//log
				$(ReturnBookInfo).empty();				//데이터 조회시마다 태그내용 초기화
				$(ReturnBookInfo).append(
					'<div class="col-lg-12 form-group" style="color: gray;">'
					+'도서이름 :'
					+'<input class="form-control"'
					+'type="text" value="'+data.bookname+'"'
					+'readonly="readonly"/>'
					+'</div>'
					+'<div class="col-lg-12 form-group" style="color: gray;">'
					+'저자 : '
					+'<input class="form-control"'
					+'type="text" value="'+data.writer+'"'
					+'readonly="readonly"/>'
					+'</div>'
					+'<div class="col-lg-12 form-group" style="color: gray;">'
					+'장르 : '
					+'<input class="form-control"'
					+'type="text" value="'+data.genre+'"'
					+'readonly="readonly"/>'
					+'</div>'
					+'<hr class="w3-border-grey" style="width: 100%">'
				);
			}
		})
	});
	
});
</script>
<script>
$(document).ready(function() {
	$("#MEMBERID").change(function() {					//도서 코드 값 변동시 이벤트 발생
		console.log("제이쿼리 테스트")
		$.ajax({
			url : "/lib/memberRentalInfo",				//경로
			data : {"MEMBERID" : $("#MEMBERID").val()},	//통신할 데이터
			dataType 	: "json",						//통신되서 올 데이터타입
			type 		: "post",						//전송방법
			success 	: function(data) {
				console.log("회원 정보 통신성공")				//log
				$(ReturnMemberInfo).empty();			//데이터 조회시마다 태그내용 초기화
				$(ReturnMemberInfo).append(
					'<div class="col-lg-12 form-group" style="color: gray;">'
					+'회원이름 :'
					+'<input class="form-control"'
					+'type="text" value="'+data.membername+'"'
					+'readonly="readonly"/>'
					+'</div>'
					+'<div class="col-lg-12 form-group" style="color: gray;">'
					+'회원번호 : '
					+'<input class="form-control"'
					+'type="text" value="'+data.memberphone+'"'
					+'readonly="readonly"/>'
					+'</div>'
					+'<div class="col-lg-12 form-group" style="color: gray;">'
					+'회원주소 : '
					+'<textarea class="form-control"'
					+'readonly="readonly">'+data.memberaddr
					+'</textarea>'
				);
			}
		})
	});
	
});
</script>
<!-- css -->
<link rel="stylesheet" type="text/css" href="/resources/css/adminHome.css">
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<!-- 상단가로바 -->
<%@include file="/WEB-INF/views/adminModule/adminHeadBar.jsp" %>

<!-- 사이드바 -->
<%@include file="/WEB-INF/views/adminModule/adminRentalAndReturn.jsp" %>

	<!-- 공백주기 -->
	<div class="col-lg-3"></div>
	
	<!-- 본문 -->
	<div class="col-lg-7 row" style="margin-top: 10%;">
		<div class="panel panel-default">
			<div class="panel-heading" style="text-align: left;">도서대여</div>
			<div class="panel-body" style="text-align: left;">
				<div class="col-lg-3">
					<img src="/resources/img/bookmark.ico">
				</div>
				<div class="col-lg-1"></div>
				<div>
					<form action="/lib/adminRental" method="post">
					
						<fieldset class="col-lg-4">
							<legend style="color: gray;">Rental</legend>
							
							<!-- 도서코드 -->
							<div class="col-lg-12 form-group" style="color: gray;">
								*도서코드 :
								<input class="form-control" id="BOOKCODE" name="BOOKCODE" placeholder="도서코드를 입력하세요" type="text" required>
							</div>
							
							<!-- 대여일 -->
							<div class="col-lg-12 form-group" style="color: gray;">
								대여일 :
								<input id="RentalDate" class="form-control" readonly="readonly" placeholder="대여일을 선택하세요" type="text" required>
							</div>
							
							<!-- 반납예정일 -->
							<div class="col-lg-12 form-group" style="color: gray;">
								반납예정일 :
								<input id="returnExpectDate" class="form-control" readonly="readonly" placeholder="반납예정일을 선택하세요" type="text" required>
							</div>
							
							<!-- 라인 -->
							<hr class="w3-border-grey" style="width: 100%">
							
							<!-- 회원정보 -->
							<div class="col-lg-12 form-group" style="color: gray;">
								*회원ID : <br />
								<input class="form-control" id="MEMBERID" name="MEMBERID" placeholder="회원ID를 입력하세요" type="text" required>
								<!-- 선불 / 후불 선택 : 
								<input type="radio" >선불
								<input type="radio" >후불 -->
								
								<!-- 공백 -->
								<div class="col-lg-12 form-group" style="color: gray;"></div>
								
								<!-- 달력에서 선택한 날짜 문자열 출력 -->
								*결제일<br />
								<input type="text" id="testDatepicker" name="PAYMENTDAY">
								
								<!-- 일반회원 / 정회원 -->
								<br />*일반회원 / 정회원 선택 : <br />
								<input type="radio" value="1500" name="PAYMENTPRICE">일반회원
								<input type="radio" value="1000" name="PAYMENTPRICE">정회원
								<!-- 공백 -->
								<div class="col-lg-12 form-group" style="color: gray;"></div>
								<!-- 버튼 -->
								<input class="btn pull-right" type="submit" value="대여" style="color: black;"/>
								
							</div>
						</fieldset>
						
						<!-- ajax조회데이터 들어갈 필드셋 -->
						<fieldset class="col-lg-4">
							<legend style="color: gray;">Info</legend>
							
							<!-- 도서정보 -->
							<div id="ReturnBookInfo" class="col-lg-12 form-group" style="color: gray;">
							</div>
							
							<!-- 회원정보 -->
							<div id="ReturnMemberInfo" class="col-lg-12 form-group" style="color: gray;">
							</div>
							
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>