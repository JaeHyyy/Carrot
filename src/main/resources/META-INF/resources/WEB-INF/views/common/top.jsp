<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<link href="https://fonts.googleapis.com/css2?family=Jacquard+12+Charted&family=Jua&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">
<style type="text/css">
	header{
		background-color: white;
		font-family: "Jua", sans-serif;
  		font-weight: 400;
  		font-style: normal;
	}
	
    .topimg {
	  width: 160px;
	  height: 50px;
	  object-fit: contain;
	}
	
	.charBox {
		width: 70%;
		height: 70%;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	
	.charImg {
		width: 80px;
	  	height: 70px;
	  	/* object-fit: contain; */
	  	margin-right: 120px;
	  	margin-left: -60px;
	  	border-radius: 50px;
	}
	
	.mainBtn {
		/* height: 66px; */
		/* display: flex;
		justify-content: center;
		align-items: center; */
	}
	
	.nav-link {
		font-weight: bold;
		font-size: 18px;
	}
	
	
	.menuH {
    		/* #FFEB5A */
    		background-color: #FFEB5A;
    		height: 100%;
    		position: relative;
    		top: 0;
    		left:0;
    	}
    	
    	.mog {
    		object-fit: contain;
    	}
    	
    	.mogBtn {
    		width: 45px;
    		height: 30px;
    		padding: 0;
    		margin: 0;
    		border: none;
    		background-color: #FFEB5A;
    	}
    	
    	.love {
    		width: 30px;
    		height: 30px;
    		object-fit: contain;
    	}
	
 </style>
 	<header>
            <div class="container">
                <div class="row">
                    <nav class="navbar navbar-expand-lg">
                        <div class="navbar-collapse">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="main">
                                    	<img src="images/des/teet.png" class="topimg" alt="당근로고">
                                    </a>
                                </li>
                            </ul>
                        </div>
                        
                        <div class="charBox">
	                        <img src="images/des/char.png" class="charImg" alt="당근캐릭터">                        
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
	                               <a class="nav-link" href="cart">
	                               	<img src="images/des/love.png" alt="찜리스트" class="love">
	                               </a>
	                            </li>
	                            </sec:authorize>
	                        </ul>  
                    </nav>
                </div>
                </div>
                </header>
                
                
                <header class="menuH">
 					<div class="container">
						<div class="row ">
						<nav class="navbar navbar-expand-lg">
						<div class="navbar-collapse">
						<form action="search" method="post">
    						<input type="text" name="gName" placeholder="물건을 검색해보세요."/>
    						<button type="submit" class="mogBtn">
    							<img src="images/des/mog.png" alt="돋보기아이콘" class="mogBtn mog">
    						</button>
						</form>
						</div>          
						<ul class="navbar-nav">
							<li class="nav-item text-align=right">
 								<a class="nav-link" href="goodsAdd">상품등록</a>
							</li>
						</ul>
					</nav>
					</div>
					</div>
				</header>