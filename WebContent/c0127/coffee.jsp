<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>�ֹ��Է�</h1>
<hr>
<form action="coffee1.jsp">

<table border=2 width=700>
<tr><td colspan="2" align="center">�������Ǳ�</td></tr>
<tr><td align="center">�ݾ��� �־��ּ���</td>
<td><input type="number" name="cash" style="width:100%" required></td></tr>
<!-- number������ ���ڴ� �Է��� �ȵ� -->
<tr><td align="center">Ŀ�Ǹ� �����ϼ���</td></tr>
<tr><td colspan="2" align="center">
<input type="checkbox" name="coffee" value="���Ŀ��">���Ŀ��(2700��)
<input type="checkbox" name="coffee" value="ī���">ī���(1700��)<br>
<input type="checkbox" name="coffee" value="ī���ī">ī���ī(2000��)
<input type="checkbox" name="coffee" value="�Ƹ޸�ī��">�Ƹ޸�ī��(900��)<br>
<input type="checkbox" name="coffee" value="����������">����������(3000��)
<input type="checkbox" name="coffee" value="īǪġ��">īǪġ��(2500��)<br></td></tr>
<tr><td colspan="2" align="center">
<input type="submit" value="�ֹ��Դϴ�">
<input type="reset" value="���Է�"></td></tr>
</table>
</form>
</body>
</html>