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
String[] kwail = {"���", "��", "��"};
session.setAttribute("kwail", kwail);
/* �����̶�� �Ӽ����� ���� ���â�� ���� �迭�� �־��
������ ����ǥ ���, value�� ���â���̸� ����ǥ ����, ���ڿ��̸� ����ǥ��� */
%>

<a href="300_foreachkaja.jsp">
����3 - �ϴ� foreach������ for(:)�� ���</a>
</body>
</html>