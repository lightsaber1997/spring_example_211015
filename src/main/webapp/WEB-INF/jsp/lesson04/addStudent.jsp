<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<h1>학생 정보 추가</h1>
	<form method="post" action="/lesson04/ex02/add_student">
		<div class="form-group">
			<label for="name">이름</label>
			<input type="text" id="name" name="name" class="form-control" placeholder="이름을 입력하세요">
		</div>
		<div class="form-group">
			<label for="phoneNumber">전화번호</label>
			<input type="text" id="phoneNumber" name="phoneNumber" class="form-control" placeholder="전화 번호를 입력하세요">
		</div>
		<div>
			<label for="email">이메일</label>
			<input type="text" id="email" name="email" class="form-control" placeholder="이메엘 주소를 입력하세요">
		</div>
		<div class="form-group">
			<label for="name">장래희망</label>
			<input type="text" id="dreamJob" name="dreamJob" class="form-control" placeholder="장래희망을 입력하세요">
		</div>
		<input type="submit" class="btn btn-primary">
	</form>
	</div>
</body>
</html>