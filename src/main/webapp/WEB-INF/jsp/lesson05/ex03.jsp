<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP fmt 라이브러리</title>
</head>
<body>
	<c:set var="number" value="12345678"/>
	<h3>숫자 출력</h3>
	<fmt:formatNumber value="${number }"/>
	<p><fmt:formatNumber value="1" type="percent"/></p>
	<p><fmt:formatNumber value="0.4" type="percent"/></p>
	<p><fmt:formatNumber value="${number }" type="currency"/></p>
	
	<h3>변수로 저장</h3>
	<fmt:formatNumber value="${number }" type="currency" currencySymbol="$" var="dollar"/>
	
	<h3>pattern</h3>
	<p><fmt:formatNumber value="3.14" pattern="0.0000"/></p>
	<p><fmt:formatNumber value="3.14" pattern="#.####"/></p>
	<p><fmt:formatNumber value="3.141567" pattern="#.####"/></p>
	
	<hr>
	
	<h3>Date 객체를 String으로 출력</h3>
	<fmt:formatDate var="pattern1" value="${today}" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/>
	<p>${pattern1 }</p>
	
	<h3>String을 Date 객체로 변환 => fmt:parseDate</h3>
	<fmt:parseDate value="${pattern1 }" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초" var="date2" />
	<p>${date2 }</p>
</body>
</html>