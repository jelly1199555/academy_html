<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage="true" %>
    <% response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<pre>
������ ���� ������ �߻��߽��ϴ�
��� ������ �߻��Ǹ� �������� ��ȭ�ֽñ� �ٶ��ϴ�
��ȭ��ȣ�� 02-3456-5577�Դϴ�
</pre>
<hr>
<!-- ���尴ü.�޼ҵ�
out request response exception��ü
exception. ctrl+space -->

���������� <h3> <%=exception.getMessage()%>  </h3>

<!-- �� : ���̸� ��ĭ���� ó���� ��� ���������� For input string: ""
is ErrorPage="true" ������ exception ��ü ������ -->
</body>
</html>