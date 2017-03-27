<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<nav class="w3-sidenav w3-collapse w3-white w3-animate-left" style="margin-left: 10%;margin-top: 5%;" id="mySidenav">
		<br>
		<div class="w3-container">
			<a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding"	title="close menu">
				<i class="fa fa-remove"></i>
			</a> 
			<br><br>
			<h4 class="w3-padding-0">
				<b>도서관리</b>
			</h4>
		</div>
		<a href="/lib/adminBook" onclick="w3_close()" class="w3-padding w3-text-teal">
			<i class="fa fa-th-large fa-fw w3-margin-right"></i>
			도서등록
		</a>
		<a href="/lib/adminBookDelete" onclick="w3_close()" class="w3-padding w3-text-teal">
			<i class="fa fa-th-large fa-fw w3-margin-right"></i>
			도서폐기
		</a>
	</nav>
</html>