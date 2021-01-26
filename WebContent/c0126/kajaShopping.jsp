<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>뭘살까</h2>
<%
String vid1 = request.getParameter("id1");
String vpw1 = request.getParameter("pw1");
%>
아하 id는 <%=vid1 %>이고 암호는 <%=vpw1%>이군요<p>

<!-- 그런데 여기서 실제로 구두나 가방쇼핑하는 웹페이지로 넘어가야 함
그러므로 세션을 만들어서 다음페이지에서도 아이디를 알게끔 하자 -->

<%                  /* name, value */
session.setAttribute("sid1",vid1); 
session.setAttribute("spw1",vpw1);
%>
선구리쇼핑은 <a href="sunglasses.jsp">여기</a>를 누르세요<br>
가방쇼핑은 <a href="kabang.jsp">여기</a>를 누르세요<br>
</body>
</html>