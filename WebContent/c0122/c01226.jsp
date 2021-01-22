<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
오늘날짜를 출력해보자 <br>
<% Date d1 = new Date(); 
out.println("<h1>날짜 출력이라고</h1>"+"   "+d1+"<p>");
out.println(request.getRequestURI()+"로 요청한 URI구만"+"<br>");
%>
<!-- out.println(d1)을 줄여서 쓰고 싶다면 -->
아하 그렇구나 오늘 날짜는 <%= d1 %>이군요 <br>
<!-- d1의 내용, expression표현식(=있는거) -->
</body>
</html>