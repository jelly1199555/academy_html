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

<%
request.setCharacterEncoding("euc-kr");
TelInfoDAO tidao = new TelInfoDAO();
//int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
//delete from..where name=? getParameter("tel"); getParame4ter("sDate");
boolean b1 = tidao.delete_nametel(name);
if(b1)
	response.sendRedirect("SawonAllViews.jsp");//delete of
else{%>
	<a href="SawonAllforDelete.jsp">사원삭제 에러 - 삭제화면으로</a>
<%}%>

</body>
</html>