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
���� ��¥�� ����غ���(�ڹٹ����� script�Ͽ�)<br>
<!-- Date d1 = new Date(); -->

<% Date d1 = new Date(); 
out.println("<h1>��¥ ����̶��</h1>"+"   "+d1+"<p>");
out.println(request.getRequestURI()+"�� ��û�� URI����"+"<br>");
//out : jsp���� ,�������� Ŭ���̾�Ʈ�� �����ִ°�, ��ü.�޼ҵ�, �ý��ƿ� //request ��û��� ���尴ü //response ����
%>
<%-- jsp���� import�� �ϰ� ������ Date���� �Է��ϰ� ctrl+space ������ 
<%@page import="java.util.Date"%>�� �ڵ�������
 --%>

</body>
</html> 