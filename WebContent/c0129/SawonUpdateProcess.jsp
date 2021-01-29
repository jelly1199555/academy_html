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
//이름과 전화번호만 넘겨 받는다
String name = request.getParameter("name");
String tel = request.getParameter("tel");

boolean b1 = tidao.update_nametel(tel,name);
if(b1)
	response.sendRedirect("SawonAllViews.jsp");
else{%>
	<a href="SawonAllforDelete.jsp">사원수정 에러 - 삭제화면으로</a>
<%}%>

</body>
</html>