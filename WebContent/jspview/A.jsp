<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>${param.name }���� ������ ${param.score}���̽ñ���</h1>
�׷��ϱ� ${param.name }���� A�����̶��
�׸���  <%=request.getAttribute("babo") %>��!
<a href="mvc1que.html">�Է�ȭ��</a>
</body>
</html>