<%@page import="telinfoDAO.TelInfoDAO"%>
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
request.setCharacterEncoding("euc-kr");
TelInfoDAO tidao = new TelInfoDAO();
//�̸��� ��ȭ��ȣ�� �Ѱ� �޴´�
String name = request.getParameter("name");
String tel = request.getParameter("tel");

boolean b1 = tidao.update_nametel(tel,name);
if(b1)
	response.sendRedirect("SawonAllViews.jsp");
else{%>
	<a href="SawonAllforDelete.jsp">������� ���� - ����ȭ������</a>
<%}%>

</body>
</html>