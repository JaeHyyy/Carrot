
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<link href="https://fonts.googleapis.com/css2?family=Jacquard+12+Charted&family=Jua&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">
<link href="css/commonCss.css" rel="stylesheet" type="text/css">
 <style type="text/css">
 	.TodoApp {
	  background-color: beige;
	  font-family: "Jua", sans-serif;
  	  font-weight: 400;
  	  font-style: normal;
	}
	
	.table {
		background-color: beige;
	}
 </style>
 
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
	<script>
/* $(document).ready(function(){
	
		$("form").on("submit", function(){
			alert("삭제 완료");
			this.action="deleteChecked";  //LoginServlet의 맵핑값
			this.method="post";
		});
		
	}); */ // ready()
</script>
 
  <div class="TodoApp">
    <div class="container">
            <div class="cartBox">
                <table class="table">
                    <thead>
                            <tr>
                                <th>전체선택
                                    &nbsp;
                                    <input type="checkbox" name="allCheck" id="allCheck" onchange="checkAll(this)"></th>
                                <th>상품이미지</th>
                                 <th>상품설명</th>
                                <th>상품정보</th>
                                <th>상품가격</th>
                                <th>Delete</th>
                            </tr>
                    </thead>
                    <tbody>
                      <c:set var="sum" value="0" />
                    <c:forEach var="dto" items="${cart}">
                        <c:set var="totalPrice" value="${dto.gPrice}" />
                        <tr>
					        <td><input type="checkbox" name="check" class="check" value="${dto.gCode}"></td>
					        <td><img src="static/images/items/${dto.gImage}" width="50" height="50" /></td>
					        <td>${dto.gContent}</td>
					        <td>${dto.gCode}</td>
					        <td>${dto.gPrice}</td>
					        <td><!-- <a href="#" class="btn btn-warning">Delete</a> -->
					        	<form:form action="${pageContext.request.contextPath}/delete" method="post">
	                            	<input type="hidden" name="gCode" value="${dto.gCode}" />
	                            	<button type="submit" class="btn btn-danger">삭제</button>
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
             <div class="btn btn-success m-5" onclick="deleteItems()">전체삭제</div>
        </div>
    </div>

     <script>
        // 전체 선택/해제 기능 구현
        function checkAll(source) {
            var checkboxes = document.querySelectorAll('input[type="checkbox"].check');
            for (var i = 0; i < checkboxes.length; i++) {
                checkboxes[i].checked = source.checked;
            }
        }

        // 선택된 상품들을 삭제하는 기능
        function deleteItems() {
        var checkboxes = document.querySelectorAll('input[type="checkbox"].check:checked');
        var gCodes = [];
        for (var i = 0; i < checkboxes.length; i++) {
            gCodes.push(checkboxes[i].value);
        }
        if (gCodes.length > 0) {
            var form = document.createElement('form');
            form.setAttribute('method', 'post');
            form.setAttribute('action', '${pageContext.request.contextPath}/deleteChecked');
            for (var j = 0; j < gCodes.length; j++) {
                var input = document.createElement('input');
                input.setAttribute('type', 'hidden');
                input.setAttribute('name', 'deleteItems');
                input.setAttribute('value', gCodes[j]);
                form.appendChild(input);
            }
            document.body.appendChild(form);
            form.submit();
        } else {
            alert('삭제할 상품을 선택해주세요.');
        }
    }
        
    </script>
    