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
<!-- SawonAllforDelete.jsp ȫ�浿�� Ŭ���ϸ�
SawonDeleteForm.jsp ȫ�浿 ������ ��� ��������[��������]������
SawonDeleteProcess.jsp ���⼭ ������ ó�� �� ��� ��� ����� -->
<%
request.setCharacterEncoding("euc-kr");
TelInfoDAO tidao = new TelInfoDAO();
ArrayList<TelInfoVO> tiArray = tidao.getAllInfo();//�����ü����
%>

<table border=2>
<tr>
<th>���</th><th>�̸�</th><th>��ȭ��ȣ</th><th>�Ի���</th>
</tr>

<% //SawonAllforDelete.jsp
for(TelInfoVO imsi : tiArray){%>  <!-- ��ü �÷����� �ϳ��� �̾Ƴ��� -->
	<tr>
	<td><%=imsi.getId() %></td>   <!-- �հ��������¸�� -->
	<td><a href="SawonDeleteForm.jsp?name=<%=imsi.getName() %>">     <!-- ���̿����������ſ��� -->
	                                         <%=imsi.getName() %></a></td>
    <td><%=imsi.getTel() %></td>
    <td><%=imsi.getD() %></td>
	                                      
<%} %>
</tr>
</table>

</body>
</html>