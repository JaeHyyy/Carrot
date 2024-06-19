
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 
  <div class="TodoApp">
    <div class="container">
            <div>
                <table class="table">
                    <thead>
                            <tr>
                                <th>전체삭제
                                    &nbsp;
                                    <input type="checkbox" name="allCheck" id="allCheck"></th>
                                <th>번호</th>
                                <th>상품이미지</th>
                                <th>상품정보</th>
                                <th>상품가격</th>
                                <th>상품수량</th>
                                <th>합계</th>
                                <th>날짜</th>
                                <th>Delete</th>
                            </tr>
                    </thead>
                    <tbody>
                      <c:set var="sum" value="0" />
                    <c:forEach var="dto" items="${cart}">
                        <c:set var="totalPrice" value="${dto.gPrice}" />
                        <tr>
					        <td><input type="checkbox" name="check" class="check"></td>
					        <td>${dto.num}</td>
					        <td><img src="images/items/${dto.gImage}.png" width="50" height="50" /></td>
					        <td>${dto.gCode}</td>
					        <td>${dto.gPrice}</td>
					        <td><!-- <a href="#" class="btn btn-warning">Delete</a> -->
					        	<form:form action="${pageContext.request.contextPath}/delete" method="post">
	                            	<input type="hidden" name="gCode" value="${dto.gCode}" />
	                            	<button type="submit">삭제</button>
                        		</form:form>
					        </td>
					    </tr>
                        <c:set var="sum" value="${sum + totalPrice}" />
				      </c:forEach>
					    <tr>
					      <td></td>
					      <td></td>
					      <td></td>
					      <td></td>
					      <td></td>
					      <td colspan="3">총합: &nbsp; ${sum}</td>
					    </tr>
                    </tbody>

                  </table>
              </div>
             <div class="btn btn-success m-5">전체삭제</div>
        </div>
    </div>
