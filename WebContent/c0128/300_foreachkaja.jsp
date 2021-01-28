<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%                                       //세션의 속성명 과일
String [] kwail=(String []) session.getAttribute("kwail");
for(String imsi : kwail){ //자바에서 하나씩 꺼내서 출력
	out.println(imsi+"<br>");
	//자바는 for-콜론(...:...)
	//자바스크립트에서는 for-in(... in ...)
}
%>

<h2>jstl+el</h2>
<c:forEach var = "imsi" items="${sessionScope.kwail}">
${imsi}<br>                    <!-- session.getattri -->
</c:forEach>


</body>
</html>