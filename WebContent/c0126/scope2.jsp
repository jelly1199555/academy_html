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
		//scope1.jsp ==> scope2.jsp�� �Ѿ�� ��
		//pageContext.setAttribute("page1","pagelove");
		out.println((String) pageContext.getAttribute("page1")); //null
		//return type : object-->(String)���� ����ȯ

		//��û�� �����ų �ٰŰ� ��� ��
		out.println((String) request.getAttribute("req1")); //null

		out.println((String) session.getAttribute("ses1")); //seslove

		out.println((String) application.getAttribute("app1")); //applove
	%>
	<a href="scope3.jsp">scope3.jsp������</a>

</body>
</html>