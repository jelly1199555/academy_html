<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<%
String sangValue = request.getParameter("sangpum");
String cntValue = request.getParameter("cnt");

Object obj1 = session.getAttribute("cnts1");//����
Object obj2 = session.getAttribute("cnts2");//����
Object obj3 = session.getAttribute("cnts3");//��Ÿ��

int cnt1 = 0, cnt2 = 0, cnt3 = 0, cnt=0;
if(obj1 != null){
	/* ó���̸�(session������ obj1�� null) �ƹ��͵� ����(�������� ��) */
	cnt1 = (Integer)obj1; //���� ������ cnt1�� ����
}
if(obj2 != null){
	cnt2 = (Integer)obj2;
}
if(obj3 != null){
	cnt3 = (Integer)obj3;
	
	
	//�з�
	
	cnt = Integer.parseInt(cntValue);
	
	if("bag".equals(sangValue)){
		cnt1 += cnt;
	}
	if("koodoo".equals(sangValue)){
		cnt2 += cnt;
	}
	if("tie".equals(sangValue)){
		cnt3 += cnt;
	}
	
	//��ٱ���
	//���ǿ� ����� �� �Ӽ�������
	session.setAttribute("cnts1", cnt1);
	session.setAttribute("cnts2", cnt2);
	session.setAttribute("cnts3", cnt3);
	//session.invalidate() ���ǻ���
	//session.removeAttribute("cnts2"); cnts2 �Ӽ��� ����
	%>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>���� ��ٱ��� ����</h2>
<hr>
<% if(cnt1 !=0)  {%> ���� : <%=cnt1 %> <% } %><br>
<% if(cnt2 !=0)  {%> ���� : <%=cnt2 %> <% } %><br>
<% if(cnt3 !=0)  {%> ��Ÿ�� :<%=cnt3 %> <% } %><br><br>

</body>
</html>