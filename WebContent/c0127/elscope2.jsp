<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>현재 장바구니 내역</h2>
<hr>                      <!-- 처음 진행시 가방:3만 출력, 나머지는 0이므로 -->
<%if(cnt1 !=0){%> 가방 : <%= cnt1 %> <%} %> <br>
<%if(cnt2 !=0){%> 구두 : <%= cnt2 %> <%} %> <br>
<%if(cnt3 !=0){%> 넥타이 : <%= cnt3 %> <%} %> <br><br>

<a href="input.jsp">[계속산다는]</a>&nbsp;&nbsp;&nbsp;
<a href="ansa.jsp">[모두취소]</a>&nbsp;&nbsp;&nbsp;
<a href="joomoon.jsp">[주문합니다]</a><br>

<h2>주문처리합니다</h2>
 <hr>
 <h2>주문하신 내역은</h2>
 
 가방 ${cnts1*50000}원 <br>
 구두 ${cnts2*70000}원 <br>
 넥타이 ${cnts3*150000}원 <br>
 
</body>
</html>