<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- menu.jsp -->
 <header>
            <div class="container">
                <div class="row ">
                    <nav class="navbar navbar-expand-lg">
                        <div class="navbar-collapse">
                            <form action="/submit-form" method="POST"class="align-items=center">
    						<div class="form-group">
        					<input type="text" class="form-control" id="gName" name="gName" placeholder="Search..." required>
    						<button type="submit" class="btn btn-primary">검색</button>
    						</div>
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
