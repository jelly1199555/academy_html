<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 34�� int�� ���� �� Ȧ������ ¦������ ����ϴ� ���α׷��� jsp�� �ۼ��غ��� -->

	<%
int aa = 34;
if (aa%2==0)
out.println("¦���Դϴ�");
else
	out.println("Ȧ���Դϴ�");

%>

</body>
</html>