<%@page import="telinfoDAO.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>사원추가</h1>
<%
request.setCharacterEncoding("euc-kr");
TelInfoDAO tidao = new TelInfoDAO(); //dao객체 만들고

int id = Integer.parseInt(request.getParameter("id"));
//insertform으로부터 넘겨받고
String name=request.getParameter("name");
String tel=request.getParameter("tel");
String sDate=request.getParameter("sDate");

//dao를 통해서 디비에 넣기(날짜입력시20200222)
boolean b1 = tidao.insert_nametel(id, name, tel, sDate);
//다오 객체.메소드()로 다오에 있는 메소드 호출
//insert into...??진행하고
		//디비에 인서트한 후 결과를 트루 오얼 폴스로 리턴
		//트루이면 인서트한 것을 포함하여 전체출력해보고
		//에러면 에러처리(error : false, no error : true가 리턴)
		//즉, no error b1에는 true
		
		if(b1)
			response.sendRedirect("SawonAllVies.jsp"); //insert ok
			//전부다보러가자
			else
			{%>
			<a href="SawonInsertForm.jsp">사원입력에러-입력화면으로</a>
			<%} %>
</body>
</html>