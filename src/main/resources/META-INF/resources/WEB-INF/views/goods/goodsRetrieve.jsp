<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" 
    prefix="form"%>
<link href="css/commonCss.css" rel="stylesheet" type="text/css">
    <style type="text/css">
    
    	.goodBox>img {
    		width: 300px;
    		height: 300px;
    		margin-bottom: 20px;
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
			   <h6>
		        	<span class="fw-bold">판매자:</span>  
		        	${goodsRetrieve.userid}
		       </h6>
	       	   <h6>
		      		<span class="fw-bold ">상품명:</span>
		       		${goodsRetrieve.gName}
		       </h6>
	       	   <h6>
		      		<span class="fw-bold ">가격:</span>
		       		${goodsRetrieve.gPrice}
		       </h6>
		       
		       <button id="buy" type="button" class="btn btn-primary mt-3">채팅하기</button>
		       <button type="submit" class="btn btn-primary mt-3">찜</button>
    	</div>
	  </div>
	</form:form>
</div>