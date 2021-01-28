<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
String[] kwail = {"사과", "배", "감"};
session.setAttribute("kwail", kwail);
/* 과일이라는 속성명을 가진 기억창고에 과일 배열을 넣어라
네임은 따옴표 사용, value는 기억창고이면 따옴표 없이, 문자열이면 따옴표사용 */
%>

<a href="300_foreachkaja.jsp">
가자3 - 일단 foreach개념인 for(:)을 사용</a>
</body>
</html>