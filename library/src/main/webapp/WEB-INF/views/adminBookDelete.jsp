<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>admin Book Delete</title>
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
			<div class="panel-heading" style="text-align: left;">도서폐기</div>
			<div class="panel-body" style="text-align: left;">
				<div class="col-lg-3">
					<img src="/resources/img/bookmark.ico">
				</div>
				<div class="col-lg-2"></div>
				<div>
					<form action="/lib/adminBookDelete" method="post">
					
						<fieldset class="col-lg-5">
							<legend>Delete</legend>
							
							<!-- 도서코드 -->
							<div class="col-lg-12 form-group" style="color: gray;">
								도서코드 :
								<input class="form-control" id="BOOKCODE" name="BOOKCODE" placeholder="도서코드를 입력하세요" type="text" required/>
							</div>
							
							<!-- 조회정보 -->
							<div id="ReturnBookInfo"></div>
							
							<!-- 폐기사유 -->
							<div class="col-lg-12 form-group" style="color: gray;">
								폐기사유 :
								<input class="form-control" name="DISCARDREASON" placeholder="사유를 입력하세요" type="text" required/>
							</div>
							
							<!-- 폐기버튼 -->
							<div class="col-lg-12 form-group">
								<input type="submit" value="도서폐기" class="btn pull-right" style="color: black;" />
							</div>
							
						</fieldset>
						
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
$(document).ready(function() {
	$("#BOOKCODE").change(function() {
		console.log("제이쿼리 테스트")
		$.ajax({
			url : "/lib/adminBookInfo",					//경로
			data : {"BOOKCODE" : $("#BOOKCODE").val()},	//통신할 데이터
			dataType 	: "json",						//통신되서 올 데이터타입
			type 		: "post",						//전송방법
			success 	: function(data) {
				console.log("통신성공")					//log
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
					+'출판사 : '
					+'<input class="form-control"'
					+'type="text" value="'+data.publisher+'"'
					+'readonly="readonly"/>'
					+'</div>'
					+'<div class="col-lg-12 form-group" style="color: gray;">'
					+'카테고리 : '
					+'<input class="form-control"'
					+'type="text" value="'+data.category+'"'
					+'readonly="readonly"/>'
					+'</div>'
					+'<div class="col-lg-12 form-group" style="color: gray;">'
					+'장르 : '
					+'<input class="form-control"'
					+'type="text" value="'+data.genre+'"'
					+'readonly="readonly"/>'
					+'</div>'
				);
			}
		})
	});
});
</script>
</html>