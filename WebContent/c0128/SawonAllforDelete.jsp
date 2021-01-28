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
<h1>삭제할 이름 선택</h1>
<!-- SawonAllforDelete.jsp 홍길동을 클릭하면
SawonDeleteForm.jsp 홍길동 정보를 모두 보여준후[삭제하자]누르면
SawonDeleteProcess.jsp 여기서 삭제를 처리 후 모든 사원 출력함 -->
<%
request.setCharacterEncoding("euc-kr");
TelInfoDAO tidao = new TelInfoDAO();
ArrayList<TelInfoVO> tiArray = tidao.getAllInfo();//사원전체보기
%>

<table border=2>
<tr>
<th>사번</th><th>이름</th><th>전화번호</th><th>입사일</th>
</tr>

<% //SawonAllforDelete.jsp
for(TelInfoVO imsi : tiArray){%>  <!-- 객체 컬렉션중 하나를 뽑아내서 -->
	<tr>
	<td><%=imsi.getId() %></td>   <!-- 손가락나오는모양 -->
	<td><a href="SawonDeleteForm.jsp?name=<%=imsi.getName() %>">     <!-- 브이오만들어놓은거에서 -->
	                                         <%=imsi.getName() %></a></td>
    <td><%=imsi.getTel() %></td>
    <td><%=imsi.getD() %></td>
	                                      
<%} %>
</tr>
</table>

</body>
</html>