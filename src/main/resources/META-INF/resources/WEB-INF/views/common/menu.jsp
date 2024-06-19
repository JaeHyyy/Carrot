<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- menu.jsp -->
 <header>
            <div class="container">
                <div class="row ">
                    <nav class="navbar navbar-expand-lg">
                        <div class="navbar-collapse">
                            <ul class="collapse navbar-nav">
                                <li class="nav-item">
                                    <input type="text">
                                    <button>검색</button>
                                    <!-- <a class="nav-link" href="main?gCategory=top">검색</a> -->
                                </li>
                            </ul>
                        </div>
                        
                        <!-- 로그인 안된 상태 
                            session.getAttribute("login") 값이 null인 경우
                         -->
                        <c:if test="${empty login}">
	                        
                        </c:if>
                        
                        <!-- 로그인 된 상태 
                          session.getAttribute("login") 값이 null이 아닌 경우
                        -->
                         <c:if test="${ ! empty login}">
	                        <ul class="navbar-nav">
                                <li class="nav-item text-align=right">
                                    <a class="nav-link" href="goodsAdd">상품등록</a>
                                </li>
                            </ul>
                        </c:if>
                    </nav>
                </div>
            </div>
</header>
