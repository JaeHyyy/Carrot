<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="css/commonCss.css" rel="stylesheet" type="text/css">
<style type="text/css">
	.goodsHeader{
		width: 300px;
		font-size: 30px;
		font-weight: 900;
	}
	
	.test {
		position: relative;
	}
	
	.goodBox {
		background: rgba( 255, 255, 255, 0.15 );
		backdrop-filter: blur( 4.5px );
		box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
		border: 1px solid rgba( 255, 255, 255, 0.18 );
		width: 280px;
		height: 320px;
		margin: 25px;
		border-radius: 10px;
	}
	
	.goodBox:hover {
		transform:scale(1.1); 
	}
	
	.gImage {
		border-radius: 10px;
	}
	
</style>
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<div class="container">
	<MARQUEE class="goodsHeader">중고거래 인기매물&nbsp&nbsp&nbsp&nbsp&nbsp중고거래 인기매물</MARQUEE>
  <div class="row">
    <c:forEach var="dto" items="${goodsList}">
    	<div class="goodBox">
    		<a href="goodsRetrieve?gCode=${dto.gCode}"> 
				<img src="static/images/items/${dto.gImage}" width="200" class="gImage">
			</a>
				<div class="mt-4 fs-6">${dto.gName}</div>
	       		<div class="mt-2 fs-6">${dto.gContent}</div>
	       		<div class="mt-2 fs-6">${dto.gPrice}</div>
    	</div>
    </c:forEach>
  </div>
</div>