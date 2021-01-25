<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
PreparedStatement pstmt1 = null;
ResultSet rs1 = null;
%>

<%
request.setCharacterEncoding("euc-kr"); //post의 한글처리방식
response.setCharacterEncoding("euc-kr");

String id1 = request.getParameter("id1");
String textarea1 = request.getParameter("textarea1");

String sql = "insert into TelTable7 values(?,?)";
pstmt1 = con1.prepareStatement(sql);
pstmt1.setString(1, id1);
pstmt1.setString(2, textarea1);
pstmt1.executeUpdate(); //여기 쿼리아님
%>
<a href="search.html">[검색]</a>

</body>
</html>