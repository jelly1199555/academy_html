<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>redirect</title>
</head>
<body>
<pre>
원래는 이 화면이 출력되는 것인데
변신을 해서 다른 화면이 출력된다
</pre>

<%
response.sendRedirect("ddokaja1.jsp"); /* 이거만나면 완전 무시 ,샌드어쩌고:방향틀*/
%>
<!-- ex) 로그인하고 왔어?-안했어-다시 로그인화면으로보내자 -->
</body>
</html>