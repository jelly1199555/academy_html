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
	if(jepoom[i].equals("���Ŀ��"))
		hap += 2700;
	else if (jepoom[i].equals("ī���"))
		hap+= 1700;
	else if (jepoom[i].equals("ī���ī"))
		hap+= 2000;
	else if (jepoom[i].equals("����������"))
		hap+= 3000;
	else if (jepoom[i].equals("īǪġ��"))
		hap+= 2500;
	else if (jepoom[i].equals("�Ƹ޸�ī��"))
		hap+= 900;
}

int jan = cash-hap;
if(jan <0){
	out.println("<h1>���� �����մϴ�</h1>");%>
	<a href ="coffee.jsp">�ٽ� �ֹ�ȭ������</a>
<% } else{%>
	<h1>�ܾ� ��ȯ <%=jan %>�� �Դϴ�</h1>
	<%
	for(int i=0; i<jepoom.length; i++){
		out.println(jepoom[i]+ "�����ϼ̱���" + "<br>");
	}
	
}%>


</body>
</html>