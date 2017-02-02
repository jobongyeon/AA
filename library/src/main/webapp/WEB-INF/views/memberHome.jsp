<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 부트스트랩/css -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<!-- 부트스트랩/css -->
<style>
body, h1 {
	font-family: "Raleway", sans-serif
}

body, html {
	height: 100%
}

.bgimg {
	background-image: url('/resources/img/도서관회원가입메인페이지.jpg');
	min-height: 100%;
	background-position: center;
	background-size: cover;
}

</style>
<title>회원메인페이지</title>
</head>
<body>
	<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
		<div class="w3-display-topleft w3-padding-large w3-xlarge">
			전주영어도서관
		</div>
		<div class="w3-display-middle" style="color:grey">
			<h1 class="w3-jumbo w3-animate-top" style="font-size: 5pt;">
				전주영어도서관
			</h1>
			<hr class="w3-border-grey" style="margin: auto; width: 40%">
			<p class="w3-large w3-center" style="text-align: left;">
				회원이 되시면 도서대여금액을 할인 받으실 수 있습니다. <br/><br/>
				회원이 되시려면 <br/>
				<br/>▷ 온라인으로 가입신청 
				<br/>▷ 연회비 : 7만원 
				<br/>▷ 온라인 계좌 : 농협	111111-111-111111
			</p>
			<div style="position: absolute; left: 305px; top: 330px;">
				<a href="/lib/memberAdd">
					<button class="w3-btn w3-padding-large w3-white w3-border w3-hover-border-black">
						<b style="color: grey">회원가입하기 >></b>
					</button>
				</a>
			</div>
		</div>
		<div class="w3-display-bottomleft w3-padding-large">
			Made by<a href="/lib/memberHome" target="_blank">JBY</a>
		</div>
	</div>
</body>
</html>