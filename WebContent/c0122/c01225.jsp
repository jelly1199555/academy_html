<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%! /* 방법1.선언 먼저쓰기 / 느낌표있으면 선언문 declaration, 없으면 스크립트릿 */
String aa = "ondal";
%>
<body>
<% out.println(aa); %>

<% /* 방법2. 그냥 같이 쓰기 */
String aa2 = "ondal";
out.println(aa2);
%>
</body>
</html>