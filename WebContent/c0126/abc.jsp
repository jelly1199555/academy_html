<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<table width="800" border="2">
<tr><td colspan="2"> <jsp:include page="head.jsp" /> </td></tr>
<tr><td width="200"><jsp:include page ="nav.jsp" /></td>
<td width="600">
메인작업부분
그러니까 여기에 블라블라
<br><br><br><br><br><br><br><br>
</td>
</tr>

<tr><td colspan="2"> <jsp:include page="includeSub.jsp"/></td></tr>
</table>
</body>
</html>