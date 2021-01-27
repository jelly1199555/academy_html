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
String irum = request.getParameter("irum");
int kor = Integer.parseInt(request.getParameter("kor"));
int eng = Integer.parseInt(request.getParameter("eng"));

int hap = kor+eng; 
%>
이름 : <%=irum %>
총점 : <%=hap %><br>

[el]<br>
name ${param.irum }<br>
score ${param.kor + param.eng }<br>
</body>
</html>