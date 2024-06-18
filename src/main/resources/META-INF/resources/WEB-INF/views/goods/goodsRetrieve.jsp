<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    ${goodsRetrieve}
<div class="container">
	<form class="row g-3 m-4">
	  <div class="row">    
		<div class="card" style="width:25rem;">
		  <img src="images/items/${goodsRetrieve.gImage}.png" class="card-img-top" alt="...">
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
		    <a href="#" class="btn btn-primary mt-3">찜</a>
		  </div>
		</div>
	   
	  </div>
	</form>
</div>