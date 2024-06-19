<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- menu.jsp -->
 <header>
 	<div class="container">
		<div class="row ">
			<nav class="navbar navbar-expand-lg">
				<div class="navbar-collapse">
					<form action="search" method="post">
    					<input type="text" name="gName" />
    					<button type="submit">검색</button>
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
