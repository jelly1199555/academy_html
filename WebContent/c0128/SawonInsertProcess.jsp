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
<h1>����߰�</h1>
<%
request.setCharacterEncoding("euc-kr");
TelInfoDAO tidao = new TelInfoDAO(); //dao��ü �����

int id = Integer.parseInt(request.getParameter("id"));
//insertform���κ��� �Ѱܹް�
String name=request.getParameter("name");
String tel=request.getParameter("tel");
String sDate=request.getParameter("sDate");

//dao�� ���ؼ� ��� �ֱ�(��¥�Է½�20200222)
boolean b1 = tidao.insert_nametel(id, name, tel, sDate);
//�ٿ� ��ü.�޼ҵ�()�� �ٿ��� �ִ� �޼ҵ� ȣ��
//insert into...??�����ϰ�
		//��� �μ�Ʈ�� �� ����� Ʈ�� ���� ������ ����
		//Ʈ���̸� �μ�Ʈ�� ���� �����Ͽ� ��ü����غ���
		//������ ����ó��(error : false, no error : true�� ����)
		//��, no error b1���� true
		
		if(b1)
			response.sendRedirect("SawonAllVies.jsp"); //insert ok
			//���δٺ�������
			else
			{%>
			<a href="SawonInsertForm.jsp">����Է¿���-�Է�ȭ������</a>
			<%} %>
</body>
</html>