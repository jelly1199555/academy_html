<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

${pageScope.page1}<br>
${requestScope.req1 }<br>
${sessionScope.ses1 }<br>
out.println((String)session.getAttribute("ses1"));

${appl;icationScope.app1}<br>

<a href="elscope2.jsp">scope������</a>

</body>
</html>