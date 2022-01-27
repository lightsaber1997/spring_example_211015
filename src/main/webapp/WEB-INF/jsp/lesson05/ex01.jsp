<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core 라이브러리(1)</title>
</head>
<body>
	<h2>1. 변수 정의하기 (c:set)</h2>
	<c:set var="number1" value="100" />
	<c:set var="number2">250</c:set>
	<p>number1: ${number1 }</p>
	<p>number2: ${number2 }</p>
	<p>number1 + number2: ${number1 + number2 }</p>
	
	<h2>2. 변수 출력하기 (c:out)</h2>
	<p>number1: <c:out value="${number1}"/></p>
	<p><c:out value="Hello World!!!"/></p>
	<p><c:out value="<script>altert('창 띄우기')</script>" escapeXml="true"/></p>
	<c:if test="${number1 > 50}">
		<p>number1은 50보다 크다.</p>
	</c:if>
	<c:if test="${number1 == 100 }">
		<p>number1은 100이다. </p>
	</c:if>
	<c:if test="${number1 eq 100 }">
		<p>number1은 100이다. </p>
	</c:if>
	<c:if test="${number1 != 200 }">
		<p>number1은 200이 아니다. </p>
	</c:if>
	<c:if test="${number1 ne 200 }">
		<p>number1은 200이 아니다. </p>
	</c:if>
	<c:if test="${not empty number1 }">
		<p>number1은 비어있지 않다</p>
	</c:if>
</body>
</html>