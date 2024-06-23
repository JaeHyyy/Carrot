<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="css/commonCss.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css2?family=Jacquard+12+Charted&family=Jua&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">
<style type="text/css">
	.row {
		display: flex;
		justify-content: center;
		align-items: center;
		font-family: "Jua", sans-serif;
	  	font-weight: 400;
	  	font-style: normal;
	}
	
	.btn {
		margin-top: 20px;
	}

	.goodBox {
		width: 300px;
		height: 370px;
		margin-right: 35px;
	}
	
	.gImage {
		width: 300px;
    	height: 300px;
    	margin-left: -12px;
	}
</style>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
    <c:when test="${not empty searchGoods}">
        <div class="row">
            <c:forEach var="dto" items="${searchGoods}">
         
            	<div class="goodBox">
    				<a href="goodsRetrieve?gCode=${dto.gCode}"> 
						<img src="static/images/items/${dto.gImage}" width="200" class="gImage">
						<button class="btn btn btn-warning">상품 상세</button>
					</a>
    			</div>
            
            </c:forEach>
        </div>
    </c:when>
    <c:otherwise>
        <div class="alert alert-warning" role="alert">
            일치하는 검색 결과가 없습니다.
        </div>
        <meta http-equiv="refresh" content="2;url=http://localhost:8090/carrot/main"/>
    </c:otherwise>
</c:choose>