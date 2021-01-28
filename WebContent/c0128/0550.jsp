<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- 접두사 con:together -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:out value="안녕jstl" /><br>
<!-- ------------------------------- -->
<% String aa="chokichi"; %>
<%=aa %>

<c:set var="bb" value="chokichi"></c:set><br>
${bb}<br> <!-- 보다시피 jstl + el 합작품 -->

<!-- ------------------------------- -->
<% int jumsoo=100; %>
<%=jumsoo %>

<c:set var="jum">100</c:set><br>
${jum}<br>

</body>
</html>