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
���ó�¥�� ����غ��� <br>
<% Date d1 = new Date(); 
out.println("<h1>��¥ ����̶��</h1>"+"   "+d1+"<p>");
out.println(request.getRequestURI()+"�� ��û�� URI����"+"<br>");
%>
<!-- out.println(d1)�� �ٿ��� ���� �ʹٸ� -->
���� �׷����� ���� ��¥�� <%= d1 %>�̱��� <br>
<!-- d1�� ����, expressionǥ����(=�ִ°�) -->
</body>
</html>