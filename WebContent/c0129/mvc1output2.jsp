<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String name = request.getParameter("name");
int score = Integer.parseInt(request.getParameter("score"));

String kaja=null;
//business logic�� jsp�� ���,controller

if(score>=90)
	kaja="A";
else if (score>=80)
	kaja="B";
else if (score>=70)
	kaja="C";
else if (score>=60)
	kaja="D";
else 
	kaja="F";
%>


<!-- view ������ �ϴ� jsp�� �ʿ�-->
<!-- ������ abcdf�ϱ� jsp5���ʿ� -->
<%
/* RequestDispatcher rd1 = request.getRequestDispatcher("/jspview/"+kaja+".jsp");
rd1.forward(request,response); */
request.setAttribute("babo", "ondal"); //�������Ѿ�鼭 ��û�� ����(������ �ȳ���)
//���⼱���� �� : ������ �ٲٸ鼭 ������Ʈ,�������� ���ڸ� ��⶧����
request.getRequestDispatcher("/jspview/"+kaja+".jsp").forward(request,response);
%>
</body>
</html>