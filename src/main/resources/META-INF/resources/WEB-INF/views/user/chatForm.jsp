<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link href="css/commonCss.css" rel="stylesheet" type="text/css">
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Jacquard+12+Charted&family=Jua&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap"
	rel="stylesheet">
<style>
.chat {
	font-family: "Jua", sans-serif;
	font-weight: 400;
	font-style: normal;
}

.user {
	width: 45px;
	height: 35px;
	padding: 0;
	margin: 0;
	border: none;
	background-color: #FFEB5A;
	border-radius: 30px;
}

.mod {
	border: 1px solid black;
	width: 100%;
	height: 30px;
	background-color: #FFFFFF;
}

.cBox {
	position: relative;
	height: 560px;
}

[contenteditable=true]:empty:before {
	content: attr(placeholder);
	display: block; /* For Firefox */
}

div[contenteditable=true] {
	border: 1px solid black;
	color: #333;
	font-size: 12px;
	width: 100%;
	padding: 5px;
	position: absolute;
	bottom: 0;
	left: 0;
}
</style>

<div class="chat">
	<div class="cBox">
		<div class="">
			<img src="images/des/user.png" alt="사용자" class="user">
			<div class="card" style="float: left; width: 10rem; height: 2rem;">
				<p>wndjs</p>
			</div>
		</div>

		<div contenteditable="true" placeholder="여기에 채팅을 쳐주세요."></div>
	</div>
</div>