<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${subject }</title>
</head>
<body>
	<div class="container">
		<div class="display-4">${subject }</div>
		<table class="table table-striped">
			<tr>
				<th>번호</th>
				<td>${result.id}</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${result.name }</td>
			</tr>
			<tr>
				<th>휴대전화</th>
				<td>${result.phoneNumber }</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${result.email }</td>
			</tr>
			<tr>
				<th>장래희망</th>
				<td>${result.dreamJob}</td>
			</tr>
		</table>
	</div>
</body>
</html>