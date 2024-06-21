<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style type="text/css">
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
    		height: 35px;
    		padding: 0;
    		margin: 0;
    		border: none;
    		background-color: #FFEB5A;
    	}
    </style>
<!-- menu.jsp -->
 <header class="menuH">
 	<div class="container">
		<div class="row ">
			<nav class="navbar navbar-expand-lg">
				<div class="navbar-collapse">
					<form action="search" method="post">
    					<input type="text" name="gName" value="물건을 검색해보세요"/>
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
