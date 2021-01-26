<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage="true" %>
    <% response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<pre>
다음과 같은 에러가 발생했습니다
계속 에러가 발생되면 상담원에게 전화주시기 바랍니다
전화번호는 02-3456-5577입니다
</pre>
<hr>
<!-- 내장객체.메소드
out request response exception개체
exception. ctrl+space -->

에러내용은 <h3> <%=exception.getMessage()%>  </h3>

<!-- 예 : 나이를 빈칸으로 처리한 경우 에러내용은 For input string: ""
is ErrorPage="true" 없으면 exception 객체 사용못함 -->
</body>
</html>