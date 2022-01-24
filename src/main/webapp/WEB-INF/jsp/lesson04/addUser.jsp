<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>회원 정보 추가</h1>
		<form method="post" action="/lesson04/ex01/add_user">
			<div class="form-group">
				<label for="name"><strong>이름</strong></label>
				<input type="text" id="name" name="name" class="form-control" placeholder="이름을 입력하세요">
			</div>
			<div class="form-group">
				<label for="name"><strong>생년월일</strong></label>
				<input type="text" id="yyyymmdd" name="yyyymmdd" class="form-control" placeholder="예) 20190101">
			</div>
			<div class="form-group">
				<label for="name"><strong>이메일</strong></label>
				<input type="text" id="email" name="email" class="form-control" placeholder="email">
			</div>
			<div class="form-group">
				<label for="introduce"><strong>자기소개</strong></label>
				<textarea type="text" id="introduce" name="introduce" class="form-control" name="introduce" rows="10"></textarea>
			</div>
			<input type="submit" class="btn btn-success" value="추가">
		</form>
	</div>
</body>
</html>