<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- ������ �˾Ƴ���,
����������(ũ��, opera-Blink,������ ���ĸ�-webkit,����-gecko(������),
IE-Trident, MAC IE�� ž��� ���� Tasman(ms�� ���̾ƿ�����)
layout engine : Rendering engine�̶�� �ϸ�
html,css���� ���´�� ȭ�鿡 �����ְ��ϴ� sw) -->
<title>Insert title here</title>
</head>
<body>
getHeader --> <%= request.getHeader("user-agent") %><br>

RequestURI --> <%= request.getRequestURI() %><br>
ServletPath --> <%= request.getServletPath() %><br>
ServerName --> <%= request.getServerName() %><br>
ServerPort --> <%= request.getServerPort() %><br>
Protocol --> <%= request.getProtocol() %><br>
Method --> <%= request.getMethod() %><br>


</body>
</html>