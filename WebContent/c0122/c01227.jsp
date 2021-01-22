<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 34를 int에 넣은 후 홀수인지 짝수인지 출력하는 프로그램을 jsp로 작성해보자 -->

	<%
int aa = 34;
if (aa%2==0)
out.println("짝수입니다");
else
	out.println("홀수입니다");

%>

</body>
</html>