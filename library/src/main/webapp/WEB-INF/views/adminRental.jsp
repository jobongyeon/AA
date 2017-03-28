<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>admin Rental</title>
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

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  

<script type="text/javascript">
	$(function() {
		$("#testDatepicker").datepicker({});
	});
</script>
<!-- �뿩��¥ ����Ʈ���� �����ִ� ���Ҹ� -->
<script type="text/javascript">
function RentalDate () {
	var RentalDay = new Date();
	var RentalMonth = RentalDay.getMonth()+1;
	var RentalDate = RentalDay.getDate();
	if ( RentalMonth < 10) RentalMonth = "0"+RentalMonth;
	if ( RentalDate < 10) RentalDate = "0"+RentalDate;
	document.getElementById("RentalDate").value = RentalDay.getFullYear()+"��"+RentalMonth+"��"+RentalDate+"��";
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
<!-- �ݳ���¥  ����Ʈ���� �����ִ� ���Ҹ� -->
<script type="text/javascript">
function returnExpectDate() {
	var day = new Date();
	var month = day.getMonth()+1;
	var date = day.getDate()+5;
	if ( month < 10) month = "0"+month;
	if ( date < 10) date = "0"+date;
	document.getElementById("returnExpectDate").value = day.getFullYear()+"��"+month+"��"+date+"��";
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
	$("#BOOKCODE").change(function() {					//���� �ڵ� �� ������ �̺�Ʈ �߻�
		console.log("�������� �׽�Ʈ")
		$.ajax({
			url : "/lib/adminBookInfo",					//���
			data : {"BOOKCODE" : $("#BOOKCODE").val()},	//����� ������
			dataType 	: "json",						//��ŵǼ� �� ������Ÿ��
			type 		: "post",						//���۹��
			success 	: function(data) {
				console.log("���� ���� ��ż���")					//log
				$(ReturnBookInfo).empty();				//������ ��ȸ�ø��� �±׳��� �ʱ�ȭ
				$(ReturnBookInfo).append(
					'<div class="col-lg-12 form-group" style="color: gray;">'
					+'�����̸� :'
					+'<input class="form-control"'
					+'type="text" value="'+data.bookname+'"'
					+'readonly="readonly"/>'
					+'</div>'
					+'<div class="col-lg-12 form-group" style="color: gray;">'
					+'���� : '
					+'<input class="form-control"'
					+'type="text" value="'+data.writer+'"'
					+'readonly="readonly"/>'
					+'</div>'
					+'<div class="col-lg-12 form-group" style="color: gray;">'
					+'�帣 : '
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
	$("#MEMBERID").change(function() {					//���� �ڵ� �� ������ �̺�Ʈ �߻�
		console.log("�������� �׽�Ʈ")
		$.ajax({
			url : "/lib/memberRentalInfo",				//���
			data : {"MEMBERID" : $("#MEMBERID").val()},	//����� ������
			dataType 	: "json",						//��ŵǼ� �� ������Ÿ��
			type 		: "post",						//���۹��
			success 	: function(data) {
				console.log("ȸ�� ���� ��ż���")				//log
				$(ReturnMemberInfo).empty();			//������ ��ȸ�ø��� �±׳��� �ʱ�ȭ
				$(ReturnMemberInfo).append(
					'<div class="col-lg-12 form-group" style="color: gray;">'
					+'ȸ���̸� :'
					+'<input class="form-control"'
					+'type="text" value="'+data.membername+'"'
					+'readonly="readonly"/>'
					+'</div>'
					+'<div class="col-lg-12 form-group" style="color: gray;">'
					+'ȸ����ȣ : '
					+'<input class="form-control"'
					+'type="text" value="'+data.memberphone+'"'
					+'readonly="readonly"/>'
					+'</div>'
					+'<div class="col-lg-12 form-group" style="color: gray;">'
					+'ȸ���ּ� : '
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

<!-- ��ܰ��ι� -->
<%@include file="/WEB-INF/views/adminModule/adminHeadBar.jsp" %>

<!-- ���̵�� -->
<%@include file="/WEB-INF/views/adminModule/adminRentalAndReturn.jsp" %>

	<!-- �����ֱ� -->
	<div class="col-lg-3"></div>
	
	<!-- ���� -->
	<div class="col-lg-7 row" style="margin-top: 10%;">
		<div class="panel panel-default">
			<div class="panel-heading" style="text-align: left;">�����뿩</div>
			<div class="panel-body" style="text-align: left;">
				<div class="col-lg-3">
					<img src="/resources/img/bookmark.ico">
				</div>
				<div class="col-lg-1"></div>
				<div>
					<form action="/lib/adminRental" method="post">
					
						<fieldset class="col-lg-4">
							<legend style="color: gray;">Rental</legend>
							
							<!-- �����ڵ� -->
							<div class="col-lg-12 form-group" style="color: gray;">
								*�����ڵ� :
								<input class="form-control" id="BOOKCODE" name="BOOKCODE" placeholder="�����ڵ带 �Է��ϼ���" type="text" required>
							</div>
							
							<!-- �뿩�� -->
							<div class="col-lg-12 form-group" style="color: gray;">
								�뿩�� :
								<input id="RentalDate" class="form-control" readonly="readonly" placeholder="�뿩���� �����ϼ���" type="text" required>
							</div>
							
							<!-- �ݳ������� -->
							<div class="col-lg-12 form-group" style="color: gray;">
								�ݳ������� :
								<input id="returnExpectDate" class="form-control" readonly="readonly" placeholder="�ݳ��������� �����ϼ���" type="text" required>
							</div>
							
							<!-- ���� -->
							<hr class="w3-border-grey" style="width: 100%">
							
							<!-- ȸ������ -->
							<div class="col-lg-12 form-group" style="color: gray;">
								*ȸ��ID : <br />
								<input class="form-control" id="MEMBERID" name="MEMBERID" placeholder="ȸ��ID�� �Է��ϼ���" type="text" required>
								<!-- ���� / �ĺ� ���� : 
								<input type="radio" >����
								<input type="radio" >�ĺ� -->
								
								<!-- ���� -->
								<div class="col-lg-12 form-group" style="color: gray;"></div>
								
								<!-- �޷¿��� ������ ��¥ ���ڿ� ��� -->
								*������<br />
								<input type="text" id="testDatepicker" name="PAYMENTDAY">
								
								<!-- �Ϲ�ȸ�� / ��ȸ�� -->
								<br />*�Ϲ�ȸ�� / ��ȸ�� ���� : <br />
								<input type="radio" value="1500" name="PAYMENTPRICE">�Ϲ�ȸ��
								<input type="radio" value="1000" name="PAYMENTPRICE">��ȸ��
								<!-- ���� -->
								<div class="col-lg-12 form-group" style="color: gray;"></div>
								<!-- ��ư -->
								<input class="btn pull-right" type="submit" value="�뿩" style="color: black;"/>
								
							</div>
						</fieldset>
						
						<!-- ajax��ȸ������ �� �ʵ�� -->
						<fieldset class="col-lg-4">
							<legend style="color: gray;">Info</legend>
							
							<!-- �������� -->
							<div id="ReturnBookInfo" class="col-lg-12 form-group" style="color: gray;">
							</div>
							
							<!-- ȸ������ -->
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