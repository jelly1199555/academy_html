<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- 브라우저 알아내기,
브라우저엔진(크롬, opera-Blink,애플의 사파리-webkit,파폭-gecko(모질라),
IE-Trident, MAC IE에 탑재된 것은 Tasman(ms의 레이아웃엔진)
layout engine : Rendering engine이라고도 하며
html,css정의 형태대로 화면에 보여주게하는 sw) -->
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