<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>scriptlet</h2>
<%
String irum1 = request.getParameter("irum1");
String irum2 = request.getParameter("irum2");
out.println(irum1+"��"+irum2+"���Ը��ϱ�"+"<br>");
out.println("�̾ȿ� ���ִ�");
%>
<hr>
<h2>el</h2>
${param.irum1 }�� ${param.irum2}���� ���ϱ⸦<br>
${"�̾ȿ����ִ�" }

</body>
</html>