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
<h1>��� ���</h1> 
<% //�������� �ٲ�� ��� �����
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
PreparedStatement pstmt1 = null;
ResultSet rs1 = null;
%>
<%  /* �Ŀ� dao���� ������ �� �κ� */
int overid = Integer.parseInt(request.getParameter("id1")); //�˻��� ���̵�޾Ƽ�
String sql = "select * from TelTable7 where id=?";
pstmt1 = con1.prepareStatement(sql);
pstmt1.setInt(1, overid); //�˻��� ���̵� ����
rs1 = pstmt1.executeQuery();
//1���� 1�� �׸��� �ݵ�� ����
while(rs1.next()){
	%>	
<textarea cols=50 rows=5 name="textarea1"><%=rs1.getString("bigo") %></textarea><br>
<% } 
rs1.close(); pstmt1.close(); con1.close();
%>

<!-- ���⼭ ������ �� �Ѱ����� 
textarea   vs   textarea �϶��� ���Ͱ� �ߵ���
 �׷��� �׷��� ���� ���� ���Ͱ� �ȵ��� �� ����(kim����, female����.. �̰�)
  ��?
  �ڹٿ����� (�ؽ�Ʈ����ƿ�����)\n�� �˾Ƶ��
  jsp������ <br>�� ���Ͷ�
  �ڹ��ʿ��� replace("\r\n","<br>") �� �ʿ��� �� �ִ�
   -->






</body>
</html>