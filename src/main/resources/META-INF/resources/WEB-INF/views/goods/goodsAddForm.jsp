<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/script.js"></script>
</head>
<body>
<h1>상품 추가</h1>
<form action="goodsAdd" method="POST" encType="multipart/form-data">
상품번호:<input type="text" name="gCode"><br>
아이디:<input type="text" name="userid"><br>
카테고리:<input type="text" name="gCategory"><br>
상품이름:<input type="text" name="gName"><br>
상품설명:<input type="text" name="gContent"><br>
가격:<input type="text" name="gPrice"><br>
상품이미지:<input type="file" name="image"><br>
<input type="submit" value="업로드">
</form>
</body>
</html>

