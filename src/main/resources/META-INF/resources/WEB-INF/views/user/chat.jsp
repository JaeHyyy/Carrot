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
	justify-content: center;
	align-items: center;
}

#chat {
	border: 1px solid #ccc;
	padding: 10px;
	width: 400px;
	height: 470px;
	overflow-y: scroll;
	margin-bottom: 10px;
	background-color: #f9f9f9;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.userN {
	/* height: 30px; */
	background-color: #FE7E35;
	margin-bottom: 20px;
	border-radius: 10px;
	/* font-size: 1.1rem; */
}

.sBox {
	display: flex;
	justify-content: center;
	align-items: center;
}

#message {
	width: 330px;
	margin-right: 10px;
}

.user-message {
	background-color: #e1ffc7;
	color: #333;
	margin: 5px 0;
	padding: 5px 10px;
	border-radius: 10px;
	max-width: 80%;
	align-self: flex-end;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
	text-align: left;
	margin-left: 80px;
}
</style>

<script>
$(document).ready(function() {
	//자동스크롤
    function appendMessage(message) {
        $('#chat').append('<div class="user-message">' + message + '</div>');
        $('#chat').scrollTop($('#chat')[0].scrollHeight);
    }
	
    //엔터로 보내기 13은 엔터 키코드
    $('#message').keypress(function(event) {
        if (event.keyCode === 13) {
            $('#send').click();
            event.preventDefault();
        }
    });
	
    //send 클릭이벤트
    $('#send').click(function() {
        var message = $('#message').val();
        if (message) {
            appendMessage(message);
            $('#message').val('');
        }
    });
});
</script>

<div class="cBox">
	<div id="chat">
		<div class="userN">
			wndjs님과의 대화
		</div>
	</div>
	<div class="sBox">
		<input type="text" id="message" placeholder="메세지를 입력하세요" class="form-control" />
		<button id="send" class="btn btn-warning">Send</button>
	</div>
</div>