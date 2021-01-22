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
오늘 날짜를 출력해보자(자바문법을 script하여)<br>
<!-- Date d1 = new Date(); -->

<% Date d1 = new Date(); 
out.println("<h1>날짜 출력이라고</h1>"+"   "+d1+"<p>");
out.println(request.getRequestURI()+"로 요청한 URI구만"+"<br>");
//out : jsp내장 ,서버에서 클라이언트로 보내주는거, 객체.메소드, 시스아웃 //request 요청담당 내장객체 //response 응답
%>
<%-- jsp에서 import를 하고 싶으면 Date까지 입력하고 ctrl+space 누르면 
<%@page import="java.util.Date"%>이 자동생성됨
 --%>

</body>
</html> 