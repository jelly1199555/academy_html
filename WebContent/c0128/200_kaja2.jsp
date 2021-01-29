<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<c:if test="${param.coffee == 'americano'}">
<div>americano</div>
</c:if>

<c:if test="${param.coffee == 'latte'}">
<div>latte</div>
</c:if>

<c:if test="${param.coffee == 'vienna'}">
<div>vienna</div>
</c:if>



 
</body>
</html>