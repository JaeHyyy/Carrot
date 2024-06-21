<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인홈페이지</title>
<link href="https://fonts.googleapis.com/css2?family=Jacquard+12+Charted&family=Jua&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">
<style type="text/css">
	body {
		background-color: beige;
	}
	
	* {
  	font-family: "Jua", sans-serif;
  	font-weight: 400;
  	font-style: normal;
	}

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
	$(document).ready(function(){
		let ww = $(window).width();
		let wh = $(window).height();
		
		$("body").css({
			width: ww, 
			height: wh,
			});
		
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
	<jsp:include page="goods/goodsList.jsp" flush="true" />
 </div>
</body>
</html>