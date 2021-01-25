<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>나는 로그인 받는 서버</h2>
<% 
request.setCharacterEncoding("euc-kr"); //post의 한글처리방식
response.setCharacterEncoding("euc-kr");
%>
                                <!--  스트링 id1이랑 괄호안에 id1은 다름, 같게 써야 안헷갈림 -->
<% //getParameter                //겟파라미터는 아이디에 입력한 내용이 넘어옴, vol_1995같은
       //변수("박미래")             //input태그 name(저쪽에서 넘어오는 네임을 써줘야함)
String id1 = request.getParameter("id1"); //객체.메소드
//글상자이므로 문자로 넘어옴
                 //http://url?id1=값 & pw1=값
String pw1 = request.getParameter("pw1");
             //request는 내장객체
             
             int age1 = Integer.parseInt(request.getParameter("age1"));
%>

아이디는 <%= id1 %> 이고 암호는 <%= pw1 %> 이구만<br>
나이는 <%= 2021-age1+1 %>

</body>
</html>