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
String name = request.getParameter("name");
int score = Integer.parseInt(request.getParameter("score"));

String kaja=null;
//business logic�� jsp�� ���

if(score>=90)
	kaja="A";
else if (score>=80)
	kaja="B";
else if (score>=70)
	kaja="C";
else if (score>=60)
	kaja="D";
else 
	kaja="F";
%>


<!-- view logic�� jsp�� ��� -->
���� �̸��� <%=name %>�̽ð�<br>
������ <%=kaja %> �����̽ñ���


</body>
</html>