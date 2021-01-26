<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>장바구니 내역</h3>
<%                                                   /* input type=text... name값이넘어오고 */
String sangValue = request.getParameter("sangpum"); //select 이름 , 셀렉트에서는 밸류값이넘어옴
String cntValue = request.getParameter("cnt");  //수량
%>

<!-- 세션 : 가방 구두 넥타이 별로 각각 준비되어 있다면 해당 상품에 갯수 누적
그러므로 일단 세션이 있다고 가정하고 누적시작 -->


</body>
</html>