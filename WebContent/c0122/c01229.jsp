<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>구구단 5단 - scriptlet으로 했당(단, 줄바꿈은 br태그 써서)</h1>

<%
for(int j=1; j<10; j++){
	out.println("<h1> 5"+ "x"+j+"="+5*j + "</h1>");%>
<br>
<% } %>

<%
for(int i=1; i<10; i++){
	for(int j=1; j<10; j++){
		out.println(i + "x" + j + " = " + i*j);%>
		<br>
	<% } %>
	<br>
<% } %>


</body>
</html>