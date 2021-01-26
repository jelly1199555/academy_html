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
		//scope1.jsp ==> scope2.jsp로 넘어온 것
		//pageContext.setAttribute("page1","pagelove");
		out.println((String) pageContext.getAttribute("page1")); //null
		//return type : object-->(String)으로 형변환

		//요청을 연결시킬 근거가 없어서 널
		out.println((String) request.getAttribute("req1")); //null

		out.println((String) session.getAttribute("ses1")); //seslove

		out.println((String) application.getAttribute("app1")); //applove
	%>
	<a href="scope3.jsp">여기서 브라우저 다 닫고 scope3.jsp재수행<br>
	이어서 was내리고 scope3.jsp재수행</a>
</body>
</html>