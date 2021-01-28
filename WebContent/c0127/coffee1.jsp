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
request.setCharacterEncoding("euc-kr");
response.setCharacterEncoding("euc-kr");

int cash = Integer.parseInt(request.getParameter("cash"));
String [] jepoom = request.getParameterValues("coffee");

int hap=0;
for(int i=0; i<jepoom.length; i++){
	if(jepoom[i].equals("흑당커피"))
		hap += 2700;
	else if (jepoom[i].equals("카페라떼"))
		hap+= 1700;
	else if (jepoom[i].equals("카페모카"))
		hap+= 2000;
	else if (jepoom[i].equals("에스프레소"))
		hap+= 3000;
	else if (jepoom[i].equals("카푸치노"))
		hap+= 2500;
	else if (jepoom[i].equals("아메리카노"))
		hap+= 900;
}

int jan = cash-hap;
if(jan <0){
	out.println("<h1>돈이 부족합니다</h1>");%>
	<a href ="coffee.jsp">다시 주문화면으로</a>
<% } else{%>
	<h1>잔액 반환 <%=jan %>원 입니다</h1>
	<%
	for(int i=0; i<jepoom.length; i++){
		out.println(jepoom[i]+ "구매하셨군요" + "<br>");
	}
	
}%>


</body>
</html>