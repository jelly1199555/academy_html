<%@page import="telinfoVO.TelInfoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="telinfoDAO.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>수정할 이름 선택</h1>
<!-- 수정내용은 전화번호만 -->

<%
request.setCharacterEncoding("euc-kr");
//먼저 전체명단을 다 본다
//수정시 또 다시 전체명단을 본다(이중작업)
//좋은 방법은 전체보기 나오면 바로 수정 할건지 물어본다
TelInfoDAO tidao = new TelInfoDAO();
ArrayList <TelInfoVO> tiArray = tidao.getAllInfo();
%>

<table border=2>
<tr>
<td>사번</td><td>이름</td><td>전화번호</td><td>입사일</td></tr>
<%
for(TelInfoVO imsi : tiArray){%>
	<tr>
	<td><%=imsi.getId() %></td>
	<td><a href="SawonUpdateForm.jsp?name=<%=imsi.getName() %>">
	<%=imsi.getName() %></a></td>
	<td><%=imsi.getTel() %></td>
	<td><%=imsi.getD() %></td>
<%} %>
</table>

<table border=0>
<tr>
<td><a href="SawonInsertForm.jsp">[입력]</a>
<td><a href="SawonAllforDelete.jsp">[삭제]</a></td>
<td><a href="SawonAllViews.jsp">[모두보기]</a></td>
</tr>
</table>

</body>
</html>