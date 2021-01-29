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
//business logic을 jsp가 담당,controller

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


<!-- view 역할을 하는 jsp가 필요-->
<!-- 학점이 abcdf니까 jsp5개필요 -->
<%
/* RequestDispatcher rd1 = request.getRequestDispatcher("/jspview/"+kaja+".jsp");
rd1.forward(request,response); */
request.setAttribute("babo", "ondal"); //페이지넘어가면서 요청이 끊김(저번에 안나옴)
//여기선찍힘 왜 : 방향을 바꾸면서 리퀘스트,리스폰스 인자를 썼기때문에
request.getRequestDispatcher("/jspview/"+kaja+".jsp").forward(request,response);
%>
</body>
</html>