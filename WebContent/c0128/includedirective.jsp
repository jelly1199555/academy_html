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
include directive : ������ �״�� ��Ŭ���
<%-- <%@ include file ="includeSub.jsp" %>
���� ������ ���Խ�ų�� ���� �� ó���� �ȴ� --%>

include action tag : html, jsp���� ó������� include

</pre>
<jsp:include page="100_includesub.jsp" />
<!-- �� �������? �¾� �׼��±� jsp���� �ٸ� jsp�� include�ϴ��� -->
</body>
</html>