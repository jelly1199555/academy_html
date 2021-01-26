<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="naerrorpage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
int age1Soo1 = Integer.parseInt(request.getParameter("age1"));
out.println("나이는 "+age1Soo1);
%>

</body>
</html>