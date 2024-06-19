<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- searchGoodsForm.jsp -->
<form action="search" method="post">
    <input type="text" name="gName" />
    <button type="submit">검색</button>
</form>

<c:if test="${not empty searchGoods}">
    <ul>
        <c:forEach var="dto" items="${searchGoods}">
            <div class="col border border-dark m-4 w-80">
	      <a href="goodsRetrieve?gCode=${dto.gCode}"> 
			<img src="static/images/items/${dto.gImage}" width="200">
		  </a>
	       <div class="mt-4 fs-6">${dto.gName}</div>
	       <div class="mt-2 fs-6">${dto.gContent}</div>
	       <div class="mt-2 fs-6">${dto.gPrice}</div>
	    </div>
        </c:forEach>
    </ul>
</c:if>
</body>
</html>
