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
double kab = 37.8;
String kab2 = null;
%>

<%= "�´�" %> <!-- ǥ���� out.println("�´�")-->
${"�´�"}  <!-- el��� -->
<br>

${"���� ���ϴµ� el �װ� �� �ű⼭ ����"}<br>
${"el"}�� �� �����ؼ� ������ ���δ� �ؾ���<br>

${"���� el�� ���� ����"}<br>

${100} ${100+200 } ${100 >2 } ${200.35 } ${10 %3 }<br>
${false } ${empty kab2 } ${empty ""}  ${empty "a" } ${null }
��� ǥ���� ������ <br>

<!-- ���� ���� null �� ����ȯ� flexible
nullpoint error�� ���� ���� el ��, error x -->
<!-- �ڹٿ����� aa==null or aa.equlas("") -->

���������� * ����<br>
<!-- �ڹٿ����� -->
<%=Integer.parseInt("100") * 200 %><br>
<!-- el������ -->
${"100"*200} <!-- 20000 -->

${ 50 ==50 }<br>
${ 50 eq 50 }<br>
${(100 >3) ? "Ŀ": "�۾�" }<br> <!-- �ڹ��� 3�׿����� -->

${50 mod 5 }<br><!-- ������ ������ --> 

<!-- ����vsȣȣ�� ����ϱ� ���� 3���� ��� ����� 
4������ ������ ǥ���� ����غ��ٸ� -->

${"���� vs ȣȣ"} <br>
<% out.println("���� vs ȣȣ"); %><br> <!-- scriptlet -->
<%! String hahahoho="���� vs ȣȣ"; %> <!-- declaration -->
<%=hahahoho %> <!-- expression -->

</body>
</html>