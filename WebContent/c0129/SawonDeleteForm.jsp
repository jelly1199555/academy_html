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
String oriName = request.getParameter("name"); //<a>�±� �����Ѱ�,ȫ�浿������?�� �Ѿ���ϱ�
//out.print(oriName);                          // =<input�̶� ����
TelInfoVO tv2 = tidao.search_nametel(oriName); //�ٿ��� �Ѿ��(�޸���)
//ȫ�浿������ ��񿡼� ������ ��ü���·� tv2�� �Ѿ��, ���� �̰� ȭ�鿡 ����ָ��
//out.print(tv2.getId());
%>
<!-- ��񿡼� ���� ȫ�浿 �ڷḦ ȭ�鿡 ���� �κ� -->
<form action="SawonDeleteProcess.jsp" method="post">
<table border=2>
<tr><th>���</th><th>�̸�</th><th>��ȭ��ȣ</th><th>�Ի���</th></tr>
<tr>
<td><input type="text" name="id" value=<%=tv2.getId() %> readonly></td>
<td><input type="text" name="name" value=<%=tv2.getName() %> readonly></td>
<td><input type="text" name="tel" value=<%=tv2.getTel() %> readonly></td>
<td><input type="text" name="d" value=<%=tv2.getD() %> readonly></td>
</tr>

<tr>
<td colspan=4><input type="submit" value="��������"></td>
</tr>
</table>

<table border=0>
<tr>
<td><a href="SawonInsertForm.jsp">[�Է�]</a>
<td><a href="SawonAllforUpdate.jsp">[����]</a></td>
<td><a href="SawonAllViews.jsp">[��κ���]</a></td>
</tr>
</table>

</form>
</body>
</html>



