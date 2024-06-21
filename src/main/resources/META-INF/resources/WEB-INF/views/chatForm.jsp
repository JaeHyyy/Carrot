<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인홈페이지</title>
<style type="text/css">
    .App {
	  text-align: center;
	  font-size: 16px;
	}
	
    label, input, button {
    margin: 10px;
    padding: 5px;
    }

	footer {
	    bottom: 0;
	    position: absolute;
	    width: 90%;
	    height: 40px;
	}
 </style>
<link rel="stylesheet"  href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" >
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script>
	// APP 윈도우 크기로 맞춰보기
	$(document).ready(function(){
		let ww = $(window).width();
		let wh = $(window).height();
		
		$('.App').css({
			/* width: ww, 
			height: wh,  */
			backgroundColor: 'beige',
			});
	});
</script>

</head>
<body>
 <div class="App">
	<jsp:include page="common/top.jsp" flush="true" /><br>
	<%-- <jsp:include page="common/menu.jsp" flush="true"/> --%>
	<jsp:include page="user/chatForm.jsp" flush="true" />
 </div>
</body>
</html>