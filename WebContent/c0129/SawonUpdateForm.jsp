<%@page import="telinfoVO.TelInfoVO"%>
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
<h1>사원 수정 폼</h1>
<%
request.setCharacterEncoding("euc-kr");
TelInfoDAO tidao = new TelInfoDAO();
String oriName = request.getParameter("name");
TelInfoVO tv2 = tidao.search_nametel(oriName);
//선택한 홍길동 한사람을 찾는 작업이 시작
//tv2에는 홍길동정보가 전부넘어온다
%>
<!-- 프로세스는 홍길동 정보 중 전화번호 수정 후 디비작업 처리를 위한거 -->
<form action="SawonUpdateProcess.jsp" method="post">
<table border=2>
<tr><th>사번</th><th>이름</th><th>전화번호</th><th>입사일</th></tr>
<tr>
<td><%=tv2.getId() %></td> <!-- 아이디 출력 -->
<td><%=tv2.getName() %></td> <!-- 이름 출력 -->
<td><input type="text" name="tel" value=<%=tv2.getTel() %> ></td>
<td><%=tv2.getD() %></td>
<td><input type="hidden" name="name" value="<%=tv2.getName() %>"></td>
<!-- 이렇게 하면 이름과 전화번호는 넘어가서 getParameter()에 전달됨
그러나 인풋 태그없는 세개는 수정을 못하게 한 것이 잘 적용됨 -->
</tr>

<tr>
<td colspan=4><input type="submit" value="수정하자"></td>
</tr>
</table>

<table border=0>
<tr>
<td><a href="SawonInsertForm.jsp">[입력]</a>
<td><a href="SawonAllDeleteForm.jsp">[삭제]</a></td>
<td><a href="SawonAllViews.jsp">[모두보기]</a></td>
</tr>
</table>

</body>
</html>