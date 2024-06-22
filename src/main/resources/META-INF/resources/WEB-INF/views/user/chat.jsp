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
.cBox {
	display: flex;
	flex-direction: column; 
	justify-content : center;
	align-items: center;
}

#chat {
	border: 1px solid #ccc;
	padding: 10px;
	width: 300px;
	height: 200px;
	overflow-y: scroll;
}

.sBox {
	display: flex;
	justify-content : center;
	align-items: center;
}

#message {
	width: 240px;
}
</style>

<script>
	$(document).ready(function() {
		var websocket = new WebSocket("ws://localhost:8090/carrot/chatForm");

		websocket.onopen = function() {
			console.log("WebSocket connection opened");
		};
		
		websocket.onerror = function(event) {
			console.error("WebSocket error observed:", event);
		};

		websocket.onclose = function(event) {
			console.log("WebSocket connection closed:", event);
		};
		
		websocket.onmessage = function(event) {
			$('#chat').append('<div>' + event.data + '</div>');
		};

		$('#send').click(function() {
			var message = $('#message').val();
			if (message) {
				websocket.send(message);
				$('#message').val('');
			}
		});
	});
</script>

<div class="cBox">
	<div id="chat"></div>
	<div class="sBox">
		<input type="text" id="message" placeholder="메세지를 입력하세요" />
		<button id="send" class="btn btn-warning">Send</button>
	</div>
</div>


