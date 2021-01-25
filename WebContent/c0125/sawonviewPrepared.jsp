<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
<h1>사원 명단</h1> 
<% //페이지가 바뀌면 계속 써야함
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
PreparedStatement pstmt1 = null;
ResultSet rs1 = null;
%>
<%  /* 후에 dao에서 만들어야 할 부분 */
int overid = Integer.parseInt(request.getParameter("id1")); //검색할 아이디받아서
String sql = "select * from TelTable7 where id=?";
pstmt1 = con1.prepareStatement(sql);
pstmt1.setInt(1, overid); //검색할 아이디 넣음
rs1 = pstmt1.executeQuery();
//1번은 1명만 그리고 반드시 있음
while(rs1.next()){
	%>	
<textarea cols=50 rows=5 name="textarea1"><%=rs1.getString("bigo") %></textarea><br>
<% } 
rs1.close(); pstmt1.close(); con1.close();
%>

<!-- 여기서 주의할 점 한가지는 
textarea   vs   textarea 일때는 엔터가 잘들음
 그러나 그렇지 않은 경우는 엔터가 안들을 수 있음(kim엔터, female엔터.. 이거)
  왜?
  자바에서는 (텍스트에어리아에서는)\n로 알아듣고
  jsp에서는 <br>만 엔터라서
  자바쪽에서 replace("\r\n","<br>") 가 필요할 수 있다
   -->






</body>
</html>