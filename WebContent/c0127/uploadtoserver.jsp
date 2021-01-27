<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
String bang = "d:/upbang";

MultipartRequest mr1 = new MultipartRequest(request, bang, 10*1024*1024, 
		"euc-kr", new DefaultFileRenamePolicy());

//request사용 못하므로 대신 멀티파티리퀘스트 객체 mr1 사용
String virum1 = mr1.getParameter("irum1");
String vfilename1 = mr1.getParameter("file1");

if(vfilename1 != null){
	out.println("사용자이름은" + virum1 + "이시구요" + "<br>");
	out.println("추카추카" + vfilename1+ "라는 파일 올리기 성공했네요");
}else{
	out.println("에러");
}
%>

</body>
</html>