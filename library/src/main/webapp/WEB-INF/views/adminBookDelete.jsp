<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>admin Book Delete</title>
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
	
	<!-- ���� -->
	<div class="col-lg-7 row" style="margin-top: 10%;">
		<div class="panel panel-default">
			<div class="panel-heading" style="text-align: left;">�������</div>
			<div class="panel-body" style="text-align: left;">
				<div class="col-lg-3">
					<img src="/resources/img/bookmark.ico">
				</div>
				<div class="col-lg-2"></div>
				<div>
					<form action="/lib/adminBookDelete" method="post">
					
						<fieldset class="col-lg-5">
							<legend>Delete</legend>
							
							<!-- �����ڵ� -->
							<div class="col-lg-12 form-group" style="color: gray;">
								�����ڵ� :
								<input class="form-control" id="BOOKCODE" name="BOOKCODE" placeholder="�����ڵ带 �Է��ϼ���" type="text" required/>
							</div>
							
							<!-- ��ȸ���� -->
							<div id="ReturnBookInfo"></div>
							
							<!-- ������ -->
							<div class="col-lg-12 form-group" style="color: gray;">
								������ :
								<input class="form-control" name="DISCARDREASON" placeholder="������ �Է��ϼ���" type="text" required/>
							</div>
							
							<!-- ����ư -->
							<div class="col-lg-12 form-group">
								<input type="submit" value="�������" class="btn pull-right" style="color: black;" />
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
		console.log("�������� �׽�Ʈ")
		$.ajax({
			url : "/lib/adminBookInfo",					//���
			data : {"BOOKCODE" : $("#BOOKCODE").val()},	//����� ������
			dataType 	: "json",						//��ŵǼ� �� ������Ÿ��
			type 		: "post",						//���۹��
			success 	: function(data) {
				console.log("��ż���")					//log
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
					+'���ǻ� : '
					+'<input class="form-control"'
					+'type="text" value="'+data.publisher+'"'
					+'readonly="readonly"/>'
					+'</div>'
					+'<div class="col-lg-12 form-group" style="color: gray;">'
					+'ī�װ� : '
					+'<input class="form-control"'
					+'type="text" value="'+data.category+'"'
					+'readonly="readonly"/>'
					+'</div>'
					+'<div class="col-lg-12 form-group" style="color: gray;">'
					+'�帣 : '
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