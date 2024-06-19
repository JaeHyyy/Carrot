 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jQuery 설치 -->
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">

</script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="container">
    <form:form class="row g-3 m-4" modelAttribute="goodsDTO" method="post">
    
		  <div class="row mb-3">
		    <label for="gCode" class="col-sm-2 col-form-label">상품번호</label>
		    <div class="col-auto">
		      <form:input type="text" class="form-control" path="gCode" />
		    </div>
		  </div>
		  
		 <div class="row mb-3">
		    <label for="userid" class="col-sm-2 col-form-label">아이디</label>
		    <div class="col-auto">
		      <form:input type="text" class="form-control" path="userid" />
			</div>
		  </div>
		  
		  <div class="row mb-3">
		    <label for="gCategory" class="col-sm-2 col-form-label">카테고리</label>
		    <div class="col-auto">
		      <form:input type="text" class="form-control" path="gCategory" />
		    </div>
		  </div>
		  
		 <div class="row mb-3">
		    <label for="gName" class="col-sm-2 col-form-label">상품이름</label>
		    <div class="col-auto">
		      <form:input type="text" class="form-control" path="gName" />
			</div>
		  </div>
		  <div class="row mb-3">
		    <label for="gContent" class="col-sm-2 col-form-label">상품설명</label>
		    <div class="col-auto">
		      <form:input type="text" class="form-control" path="gContent" />
			</div>
		  </div>
		  
		  <div class="row mb-3">
		    <label for="gPrice" class="col-sm-2 col-form-label">가격</label>
		    <div class="col-auto">
		      <form:input type="text" class="form-control" path="gPrice" />
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="gImage" class="col-sm-2 col-form-label">이미지</label>
		    <div class="col-auto">
		      <form:input type="text" class="form-control" path="gImage" />
			</div>
		  </div>
		
		  <div class="col-12">
		    <button type="submit" class="btn btn-primary">등록</button>
		    <button type="reset" class="btn btn-primary">취소</button>
		  </div>
	</form:form>	  
</div>