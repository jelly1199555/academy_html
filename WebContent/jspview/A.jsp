<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>${param.name }님의 점수는 ${param.score}점이시군요</h1>
그러니까 ${param.name }님은 A학점이라는
그리고  <%=request.getAttribute("babo") %>님!
<a href="mvc1que.html">입력화면</a>
</body>
</html>