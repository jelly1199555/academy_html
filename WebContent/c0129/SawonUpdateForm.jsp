<%@page import="telinfoVO.TelInfoVO"%>
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
<h1>��� ���� ��</h1>
<%
request.setCharacterEncoding("euc-kr");
TelInfoDAO tidao = new TelInfoDAO();
String oriName = request.getParameter("name");
TelInfoVO tv2 = tidao.search_nametel(oriName);
//������ ȫ�浿 �ѻ���� ã�� �۾��� ����
//tv2���� ȫ�浿������ ���γѾ�´�
%>
<!-- ���μ����� ȫ�浿 ���� �� ��ȭ��ȣ ���� �� ����۾� ó���� ���Ѱ� -->
<form action="SawonUpdateProcess.jsp" method="post">
<table border=2>
<tr><th>���</th><th>�̸�</th><th>��ȭ��ȣ</th><th>�Ի���</th></tr>
<tr>
<td><%=tv2.getId() %></td> <!-- ���̵� ��� -->
<td><%=tv2.getName() %></td> <!-- �̸� ��� -->
<td><input type="text" name="tel" value=<%=tv2.getTel() %> ></td>
<td><%=tv2.getD() %></td>
<td><input type="hidden" name="name" value="<%=tv2.getName() %>"></td>
<!-- �̷��� �ϸ� �̸��� ��ȭ��ȣ�� �Ѿ�� getParameter()�� ���޵�
�׷��� ��ǲ �±׾��� ������ ������ ���ϰ� �� ���� �� ����� -->
</tr>

<tr>
<td colspan=4><input type="submit" value="��������"></td>
</tr>
</table>

<table border=0>
<tr>
<td><a href="SawonInsertForm.jsp">[�Է�]</a>
<td><a href="SawonAllDeleteForm.jsp">[����]</a></td>
<td><a href="SawonAllViews.jsp">[��κ���]</a></td>
</tr>
</table>

</body>
</html>