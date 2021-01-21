<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<% String name = request.getParameter("name"); 

 String age = request.getParameter("age"); %>


안녕하세요   <%=name%> 회원님

회원님이 입력하신 자료는
name= <%=name%>
age= <%=age%>
입니다.
입력하신 자료는
회원관리에 사용됩니다. 행쇼
			 

