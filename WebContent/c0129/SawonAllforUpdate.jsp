<%@page import="telinfoVO.TelInfoVO"%>
<%@page import="java.util.ArrayList"%>
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
<h1>������ �̸� ����</h1>
<!-- ���������� ��ȭ��ȣ�� -->

<%
request.setCharacterEncoding("euc-kr");
//���� ��ü����� �� ����
//������ �� �ٽ� ��ü����� ����(�����۾�)
//���� ����� ��ü���� ������ �ٷ� ���� �Ұ��� �����
TelInfoDAO tidao = new TelInfoDAO();
ArrayList <TelInfoVO> tiArray = tidao.getAllInfo();
%>

<table border=2>
<tr>
<td>���</td><td>�̸�</td><td>��ȭ��ȣ</td><td>�Ի���</td></tr>
<%
for(TelInfoVO imsi : tiArray){%>
	<tr>
	<td><%=imsi.getId() %></td>
	<td><a href="SawonUpdateForm.jsp?name=<%=imsi.getName() %>">
	<%=imsi.getName() %></a></td>
	<td><%=imsi.getTel() %></td>
	<td><%=imsi.getD() %></td>
<%} %>
</table>

<table border=0>
<tr>
<td><a href="SawonInsertForm.jsp">[�Է�]</a>
<td><a href="SawonAllforDelete.jsp">[����]</a></td>
<td><a href="SawonAllViews.jsp">[��κ���]</a></td>
</tr>
</table>

</body>
</html>