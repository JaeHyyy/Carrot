<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" 
    prefix="form"%>
<link rel="stylesheet" href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
<script src="webjars/bootstrap/5.3.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>	
<script type="text/javascript" src="js/script.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Jacquard+12+Charted&family=Jua&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">
<link href="css/commonCss.css" rel="stylesheet" type="text/css">
<style type="text/css">
		.conMg {
			margin-top: -70px;
			font-family: "Jua", sans-serif;
  	  		font-weight: 400;
  	  		font-style: normal;
		}

       .form-control {
          width: 260px;
          
       }
       
       .addBox {
       	display: flex;
       	justify-content: center;
		align-items: center;
       	
       }
       
       .addBox > span {
        width: 100px; /* 모든 라벨의 너비를 동일하게 설정 */
        margin-right: 20px;
        text-align: right; /* 라벨 텍스트를 오른쪽 정렬 */
       }
       
       .custom-btn {
        background-color: #ff5733; /* 원하는 색상으로 변경 */
        color: #ffffff; /* 버튼 텍스트 색상 */
        border-color: #ff5733; /* 테두리 색상, 선택적으로 변경 */
    }
    
</style>
</head>
<body>
<div class="container d-flex justify-content-center align-items-center min-vh-100 conMg">
	<form:form class="row g-3 m-4" action="goodsAdd" method="post" encType="multipart/form-data">
	<div class="row">
		<div class="card" style="width:30rem;"><br>
		<h2 class="card-title">상품 추가</h2>
		<div class="card-body">
			<!-- <div class="addBox">
				<span class="sName">상품번호 </span>
				<input type="text" name="gCode" class="form-control mb-2">
			</div><br> -->
			<div class="addBox">
				<span class="sName">카테고리 </span>
				<input type="text" name="gCategory" class="form-control mb-2">
			</div><br>
			<div class="addBox">
				<span class="sName">상품이름 </span>
				<input type="text" name="gName" class="form-control mb-2">
			</div><br>
			<div class="addBox">
				<span class="sName">상품설명 </span>
				<input type="text" name="gContent" class="form-control mb-2">
			</div><br>
			<div class="addBox">
				<span class="cName">가&nbsp&nbsp&nbsp&nbsp&nbsp격 </span>
				<input type="text" name="gPrice" class="form-control mb-2">
			</div><br>
			<div class="addBox">
				<span class="sName">이&nbsp미&nbsp지 </span>
				<input type="file" name="image" class="form-control mb-2">
			</div><br>
			<input type="submit" value="업로드" class="btn custom-btn">
		</div>
		</div>
	</div>
	</form:form>
</div>
</body>
