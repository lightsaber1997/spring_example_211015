<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core 라이브러리 (2)</title>
</head>
<body>
	<h1>1. 조건문(c:choose, c:when, c:otherwise)</h1>
	<c:set var="weight" value="65"/>
	<c:choose>
		<c:when test="${weight < 60}">
			<p>치킨 먹자!!!</p>
		</c:when>
		
		<c:when test="${weight < 70}">
			<p>샐러드 먹자!!!</p>
		</c:when>
		<c:otherwise>
			<p>굶자</p>
		</c:otherwise>
	</c:choose>
	
	<h1>2. 반복문 (c:forEach)</h1>
	<c:forEach begin="0" end="5" step="1" var="var1">
		<p>${var1 }</p>
	</c:forEach>
	
	<c:forEach begin="16" end="20" step="1" var="var2">
		<p>${var2 }</p>
	</c:forEach>
	
	<c:forEach var="fruit" items="${fruits }" varStatus="status">
		<p>${fruit }</p>
		
	</c:forEach>
	
	<c:forEach var="user" items="${users }" varStatus="status">
		<h3>${status.count }번째 사람 정보</h3>
		<p>${user.name }</p>
		<p>${user.age }</p>
		<p>${user.hobby }</p>
	</c:forEach>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>나이</th>
				<th>취미</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users }" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${user.name }</td>
				<td>${user.age }</td>
				<td>${user.hobby }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>