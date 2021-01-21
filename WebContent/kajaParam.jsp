<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

안녕 방가바ㅏㅇ가

<% String name = request.getParameter("name");  
			// jsp : html + java
			/* scriptlet /뒤에let가 붙으면 작은 이라는 뜻..
			  아래쪽 태그는 이름이 expression */
			  %>

그리고 당신의 이름은 <%=name%> 이군요
