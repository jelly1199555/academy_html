<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%                                       //������ �Ӽ��� ����
String [] kwail=(String []) session.getAttribute("kwail");
for(String imsi : kwail){ //�ڹٿ��� �ϳ��� ������ ���
	out.println(imsi+"<br>");
	//�ڹٴ� for-�ݷ�(...:...)
	//�ڹٽ�ũ��Ʈ������ for-in(... in ...)
}
%>

<h2>jstl+el</h2>
<c:forEach var = "imsi" items="${sessionScope.kwail}">
${imsi}<br>                    <!-- session.getattri -->
</c:forEach>


</body>
</html>