<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<pre>
include directive : 내용을 그대로 인클루드
<%-- <%@ include file ="includeSub.jsp" %>
정적 파일을 포함시킬때 포함 후 처리가 된다 --%>

include action tag : html, jsp등의 처리결과를 include

</pre>
<jsp:include page="100_includesub.jsp" />
<!-- 나 누구라고? 맞아 액션태그 jsp에서 다른 jsp를 include하는중 -->
</body>
</html>