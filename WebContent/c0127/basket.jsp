<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<%
String sangValue = request.getParameter("sangpum");
String cntValue = request.getParameter("cnt");

Object obj1 = session.getAttribute("cnts1");//가방
Object obj2 = session.getAttribute("cnts2");//구두
Object obj3 = session.getAttribute("cnts3");//넥타이

int cnt1 = 0, cnt2 = 0, cnt3 = 0, cnt=0;
if(obj1 != null){
	/* 처음이면(session없으면 obj1은 null) 아무것도 안함(다음으로 감) */
	cnt1 = (Integer)obj1; //값이 있으면 cnt1에 넣음
}
if(obj2 != null){
	cnt2 = (Integer)obj2;
}
if(obj3 != null){
	cnt3 = (Integer)obj3;
	
	
	//분류
	
	cnt = Integer.parseInt(cntValue);
	
	if("bag".equals(sangValue)){
		cnt1 += cnt;
	}
	if("koodoo".equals(sangValue)){
		cnt2 += cnt;
	}
	if("tie".equals(sangValue)){
		cnt3 += cnt;
	}
	
	//장바구니
	//세션에 제대로 된 속성값저장
	session.setAttribute("cnts1", cnt1);
	session.setAttribute("cnts2", cnt2);
	session.setAttribute("cnts3", cnt3);
	//session.invalidate() 세션삭제
	//session.removeAttribute("cnts2"); cnts2 속성명 삭제
	%>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>현재 장바구니 내역</h2>
<hr>
<% if(cnt1 !=0)  {%> 가방 : <%=cnt1 %> <% } %><br>
<% if(cnt2 !=0)  {%> 구두 : <%=cnt2 %> <% } %><br>
<% if(cnt3 !=0)  {%> 넥타이 :<%=cnt3 %> <% } %><br><br>

</body>
</html>