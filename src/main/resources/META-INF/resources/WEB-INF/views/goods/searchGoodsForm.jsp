<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
    <c:when test="${not empty searchGoods}">
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
    </c:when>
    <c:otherwise>
        <div class="alert alert-warning" role="alert">
            일치하는 검색 결과가 없습니다.
        </div>
        <meta http-equiv="refresh" content="2;url=http://localhost:8090/carrot/main"/>
    </c:otherwise>
</c:choose>