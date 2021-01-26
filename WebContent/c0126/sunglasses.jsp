<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>선구리구입하러왔당</h2>
<%                                  //session속성명 값을 읽어서
String sid1 = (String)session.getAttribute("sid1");
String spw1 = (String)session.getAttribute("spw1");
    //바보이고 온달이어야
if(!sid1.equals("babo") || !spw1.equals("ondal"))
{                   //원래 jsp는 html+자바, 자바는 jsp+html
	out.println("<h2>id암호 입력에러입니다 로그인화면으로 갑니다</h2>");
	out.println("<a href='index.html'>여기</a>를 누르세요<br>");
}else{ //
	out.println("<img src='../pic/sunglasses.jfif'>");
}
%>

</body>
</html>