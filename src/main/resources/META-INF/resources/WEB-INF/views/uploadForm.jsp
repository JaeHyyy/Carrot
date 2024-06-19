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
<form action="upload" method="POST" encType="multipart/form-data">
내용:<input type="text" name="theText"><br>
파일:<input type="file" name="theFile"><br>
<input type="submit" value="업로드">
</form>
</body>
</html>

