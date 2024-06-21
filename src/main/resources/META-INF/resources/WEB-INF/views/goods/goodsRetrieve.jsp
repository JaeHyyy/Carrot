<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" 
    prefix="form"%>
    <link href="https://fonts.googleapis.com/css2?family=Jacquard+12+Charted&family=Jua&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">
<link href="css/commonCss.css" rel="stylesheet" type="text/css">
    <style type="text/css">
    
	    .container {
	  	font-family: "Jua", sans-serif;
	  	font-weight: 400;
	  	font-style: normal;
		}
		
		.ffon {
			font-size: 20px;
		}
    
    	.goodBox>img {
    		width: 300px;
    		height: 300px;
    		margin-bottom: 20px;
    	}
    	
    	.loveBox {
    		border: none;
    		background-color: beige;
    		margin-left: 5px;
    	}
    	
    	.lovee {
    		width: 30px;
    		height: 30px;
    		object-fit: contain;
    		margin-top: 17px;
    	}
    
    
    </style>
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>     
<script>
$(document).ready(function(){
    $('#buy').click(function(){
    	var gCode = "${dto.gCode}";
        window.location.href = "chatForm?gCode=" + gCode;
    });
});
</script>

<div class="container">
	<form:form class="row g-3 m-4" modelAttribute="GoodsDTO" method="post">
	  <input type="hidden" name="gImage" value="${goodsRetrieve.gImage}">
	  <input type="hidden" name="userid" value="${goodsRetrieve.userid}">
	  <input type="hidden" name="gName" value="${goodsRetrieve.gName}">
	  <input type="hidden" name="gPrice" value="${goodsRetrieve.gPrice}">
	  <input type="hidden" name="gCategory" value="${goodsRetrieve.gCategory}">
	  <input type="hidden" name="gContent" value="${goodsRetrieve.gContent}">
	  <div class="row">    
	  	<div class="goodBox">
    		 <img src="static/images/items/${goodsRetrieve.gImage}" alt="...">
			   <h4>
		        	<span class="fw-bold">판매자:</span>  
		        	${goodsRetrieve.userid}
		       </h4>
	       	   <h4>
		      		<span class="fw-bold ">상품명:</span>
		       		${goodsRetrieve.gName}
		       </h4>
	       	   <h4>
		      		<span class="fw-bold ">가격:</span>
		       		${goodsRetrieve.gPrice}
		       </h4>
		       
		       <button id="buy" type="button" class="btn btn-warning mt-3">채팅</button>
		       <button type="submit" class="btn btn-warning mt-3 ">찜하기</button>
    	</div>
	  </div>
	</form:form>
</div>