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
request.setCharacterEncoding("euc-kr"); //post�� �ѱ�ó�����
response.setCharacterEncoding("euc-kr");
%>
<% 
String first = request.getParameter("first"); 
String[] thing = request.getParameterValues("thing");
String cash = request.getParameter("cash"); 
/* ���� �Ѿ���Ĵ� value�� ���� */
%>

<h2>���Գ���</h2>
<!-- value���� ���� : ?? --> 
<table border="2" width="700">

<tr><td>��ǰ������ȣ������</td>
<td> <%
if(first != null){
	out.println(first);
}%></td></tr>

<tr><td>��ǰ����</td>
<td><%
/* üũ�� �ΰ��� ������ �迭�� 2���� ������ �Ѿ�� ���� 2���� �Ѿ�� */
if(thing != null){ /* �迭�� ��ǥ���� null�� �ƴϸ� */
	for(int j=0; j<thing.length; j++)
		             //üũ�� ǥ�ø�ŭ�� �Ѿ�� ����
		out.println(thing[j]+"<br>");
}%></td></tr>


<tr><td>���Թ��</td>
<td> <%
if(cash != null){
	out.println(cash);
}%> </td></tr>
<tr><td colspan=3>�ٽñ����Ϸ��� <a href="buying.html">����</a>�� ��������</td></tr>


</table>




</body>
</html>