<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>주문입력</h1>
<hr>
<form action="coffee1.jsp">

<table border=2 width=700>
<tr><td colspan="2" align="center">음료자판기</td></tr>
<tr><td align="center">금액을 넣어주세요</td>
<td><input type="number" name="cash" style="width:100%" required></td></tr>
<!-- number때문에 문자는 입력이 안됨 -->
<tr><td align="center">커피를 선택하세요</td></tr>
<tr><td colspan="2" align="center">
<input type="checkbox" name="coffee" value="흑당커피">흑당커피(2700원)
<input type="checkbox" name="coffee" value="카페라떼">카페라떼(1700원)<br>
<input type="checkbox" name="coffee" value="카페모카">카페모카(2000원)
<input type="checkbox" name="coffee" value="아메리카노">아메리카노(900원)<br>
<input type="checkbox" name="coffee" value="에스프레소">에스프레소(3000원)
<input type="checkbox" name="coffee" value="카푸치노">카푸치노(2500원)<br></td></tr>
<tr><td colspan="2" align="center">
<input type="submit" value="주문입니다">
<input type="reset" value="재입력"></td></tr>
</table>
</form>
</body>
</html>