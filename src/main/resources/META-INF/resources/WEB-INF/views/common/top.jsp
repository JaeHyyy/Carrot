<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
 <header class="border-bottom border-light border-5">
            <div class="container">
                <div class="row">
                    <nav class="navbar navbar-expand-lg">
                        <div class="navbar-collapse">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="main">중고거래</a>
                                </li>
                            </ul>
                        </div>
                        
                        <!-- 로그인 안된 상태  -->
	                        <ul class="navbar-nav">
	                        	<sec:authorize access="isAnonymous()">
	                            <li class="nav-item">
	                               <a class="nav-link" href="login">Login</a>
	                            </li>
	                            </sec:authorize>
	                            <sec:authorize access="isAnonymous()">
	                            <li class="nav-item">
	                               <a class="nav-link" href="signup">signup</a>
	                            </li>
	                            </sec:authorize>
	                        </ul>
                        
                        <!-- 로그인 된 상태  -->
	                        <ul class="navbar-nav">
	                        	<sec:authorize access="isAuthenticated()">
	                            <li class="nav-item">
	                               <a class="nav-link" href="logout">logout</a>
	                            </li>
	                            </sec:authorize>
	                            <sec:authorize access="isAuthenticated()">
	                             <li class="nav-item">
	                               <a class="nav-link" href="cart">장바구니</a>
	                            </li>
	                            </sec:authorize>
	                        </ul>
                        
                        
                        
                        
                    </nav>
                </div>
            </div>
        </header>