<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>���� �α��� �޴� ����</h2>
<% 
request.setCharacterEncoding("euc-kr"); //post�� �ѱ�ó�����
response.setCharacterEncoding("euc-kr");
%>
                                <!--  ��Ʈ�� id1�̶� ��ȣ�ȿ� id1�� �ٸ�, ���� ��� ���򰥸� -->
<% //getParameter                //���Ķ���ʹ� ���̵� �Է��� ������ �Ѿ��, vol_1995����
       //����("�ڹ̷�")             //input�±� name(���ʿ��� �Ѿ���� ������ �������)
String id1 = request.getParameter("id1"); //��ü.�޼ҵ�
//�ۻ����̹Ƿ� ���ڷ� �Ѿ��
                 //http://url?id1=�� & pw1=��
String pw1 = request.getParameter("pw1");
             //request�� ���尴ü
             
             int age1 = Integer.parseInt(request.getParameter("age1"));
%>

���̵�� <%= id1 %> �̰� ��ȣ�� <%= pw1 %> �̱���<br>
���̴� <%= 2021-age1+1 %>

</body>
</html>