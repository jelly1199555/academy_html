<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>���� ��ٱ��� ����</h2>
<hr>                      <!-- ó�� ����� ����:3�� ���, �������� 0�̹Ƿ� -->
<%if(cnt1 !=0){%> ���� : <%= cnt1 %> <%} %> <br>
<%if(cnt2 !=0){%> ���� : <%= cnt2 %> <%} %> <br>
<%if(cnt3 !=0){%> ��Ÿ�� : <%= cnt3 %> <%} %> <br><br>

<a href="input.jsp">[��ӻ�ٴ�]</a>&nbsp;&nbsp;&nbsp;
<a href="ansa.jsp">[������]</a>&nbsp;&nbsp;&nbsp;
<a href="joomoon.jsp">[�ֹ��մϴ�]</a><br>
 
</body>
</html>