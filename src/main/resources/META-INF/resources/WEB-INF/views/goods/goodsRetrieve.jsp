<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    ${goodsRetrieve}
<%@ taglib uri="http://www.springframework.org/tags/form" 
    prefix="form"%>
<div class="container">
	<form:form class="row g-3 m-4" modelAttribute="GoodsDTO" method="post">
	  <input type="hidden" name="gImage" value="${goodsRetrieve.gImage}">
	  <input type="hidden" name="userid" value="${goodsRetrieve.userid}">
	  <input type="hidden" name="gName" value="${goodsRetrieve.gName}">
	  <input type="hidden" name="gPrice" value="${goodsRetrieve.gPrice}">
	  <input type="hidden" name="gCategory" value="${goodsRetrieve.gCategory}">
	  <input type="hidden" name="gContent" value="${goodsRetrieve.gContent}">
	  <div class="row">    
		<div class="card" style="width:25rem;">
		  <img src="static/images/items/${goodsRetrieve.gImage}" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h6 class="card-title">
		        <span class="fw-bold">판매자:</span>  
		        ${goodsRetrieve.userid}</h6>
		    <h6 class="card-text">
		      <span class="fw-bold ">상품명:</span>
		       ${goodsRetrieve.gName}</h6>
		    <h6 class="card-text">
		      <span class="fw-bold ">가격:</span>
		       ${goodsRetrieve.gPrice}</h6>
		      
		    <a href="#" class="btn btn-primary mt-3">구매</a>
		    <button type="submit" class="btn btn-primary mt-3">찜</button>
		  </div>
		</div>
	   
	  </div>
	</form:form>
</div>