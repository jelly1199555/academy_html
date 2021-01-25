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
request.setCharacterEncoding("euc-kr"); //post의 한글처리방식
response.setCharacterEncoding("euc-kr");
%>
<% 
String first = request.getParameter("first"); 
String[] thing = request.getParameterValues("thing");
String cash = request.getParameter("cash"); 
/* 뭐가 넘어오냐는 value로 따짐 */
%>

<h2>구입내역</h2>
<!-- value값의 역할 : ?? --> 
<table border="2" width="700">

<tr><td>제품종류번호및제목</td>
<td> <%
if(first != null){
	out.println(first);
}%></td></tr>

<tr><td>제품선택</td>
<td><%
/* 체크를 두개만 했으면 배열도 2개만 잡히고 넘어온 값도 2개만 넘어옴 */
if(thing != null){ /* 배열의 대표명이 null이 아니면 */
	for(int j=0; j<thing.length; j++)
		             //체크된 표시만큼이 넘어온 길이
		out.println(thing[j]+"<br>");
}%></td></tr>


<tr><td>구입방법</td>
<td> <%
if(cash != null){
	out.println(cash);
}%> </td></tr>
<tr><td colspan=3>다시구입하려면 <a href="buying.html">여기</a>를 누르세요</td></tr>


</table>




</body>
</html>