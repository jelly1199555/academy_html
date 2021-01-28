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

<!-- if연습, el+jstl융합(convergence)
getParameter("chimi") -->

<c:if text="${param.chimi == 'tennis'}">
<div>아하테니스</div>
</c:if> <!-- 자바로 치면 if1형식 -->

<c:if text="${param.chimi == 'soccer'}">
<div>아하축구</div>
</c:if> 

<c:if text="${param.chimi == 'golf'}">
<div>아하골프</div>
</c:if> 



</body>
</html>