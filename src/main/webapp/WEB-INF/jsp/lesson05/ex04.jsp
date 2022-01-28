<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="str1" value="No pain, no gain." />
	<h1>길이 구하기</h1>
	<p>${str1.length() }</p>
	<p>${fn:length(str1) }</p>
	
	<h1>특정 문자열이 있는지 확인</h1>
	<p>No가 있는가? ${fn:contains(str1, "No") }</p>
	<p>No가 있는가? ${str1.contains("No") }</p>
	
	<c:if test="${fn:containsIgnoreCase(str1, 'no') }">
		<p>문자열에 no라는 문자열이 존재합니다. (대소문자 구별 X)</p>
	</c:if>
	
	<h1>특정 문자열로 시작하는지 확인</h1>
	<p>No로 시작하는가? ${fn:startsWith(str1, "No") }</p>
	
	<h1>문자열 치환</h1>
	<c:set var="str2">I love chicken.</c:set>
	<p>${fn:replace(str2, 'chicken', 'meat')}</p>
	
	<h1>구분자로 잘라서 배열 만들기</h1>
	<p>${fn:split(str1, ',')[0] }</p>
	<p>${fn:split(str1, ',')[1] }</p>
	
	<h1>시작 인덱스부터 끝 인덱스까지 자르기</h1>
	<p>${fn:substring(str2, 2, 6) }</p>
	
	<h1>모두 소문자로 변경</h1>
	<p>${fn:toLowerCase(str2) }</p>
	
	<h1>앞뒤 여백 제거</h1>
	<c:set var="str3" value="   Hello"/>
</body>
</html>